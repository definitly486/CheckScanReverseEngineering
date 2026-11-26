package androidx.compose.ui.node;

import defpackage.gh4;
import defpackage.h8;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class NodeCoordinator$Companion$onCommitAffectingLayerParams$1 extends gh4 implements nl3<NodeCoordinator, j59> {
    public static final NodeCoordinator$Companion$onCommitAffectingLayerParams$1 INSTANCE = new NodeCoordinator$Companion$onCommitAffectingLayerParams$1();

    public NodeCoordinator$Companion$onCommitAffectingLayerParams$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(NodeCoordinator nodeCoordinator) throws Throwable {
        LayoutNode layoutNode = nodeCoordinator.getLayoutNode();
        try {
            if (nodeCoordinator.isValidOwnerScope()) {
                NodeCoordinator.updateLayerParameters$default(nodeCoordinator, false, 1, null);
            }
            j59 j59Var = j59.a;
        } catch (Throwable th) {
            layoutNode.rethrowWithComposeStackTrace(th);
            h8.d();
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(NodeCoordinator nodeCoordinator) throws Throwable {
        invoke2(nodeCoordinator);
        return j59.a;
    }
}
