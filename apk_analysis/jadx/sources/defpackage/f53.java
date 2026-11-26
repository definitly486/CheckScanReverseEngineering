package defpackage;

import android.util.Log;
import androidx.core.util.Pools;

/* JADX INFO: loaded from: classes3.dex */
public final class f53 {
    public static final a a = new a();

    public class a implements e<Object> {
        @Override // f53.e
        public final void a(Object obj) {
        }
    }

    public interface b<T> {
        T create();
    }

    public static final class c<T> implements Pools.Pool<T> {
        public final b<T> a;
        public final e<T> b;
        public final Pools.SynchronizedPool c;

        public c(Pools.SynchronizedPool synchronizedPool, b bVar, e eVar) {
            this.c = synchronizedPool;
            this.a = bVar;
            this.b = eVar;
        }

        @Override // androidx.core.util.Pools.Pool
        public final T acquire() {
            T tAcquire = this.c.acquire();
            if (tAcquire == null) {
                tAcquire = this.a.create();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + tAcquire.getClass());
                }
            }
            if (tAcquire instanceof d) {
                ((d) tAcquire).d().a = false;
            }
            return tAcquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public final boolean release(T t) {
            if (t instanceof d) {
                ((d) t).d().a = true;
            }
            this.b.a(t);
            return this.c.release(t);
        }
    }

    public interface d {
        c78.a d();
    }

    public interface e<T> {
        void a(T t);
    }

    public static c a(int i, b bVar) {
        return new c(new Pools.SynchronizedPool(i), bVar, a);
    }
}
