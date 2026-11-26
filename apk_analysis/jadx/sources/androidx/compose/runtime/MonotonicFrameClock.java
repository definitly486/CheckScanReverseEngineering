package androidx.compose.runtime;

import defpackage.bm3;
import defpackage.e02;
import defpackage.nl3;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public interface MonotonicFrameClock extends o22.a {
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
        public static <R> R fold(MonotonicFrameClock monotonicFrameClock, R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
            return (R) o22.a.C0306a.a(monotonicFrameClock, r, bm3Var);
        }

        public static <E extends o22.a> E get(MonotonicFrameClock monotonicFrameClock, o22.b<E> bVar) {
            return (E) o22.a.C0306a.b(monotonicFrameClock, bVar);
        }

        @Deprecated
        public static o22.b<?> getKey(MonotonicFrameClock monotonicFrameClock) {
            return MonotonicFrameClock.super.getKey();
        }

        public static o22 minusKey(MonotonicFrameClock monotonicFrameClock, o22.b<?> bVar) {
            return o22.a.C0306a.c(monotonicFrameClock, bVar);
        }

        public static o22 plus(MonotonicFrameClock monotonicFrameClock, o22 o22Var) {
            return o22.a.C0306a.d(monotonicFrameClock, o22Var);
        }
    }

    public static final class Key implements o22.b<MonotonicFrameClock> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    @Override // defpackage.o22
    /* synthetic */ Object fold(Object obj, bm3 bm3Var);

    @Override // defpackage.o22
    /* synthetic */ o22.a get(o22.b bVar);

    @Override // o22.a
    default o22.b<?> getKey() {
        return Key;
    }

    @Override // defpackage.o22
    /* synthetic */ o22 minusKey(o22.b bVar);

    @Override // defpackage.o22
    /* synthetic */ o22 plus(o22 o22Var);

    <R> Object withFrameNanos(nl3<? super Long, ? extends R> nl3Var, e02<? super R> e02Var);
}
