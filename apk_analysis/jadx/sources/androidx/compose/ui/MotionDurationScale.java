package androidx.compose.ui;

import defpackage.bm3;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public interface MotionDurationScale extends o22.a {
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
        public static <R> R fold(MotionDurationScale motionDurationScale, R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
            return (R) o22.a.C0306a.a(motionDurationScale, r, bm3Var);
        }

        public static <E extends o22.a> E get(MotionDurationScale motionDurationScale, o22.b<E> bVar) {
            return (E) o22.a.C0306a.b(motionDurationScale, bVar);
        }

        public static o22 minusKey(MotionDurationScale motionDurationScale, o22.b<?> bVar) {
            return o22.a.C0306a.c(motionDurationScale, bVar);
        }

        public static o22 plus(MotionDurationScale motionDurationScale, o22 o22Var) {
            return o22.a.C0306a.d(motionDurationScale, o22Var);
        }
    }

    public static final class Key implements o22.b<MotionDurationScale> {
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

    float getScaleFactor();

    @Override // defpackage.o22
    /* synthetic */ o22 minusKey(o22.b bVar);

    @Override // defpackage.o22
    /* synthetic */ o22 plus(o22 o22Var);
}
