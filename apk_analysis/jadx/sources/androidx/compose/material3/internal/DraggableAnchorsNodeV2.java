package androidx.compose.material3.internal;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
final class DraggableAnchorsNodeV2<T> extends Modifier.Node implements LayoutModifierNode {
    private bm3<? super IntSize, ? super Constraints, ? extends b36<? extends androidx.compose.foundation.gestures.DraggableAnchors<T>, ? extends T>> anchors;
    private boolean didLookahead;
    private Orientation orientation;
    private androidx.compose.foundation.gestures.AnchoredDraggableState<T> state;

    public DraggableAnchorsNodeV2(androidx.compose.foundation.gestures.AnchoredDraggableState<T> anchoredDraggableState, bm3<? super IntSize, ? super Constraints, ? extends b36<? extends androidx.compose.foundation.gestures.DraggableAnchors<T>, ? extends T>> bm3Var, Orientation orientation) {
        this.state = anchoredDraggableState;
        this.anchors = bm3Var;
        this.orientation = orientation;
    }

    private final boolean isReverseDirection() {
        return DelegatableNodeKt.requireLayoutDirection(this) == LayoutDirection.Rtl && this.orientation == Orientation.Horizontal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(MeasureScope measureScope, DraggableAnchorsNodeV2 draggableAnchorsNodeV2, final Placeable placeable, Placeable.PlacementScope placementScope) {
        final float fPositionOf = measureScope.isLookingAhead() ? draggableAnchorsNodeV2.state.getAnchors().positionOf(draggableAnchorsNodeV2.state.getTargetValue()) : draggableAnchorsNodeV2.state.requireOffset();
        float f = draggableAnchorsNodeV2.isReverseDirection() ? -1.0f : 1.0f;
        Orientation orientation = draggableAnchorsNodeV2.orientation;
        final float f2 = orientation == Orientation.Horizontal ? f * fPositionOf : 0.0f;
        if (orientation != Orientation.Vertical) {
            fPositionOf = 0.0f;
        }
        placementScope.withMotionFrameOfReferencePlacement(new nl3() { // from class: androidx.compose.material3.internal.n
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return DraggableAnchorsNodeV2.measure_3p2s80s$lambda$1$lambda$0(placeable, f2, fPositionOf, (Placeable.PlacementScope) obj);
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1$lambda$0(Placeable placeable, float f, float f2, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, w65.b(f), w65.b(f2), 0.0f, 4, null);
        return j59.a;
    }

    public final bm3<IntSize, Constraints, b36<androidx.compose.foundation.gestures.DraggableAnchors<T>, T>> getAnchors() {
        return this.anchors;
    }

    public final Orientation getOrientation() {
        return this.orientation;
    }

    public final androidx.compose.foundation.gestures.AnchoredDraggableState<T> getState() {
        return this.state;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        if (!measureScope.isLookingAhead() || !this.didLookahead) {
            b36<? extends androidx.compose.foundation.gestures.DraggableAnchors<T>, ? extends T> b36VarInvoke = this.anchors.invoke(IntSize.m9205boximpl(IntSize.m9208constructorimpl((((long) placeableMo7702measureBRTryo0.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) placeableMo7702measureBRTryo0.getWidth()) << 32))), Constraints.m8982boximpl(j));
            ((androidx.compose.foundation.gestures.AnchoredDraggableState<T>) this.state).updateAnchors((androidx.compose.foundation.gestures.DraggableAnchors) b36VarInvoke.b, b36VarInvoke.c);
        }
        this.didLookahead = measureScope.isLookingAhead() || this.didLookahead;
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.material3.internal.m
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return DraggableAnchorsNodeV2.measure_3p2s80s$lambda$1(measureScope, this, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.didLookahead = false;
    }

    public final void setAnchors(bm3<? super IntSize, ? super Constraints, ? extends b36<? extends androidx.compose.foundation.gestures.DraggableAnchors<T>, ? extends T>> bm3Var) {
        this.anchors = bm3Var;
    }

    public final void setOrientation(Orientation orientation) {
        this.orientation = orientation;
    }

    public final void setState(androidx.compose.foundation.gestures.AnchoredDraggableState<T> anchoredDraggableState) {
        this.state = anchoredDraggableState;
    }
}
