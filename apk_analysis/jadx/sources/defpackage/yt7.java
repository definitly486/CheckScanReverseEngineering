package defpackage;

import java.util.IdentityHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes5.dex */
public final class yt7 {
    public static final yt7 c = new yt7(new a());
    public final IdentityHashMap<c<?>, b> a = new IdentityHashMap<>();
    public ScheduledExecutorService b;

    public class a {
    }

    public static class b {
        public final Object a;
        public int b;
        public ScheduledFuture<?> c;

        public b(Object obj) {
            this.a = obj;
        }
    }

    public interface c<T> {
        void b(T t);

        T create();
    }

    public yt7(a aVar) {
    }
}
