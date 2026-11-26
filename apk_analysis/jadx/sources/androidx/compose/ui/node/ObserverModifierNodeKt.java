package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class ObserverModifierNodeKt {
    public static final <T extends Modifier.Node & ObserverModifierNode> void observeReads(T t, ll3<j59> ll3Var) {
        ObserverNodeOwnerScope ownerScope$ui = t.getOwnerScope$ui();
        if (ownerScope$ui == null) {
            ownerScope$ui = new ObserverNodeOwnerScope(t);
            t.setOwnerScope$ui(ownerScope$ui);
        }
        OwnerSnapshotObserver snapshotObserver = DelegatableNodeKt.requireOwner(t).getSnapshotObserver();
        snapshotObserver.observer.observeReads(ownerScope$ui, ObserverNodeOwnerScope.Companion.getOnObserveReadsChanged$ui(), ll3Var);
    }
}
