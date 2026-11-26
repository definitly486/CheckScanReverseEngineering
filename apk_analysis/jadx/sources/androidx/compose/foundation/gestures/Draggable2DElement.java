package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Velocity;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.gg1;
import defpackage.il1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
public final class Draggable2DElement extends ModifierNodeElement<Draggable2DNode> {
    public static final int $stable = 0;
    private final boolean enabled;
    private final MutableInteractionSource interactionSource;
    private final nl3<Offset, j59> onDragStarted;
    private final nl3<Velocity, j59> onDragStopped;
    private final boolean reverseDirection;
    private final boolean startDragImmediately;
    private final Draggable2DState state;
    public static final Companion Companion = new Companion(null);
    private static final nl3<PointerType, Boolean> CanDrag = new gg1(1);

    /* JADX WARN: Multi-variable type inference failed */
    public Draggable2DElement(Draggable2DState draggable2DState, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, nl3<? super Offset, j59> nl3Var, nl3<? super Velocity, j59> nl3Var2, boolean z3) {
        this.state = draggable2DState;
        this.enabled = z;
        this.interactionSource = mutableInteractionSource;
        this.startDragImmediately = z2;
        this.onDragStarted = nl3Var;
        this.onDragStopped = nl3Var2;
        this.reverseDirection = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CanDrag$lambda$0(PointerType pointerType) {
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public Draggable2DNode create() {
        return new Draggable2DNode(this.state, CanDrag, this.enabled, this.interactionSource, this.startDragImmediately, this.reverseDirection, this.onDragStarted, this.onDragStopped);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Draggable2DElement.class != obj.getClass()) {
            return false;
        }
        Draggable2DElement draggable2DElement = (Draggable2DElement) obj;
        return aa4.e(this.state, draggable2DElement.state) && this.enabled == draggable2DElement.enabled && aa4.e(this.interactionSource, draggable2DElement.interactionSource) && this.startDragImmediately == draggable2DElement.startDragImmediately && this.onDragStarted == draggable2DElement.onDragStarted && this.onDragStopped == draggable2DElement.onDragStopped && this.reverseDirection == draggable2DElement.reverseDirection;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iC = tg.c(this.state.hashCode() * 31, 31, this.enabled);
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        return Boolean.hashCode(this.reverseDirection) + ((this.onDragStopped.hashCode() + ((this.onDragStarted.hashCode() + tg.c((iC + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31, 31, this.startDragImmediately)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("draggable2D");
        il1.c(this.enabled, inspectorInfo.getProperties(), TJAdUnitConstants.String.ENABLED, inspectorInfo).set("interactionSource", this.interactionSource);
        il1.c(this.startDragImmediately, inspectorInfo.getProperties(), "startDragImmediately", inspectorInfo).set("onDragStarted", this.onDragStarted);
        inspectorInfo.getProperties().set("onDragStopped", this.onDragStopped);
        il1.c(this.reverseDirection, inspectorInfo.getProperties(), "reverseDirection", inspectorInfo).set(RemoteConfigConstants.ResponseFieldKey.STATE, this.state);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(Draggable2DNode draggable2DNode) {
        draggable2DNode.update(this.state, CanDrag, this.enabled, this.interactionSource, this.startDragImmediately, this.reverseDirection, this.onDragStarted, this.onDragStopped);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final nl3<PointerType, Boolean> getCanDrag() {
            return Draggable2DElement.CanDrag;
        }

        private Companion() {
        }
    }
}
