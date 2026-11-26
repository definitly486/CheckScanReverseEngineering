package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.dm3;
import defpackage.e02;
import defpackage.il1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.tg;
import defpackage.y22;
import defpackage.yr2;

/* JADX INFO: loaded from: classes.dex */
public final class DraggableElement extends ModifierNodeElement<DraggableNode> {
    public static final int $stable = 0;
    private final boolean enabled;
    private final MutableInteractionSource interactionSource;
    private final dm3<y22, Offset, e02<? super j59>, Object> onDragStarted;
    private final dm3<y22, Float, e02<? super j59>, Object> onDragStopped;
    private final Orientation orientation;
    private final boolean reverseDirection;
    private final boolean startDragImmediately;
    private final DraggableState state;
    public static final Companion Companion = new Companion(null);
    private static final nl3<PointerType, Boolean> CanDrag = new yr2(0);

    /* JADX WARN: Multi-variable type inference failed */
    public DraggableElement(DraggableState draggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, dm3<? super y22, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, dm3<? super y22, ? super Float, ? super e02<? super j59>, ? extends Object> dm3Var2, boolean z3) {
        this.state = draggableState;
        this.orientation = orientation;
        this.enabled = z;
        this.interactionSource = mutableInteractionSource;
        this.startDragImmediately = z2;
        this.onDragStarted = dm3Var;
        this.onDragStopped = dm3Var2;
        this.reverseDirection = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CanDrag$lambda$0(PointerType pointerType) {
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public DraggableNode create() {
        return new DraggableNode(this.state, CanDrag, this.orientation, this.enabled, this.interactionSource, this.startDragImmediately, this.onDragStarted, this.onDragStopped, this.reverseDirection);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DraggableElement.class != obj.getClass()) {
            return false;
        }
        DraggableElement draggableElement = (DraggableElement) obj;
        return aa4.e(this.state, draggableElement.state) && this.orientation == draggableElement.orientation && this.enabled == draggableElement.enabled && aa4.e(this.interactionSource, draggableElement.interactionSource) && this.startDragImmediately == draggableElement.startDragImmediately && aa4.e(this.onDragStarted, draggableElement.onDragStarted) && aa4.e(this.onDragStopped, draggableElement.onDragStopped) && this.reverseDirection == draggableElement.reverseDirection;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iC = tg.c((this.orientation.hashCode() + (this.state.hashCode() * 31)) * 31, 31, this.enabled);
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        return Boolean.hashCode(this.reverseDirection) + ((this.onDragStopped.hashCode() + ((this.onDragStarted.hashCode() + tg.c((iC + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31, 31, this.startDragImmediately)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("draggable");
        inspectorInfo.getProperties().set(TJAdUnitConstants.String.ORIENTATION, this.orientation);
        il1.c(this.reverseDirection, il1.c(this.enabled, inspectorInfo.getProperties(), TJAdUnitConstants.String.ENABLED, inspectorInfo), "reverseDirection", inspectorInfo).set("interactionSource", this.interactionSource);
        il1.c(this.startDragImmediately, inspectorInfo.getProperties(), "startDragImmediately", inspectorInfo).set("onDragStarted", this.onDragStarted);
        inspectorInfo.getProperties().set("onDragStopped", this.onDragStopped);
        inspectorInfo.getProperties().set(RemoteConfigConstants.ResponseFieldKey.STATE, this.state);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(DraggableNode draggableNode) {
        draggableNode.update(this.state, CanDrag, this.orientation, this.enabled, this.interactionSource, this.startDragImmediately, this.onDragStarted, this.onDragStopped, this.reverseDirection);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final nl3<PointerType, Boolean> getCanDrag() {
            return DraggableElement.CanDrag;
        }

        private Companion() {
        }
    }
}
