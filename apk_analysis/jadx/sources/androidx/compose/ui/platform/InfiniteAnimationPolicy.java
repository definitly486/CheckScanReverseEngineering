package androidx.compose.ui.platform;

import defpackage.bm3;
import defpackage.e02;
import defpackage.nl3;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public interface InfiniteAnimationPolicy extends o22.a {
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
        public static <R> R fold(InfiniteAnimationPolicy infiniteAnimationPolicy, R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
            return (R) o22.a.C0306a.a(infiniteAnimationPolicy, r, bm3Var);
        }

        public static <E extends o22.a> E get(InfiniteAnimationPolicy infiniteAnimationPolicy, o22.b<E> bVar) {
            return (E) o22.a.C0306a.b(infiniteAnimationPolicy, bVar);
        }

        @Deprecated
        public static o22.b<?> getKey(InfiniteAnimationPolicy infiniteAnimationPolicy) {
            return InfiniteAnimationPolicy.super.getKey();
        }

        public static o22 minusKey(InfiniteAnimationPolicy infiniteAnimationPolicy, o22.b<?> bVar) {
            return o22.a.C0306a.c(infiniteAnimationPolicy, bVar);
        }

        public static o22 plus(InfiniteAnimationPolicy infiniteAnimationPolicy, o22 o22Var) {
            return o22.a.C0306a.d(infiniteAnimationPolicy, o22Var);
        }
    }

    public static final class Key implements o22.b<InfiniteAnimationPolicy> {
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

    <R> Object onInfiniteOperation(nl3<? super e02<? super R>, ? extends Object> nl3Var, e02<? super R> e02Var);

    @Override // defpackage.o22
    /* synthetic */ o22 plus(o22 o22Var);
}
