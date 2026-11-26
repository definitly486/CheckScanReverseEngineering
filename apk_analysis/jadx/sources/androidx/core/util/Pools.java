package androidx.core.util;

import defpackage.ah;
import defpackage.fg;

/* JADX INFO: loaded from: classes2.dex */
public final class Pools {

    public interface Pool<T> {
        T acquire();

        boolean release(T t);
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] pool;
        private int poolSize;

        public SimplePool(int i) {
            if (i > 0) {
                this.pool = new Object[i];
            } else {
                fg.c("The max pool size must be > 0");
                throw null;
            }
        }

        private final boolean isInPool(T t) {
            int i = this.poolSize;
            for (int i2 = 0; i2 < i; i2++) {
                if (this.pool[i2] == t) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            int i = this.poolSize;
            if (i <= 0) {
                return null;
            }
            int i2 = i - 1;
            T t = (T) this.pool[i2];
            t.getClass();
            this.pool[i2] = null;
            this.poolSize--;
            return t;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(T t) {
            t.getClass();
            if (isInPool(t)) {
                ah.f("Already in the pool!");
                return false;
            }
            int i = this.poolSize;
            Object[] objArr = this.pool;
            if (i >= objArr.length) {
                return false;
            }
            objArr[i] = t;
            this.poolSize = i + 1;
            return true;
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object lock;

        public SynchronizedPool(int i) {
            super(i);
            this.lock = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t;
            synchronized (this.lock) {
                t = (T) super.acquire();
            }
            return t;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(T t) {
            boolean zRelease;
            t.getClass();
            synchronized (this.lock) {
                zRelease = super.release(t);
            }
            return zRelease;
        }
    }

    private Pools() {
    }
}
