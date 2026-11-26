package androidx.compose.runtime.snapshots;

import defpackage.bm3;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public interface SnapshotContextElement extends o22.a {
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
        public static <R> R fold(SnapshotContextElement snapshotContextElement, R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
            return (R) o22.a.C0306a.a(snapshotContextElement, r, bm3Var);
        }

        public static <E extends o22.a> E get(SnapshotContextElement snapshotContextElement, o22.b<E> bVar) {
            return (E) o22.a.C0306a.b(snapshotContextElement, bVar);
        }

        public static o22 minusKey(SnapshotContextElement snapshotContextElement, o22.b<?> bVar) {
            return o22.a.C0306a.c(snapshotContextElement, bVar);
        }

        public static o22 plus(SnapshotContextElement snapshotContextElement, o22 o22Var) {
            return o22.a.C0306a.d(snapshotContextElement, o22Var);
        }
    }

    public static final class Key implements o22.b<SnapshotContextElement> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }

    @Override // defpackage.o22
    /* synthetic */ Object fold(Object obj, bm3 bm3Var);

    @Override // defpackage.o22
    /* synthetic */ o22.a get(o22.b bVar);

    @Override // o22.a
    /* synthetic */ o22.b getKey();

    @Override // defpackage.o22
    /* synthetic */ o22 minusKey(o22.b bVar);

    @Override // defpackage.o22
    /* synthetic */ o22 plus(o22 o22Var);
}
