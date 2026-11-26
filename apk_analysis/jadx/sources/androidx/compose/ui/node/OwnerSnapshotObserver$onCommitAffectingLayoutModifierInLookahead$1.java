package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1 extends gh4 implements nl3<LayoutNode, j59> {
    public static final OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1 INSTANCE = new OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1();

    public OwnerSnapshotObserver$onCommitAffectingLayoutModifierInLookahead$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode) {
        if (layoutNode.isValidOwnerScope()) {
            LayoutNode.requestLookaheadRelayout$ui$default(layoutNode, false, 1, null);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode) {
        invoke2(layoutNode);
        return j59.a;
    }
}
