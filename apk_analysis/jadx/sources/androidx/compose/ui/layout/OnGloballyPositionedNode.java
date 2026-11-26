package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class OnGloballyPositionedNode extends Modifier.Node implements GlobalPositionAwareModifierNode {
    private nl3<? super LayoutCoordinates, j59> callback;

    public OnGloballyPositionedNode(nl3<? super LayoutCoordinates, j59> nl3Var) {
        this.callback = nl3Var;
    }

    public final nl3<LayoutCoordinates, j59> getCallback() {
        return this.callback;
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        this.callback.invoke(layoutCoordinates);
    }

    public final void setCallback(nl3<? super LayoutCoordinates, j59> nl3Var) {
        this.callback = nl3Var;
    }
}
