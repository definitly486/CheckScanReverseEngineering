package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;

/* JADX INFO: loaded from: classes2.dex */
final class DraggableAnchorsElementV2<T> extends ModifierNodeElement<DraggableAnchorsNodeV2<T>> {
    private final bm3<IntSize, Constraints, b36<androidx.compose.foundation.gestures.DraggableAnchors<T>, T>> anchors;
    private final Orientation orientation;
    private final androidx.compose.foundation.gestures.AnchoredDraggableState<T> state;

    /* JADX WARN: Multi-variable type inference failed */
    public DraggableAnchorsElementV2(androidx.compose.foundation.gestures.AnchoredDraggableState<T> anchoredDraggableState, bm3<? super IntSize, ? super Constraints, ? extends b36<? extends androidx.compose.foundation.gestures.DraggableAnchors<T>, ? extends T>> bm3Var, Orientation orientation) {
        this.state = anchoredDraggableState;
        this.anchors = bm3Var;
        this.orientation = orientation;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public DraggableAnchorsNodeV2<T> create() {
        return new DraggableAnchorsNodeV2<>(this.state, this.anchors, this.orientation);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DraggableAnchorsElementV2)) {
            return false;
        }
        DraggableAnchorsElementV2 draggableAnchorsElementV2 = (DraggableAnchorsElementV2) obj;
        return aa4.e(this.state, draggableAnchorsElementV2.state) && this.anchors == draggableAnchorsElementV2.anchors && this.orientation == draggableAnchorsElementV2.orientation;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.orientation.hashCode() + ((this.anchors.hashCode() + (this.state.hashCode() * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            new DraggableAnchorsElementV2$inspectableProperties$$inlined$debugInspectorInfo$1(this);
        } else {
            InspectableValueKt.getNoInspectorInfo();
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(DraggableAnchorsNodeV2<T> draggableAnchorsNodeV2) {
        draggableAnchorsNodeV2.setState(this.state);
        draggableAnchorsNodeV2.setAnchors(this.anchors);
        draggableAnchorsNodeV2.setOrientation(this.orientation);
    }
}
