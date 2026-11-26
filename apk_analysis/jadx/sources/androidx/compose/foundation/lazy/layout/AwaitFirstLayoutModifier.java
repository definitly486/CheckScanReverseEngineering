package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.OnLayoutRectChangedModifierKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.spatial.RelativeLayoutBounds;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.nz;
import defpackage.xp1;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
public final class AwaitFirstLayoutModifier extends ModifierNodeElement<Node> {
    public static final int $stable = 0;
    private Node attachedNode;
    private xp1<j59> lock;

    public final class Node extends Modifier.Node {
        private DelegatableNode.RegistrationHandle handle;

        public Node() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 requestOnAfterLayoutCallback$lambda$0(Node node, AwaitFirstLayoutModifier awaitFirstLayoutModifier, RelativeLayoutBounds relativeLayoutBounds) {
            DelegatableNode.RegistrationHandle registrationHandle = node.handle;
            if (registrationHandle != null) {
                registrationHandle.unregister();
            }
            node.handle = null;
            xp1 xp1Var = awaitFirstLayoutModifier.lock;
            if (xp1Var != null) {
                xp1Var.f(j59.a);
            }
            awaitFirstLayoutModifier.lock = null;
            return j59.a;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public void onAttach() {
            AwaitFirstLayoutModifier.this.attachedNode = this;
            if (AwaitFirstLayoutModifier.this.lock != null) {
                requestOnAfterLayoutCallback();
            }
        }

        @Override // androidx.compose.ui.Modifier.Node
        public void onDetach() {
            if (AwaitFirstLayoutModifier.this.attachedNode == this) {
                AwaitFirstLayoutModifier.this.attachedNode = null;
            }
            DelegatableNode.RegistrationHandle registrationHandle = this.handle;
            if (registrationHandle != null) {
                registrationHandle.unregister();
            }
            this.handle = null;
        }

        public final void requestOnAfterLayoutCallback() {
            this.handle = OnLayoutRectChangedModifierKt.registerOnLayoutRectChanged(this, 0L, 0L, new nz(0, this, AwaitFirstLayoutModifier.this));
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public Node create() {
        return new Node();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        return obj == this;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return 234;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("AwaitFirstLayoutModifier");
    }

    public final Object waitForFirstLayout(e02<? super j59> e02Var) {
        xp1 yp1Var = this.lock;
        if (yp1Var == null) {
            yp1Var = new yp1();
            this.lock = yp1Var;
            Node node = this.attachedNode;
            if (node != null && node.isAttached()) {
                node.requestOnAfterLayoutCallback();
            }
        }
        Object objZ = yp1Var.Z(e02Var);
        return objZ == a32.COROUTINE_SUSPENDED ? objZ : j59.a;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(Node node) {
    }
}
