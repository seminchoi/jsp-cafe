package codesqaud.app.dao;

import codesqaud.app.model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public class InMemoryUserDao implements UserDao {
    private static final AtomicLong ID_GENERATOR = new AtomicLong(0);

    private final Map<String, Long> userIdIndex = new ConcurrentHashMap<>();
    private final Map<Long, User> users = new ConcurrentHashMap<>();

    @Override
    public void save(User user) {
        userIdIndex.compute(user.getUserId(), (requestUserId, existingPk) -> {
            if (existingPk != null) {
                throw new IllegalStateException("이미 존재하는 사용자 입니다");
            }
            user.setId(ID_GENERATOR.incrementAndGet());
            users.put(user.getId(), user);
            return user.getId();
        });
    }

    @Override
    public Optional<User> findById(Long PK) {
        return Optional.ofNullable(users.get(PK));
    }

    @Override
    public List<User> findAll() {
        return new ArrayList<>(users.values());
    }

    @Override
    public void delete(User user) {
    }

    @Override
    public Optional<User> findByUserId(String userId) {
        if(!userIdIndex.containsKey(userId)) {
            return Optional.empty();
        }

        Long id = userIdIndex.get(userId);
        return Optional.of(users.get(id));
    }
}
