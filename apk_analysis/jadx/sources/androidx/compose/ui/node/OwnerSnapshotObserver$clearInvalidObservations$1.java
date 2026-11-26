package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OwnerSnapshotObserver$clearInvalidObservations$1 extends gh4 implements nl3<Object, Boolean> {
    public static final OwnerSnapshotObserver$clearInvalidObservations$1 INSTANCE = new OwnerSnapshotObserver$clearInvalidObservations$1();

    public OwnerSnapshotObserver$clearInvalidObservations$1() {
        super(1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.nl3
    public final Boolean invoke(Object obj) {
        obj.getClass();
        return Boolean.valueOf(!((OwnerScope) obj).isValidOwnerScope());
    }
}
