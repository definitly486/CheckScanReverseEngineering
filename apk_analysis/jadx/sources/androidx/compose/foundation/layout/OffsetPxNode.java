package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class OffsetPxNode extends Modifier.Node implements LayoutModifierNode {
    private nl3<? super Density, IntOffset> offset;
    private boolean rtlAware;
    private final boolean shouldAutoInvalidate;

    public OffsetPxNode(nl3<? super Density, IntOffset> nl3Var, boolean z) {
        this.offset = nl3Var;
        this.rtlAware = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(OffsetPxNode offsetPxNode, Placeable placeable, Placeable.PlacementScope placementScope) {
        long jM9179unboximpl = offsetPxNode.offset.invoke(placementScope).m9179unboximpl();
        if (offsetPxNode.rtlAware) {
            Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable, IntOffset.m9170getXimpl(jM9179unboximpl), IntOffset.m9171getYimpl(jM9179unboximpl), 0.0f, (nl3) null, 12, (Object) null);
        } else {
            Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, IntOffset.m9170getXimpl(jM9179unboximpl), IntOffset.m9171getYimpl(jM9179unboximpl), 0.0f, (nl3) null, 12, (Object) null);
        }
        return j59.a;
    }

    public final nl3<Density, IntOffset> getOffset() {
        return this.offset;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.y
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return OffsetPxNode.measure_3p2s80s$lambda$0(this.b, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void setOffset(nl3<? super Density, IntOffset> nl3Var) {
        this.offset = nl3Var;
    }

    public final void setRtlAware(boolean z) {
        this.rtlAware = z;
    }

    public final void update(nl3<? super Density, IntOffset> nl3Var, boolean z) {
        if (this.offset != nl3Var || this.rtlAware != z) {
            LayoutModifierNodeKt.invalidatePlacement(this);
        }
        this.offset = nl3Var;
        this.rtlAware = z;
    }
}
