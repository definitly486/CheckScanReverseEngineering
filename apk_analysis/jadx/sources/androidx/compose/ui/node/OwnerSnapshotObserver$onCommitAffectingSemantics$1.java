package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OwnerSnapshotObserver$onCommitAffectingSemantics$1 extends gh4 implements nl3<LayoutNode, j59> {
    public static final OwnerSnapshotObserver$onCommitAffectingSemantics$1 INSTANCE = new OwnerSnapshotObserver$onCommitAffectingSemantics$1();

    public OwnerSnapshotObserver$onCommitAffectingSemantics$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode) {
        if (layoutNode.isValidOwnerScope()) {
            layoutNode.invalidateSemantics$ui();
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode) {
        invoke2(layoutNode);
        return j59.a;
    }
}
