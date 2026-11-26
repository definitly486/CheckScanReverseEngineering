package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.spatial.RelativeLayoutBounds;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OnLayoutRectChangedModifierKt {
    public static final Modifier onLayoutRectChanged(Modifier modifier, long j, long j2, nl3<? super RelativeLayoutBounds, j59> nl3Var) {
        return modifier.then(new OnLayoutRectChangedElement(j, j2, nl3Var));
    }

    public static /* synthetic */ Modifier onLayoutRectChanged$default(Modifier modifier, long j, long j2, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = 64;
        }
        return onLayoutRectChanged(modifier, j3, j2, nl3Var);
    }

    public static final DelegatableNode.RegistrationHandle registerOnLayoutRectChanged(DelegatableNode delegatableNode, long j, long j2, nl3<? super RelativeLayoutBounds, j59> nl3Var) {
        LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(delegatableNode);
        return LayoutNodeKt.requireOwner(layoutNodeRequireLayoutNode).getRectManager().registerOnRectChangedCallback(layoutNodeRequireLayoutNode.getSemanticsId(), j, j2, delegatableNode, nl3Var);
    }
}
