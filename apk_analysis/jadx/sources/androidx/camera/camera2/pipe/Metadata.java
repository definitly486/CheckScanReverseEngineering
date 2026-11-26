package androidx.camera.camera2.pipe;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.ne4;
import defpackage.xp;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface Metadata {
    <T> T get(Key<T> key);

    <T> T getOrDefault(Key<T> key, T t);

    public static final class Key<T> {
        public static final Companion Companion = new Companion(null);
        private static final Map<String, Key<?>> keys = new HashMap();
        private final String name;
        private final ne4<?> type;

        private Key(String str, ne4<?> ne4Var) {
            this.name = str;
            this.type = ne4Var;
        }

        public String toString() {
            return xp.e(new StringBuilder("Metadata.Key("), this.name, ')');
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public static /* synthetic */ void getKeys$camera_camera2_pipe$annotations() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final <T> Key<T> create(String str, ne4<T> ne4Var) {
                Key<T> key;
                str.getClass();
                ne4Var.getClass();
                synchronized (getKeys$camera_camera2_pipe()) {
                    try {
                        Map<String, Key<?>> keys$camera_camera2_pipe = Key.Companion.getKeys$camera_camera2_pipe();
                        Object key2 = keys$camera_camera2_pipe.get(str);
                        if (key2 == null) {
                            key2 = new Key(str, ne4Var, null);
                            keys$camera_camera2_pipe.put(str, key2);
                        }
                        key = (Key) key2;
                        if (!aa4.e(((Key) key).type, ne4Var)) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return key;
            }

            public final Map<String, Key<?>> getKeys$camera_camera2_pipe() {
                return Key.keys;
            }

            private Companion() {
            }

            public final <T> Key<T> create(String str) {
                str.getClass();
                aa4.i();
                throw null;
            }
        }

        public /* synthetic */ Key(String str, ne4 ne4Var, jh2 jh2Var) {
            this(str, ne4Var);
        }
    }
}
