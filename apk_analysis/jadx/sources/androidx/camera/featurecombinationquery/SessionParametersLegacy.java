package androidx.camera.featurecombinationquery;

import android.hardware.camera2.CaptureRequest;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class SessionParametersLegacy {
    private final Map<CaptureRequest.Key<?>, Object> mKeyVal;

    public static final class Builder {
        private final HashMap<CaptureRequest.Key<?>, Object> mKeyVal = new HashMap<>();

        public SessionParametersLegacy build() {
            HashMap<CaptureRequest.Key<?>, Object> map = this.mKeyVal;
            HashMap map2 = new HashMap(map.size());
            for (Map.Entry<CaptureRequest.Key<?>, Object> entry : map.entrySet()) {
                CaptureRequest.Key<?> key = entry.getKey();
                Objects.requireNonNull(key);
                Object value = entry.getValue();
                Objects.requireNonNull(value);
                map2.put(key, value);
            }
            return new SessionParametersLegacy(Collections.unmodifiableMap(map2));
        }

        public <T> Builder set(CaptureRequest.Key<T> key, T t) {
            this.mKeyVal.put(key, t);
            return this;
        }
    }

    private SessionParametersLegacy(Map<CaptureRequest.Key<?>, Object> map) {
        this.mKeyVal = map;
    }

    public Map<CaptureRequest.Key<?>, Object> asMap() {
        return Collections.unmodifiableMap(this.mKeyVal);
    }

    public <T> T get(CaptureRequest.Key<T> key) {
        return (T) this.mKeyVal.get(key);
    }

    public Set<CaptureRequest.Key<?>> getKeys() {
        Set<CaptureRequest.Key<?>> setKeySet = this.mKeyVal.keySet();
        HashSet hashSet = new HashSet(setKeySet.size());
        for (CaptureRequest.Key<?> key : setKeySet) {
            Objects.requireNonNull(key);
            hashSet.add(key);
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
