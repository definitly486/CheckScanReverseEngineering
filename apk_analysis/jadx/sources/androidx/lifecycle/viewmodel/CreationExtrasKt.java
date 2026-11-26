package androidx.lifecycle.viewmodel;

import defpackage.j59;
import defpackage.n05;
import defpackage.n62;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class CreationExtrasKt {
    public static final CreationExtras CreationExtras(CreationExtras creationExtras, nl3<? super MutableCreationExtras, j59> nl3Var) {
        creationExtras.getClass();
        nl3Var.getClass();
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(creationExtras);
        nl3Var.invoke(mutableCreationExtras);
        return mutableCreationExtras;
    }

    public static /* synthetic */ CreationExtras CreationExtras$default(CreationExtras creationExtras, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            creationExtras = CreationExtras.Empty.INSTANCE;
        }
        if ((i & 2) != 0) {
            nl3Var = new n62(0);
        }
        return CreationExtras(creationExtras, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CreationExtras$lambda$0(MutableCreationExtras mutableCreationExtras) {
        mutableCreationExtras.getClass();
        return j59.a;
    }

    public static final boolean contains(CreationExtras creationExtras, CreationExtras.Key<?> key) {
        creationExtras.getClass();
        key.getClass();
        return creationExtras.getExtras$lifecycle_viewmodel().containsKey(key);
    }

    public static final MutableCreationExtras plus(CreationExtras creationExtras, CreationExtras creationExtras2) {
        creationExtras.getClass();
        creationExtras2.getClass();
        return new MutableCreationExtras(n05.g(creationExtras.getExtras$lifecycle_viewmodel(), creationExtras2.getExtras$lifecycle_viewmodel()));
    }

    public static final void plusAssign(MutableCreationExtras mutableCreationExtras, CreationExtras creationExtras) {
        mutableCreationExtras.getClass();
        creationExtras.getClass();
        mutableCreationExtras.getExtras$lifecycle_viewmodel().putAll(creationExtras.getExtras$lifecycle_viewmodel());
    }

    public static final CreationExtras CreationExtras(CreationExtras creationExtras) {
        creationExtras.getClass();
        return CreationExtras$default(creationExtras, null, 2, null);
    }

    public static final CreationExtras CreationExtras() {
        return CreationExtras$default(null, null, 3, null);
    }
}
