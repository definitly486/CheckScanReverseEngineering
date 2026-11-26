package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class OffsetNode extends Modifier.Node implements LayoutModifierNode {
    private boolean rtlAware;
    private final boolean shouldAutoInvalidate;
    private float x;
    private float y;

    private OffsetNode(float f, float f2, boolean z) {
        this.x = f;
        this.y = f2;
        this.rtlAware = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(OffsetNode offsetNode, Placeable placeable, Placeable.PlacementScope placementScope) {
        boolean z = offsetNode.rtlAware;
        float f = offsetNode.x;
        if (z) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, placementScope.mo1428roundToPx0680j_4(f), placementScope.mo1428roundToPx0680j_4(offsetNode.y), 0.0f, 4, null);
        } else {
            Placeable.PlacementScope.place$default(placementScope, placeable, placementScope.mo1428roundToPx0680j_4(f), placementScope.mo1428roundToPx0680j_4(offsetNode.y), 0.0f, 4, null);
        }
        return j59.a;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    /* JADX INFO: renamed from: getX-D9Ej5fM, reason: not valid java name */
    public final float m1994getXD9Ej5fM() {
        return this.x;
    }

    /* JADX INFO: renamed from: getY-D9Ej5fM, reason: not valid java name */
    public final float m1995getYD9Ej5fM() {
        return this.y;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.x
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return OffsetNode.measure_3p2s80s$lambda$0(this.b, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void setRtlAware(boolean z) {
        this.rtlAware = z;
    }

    /* JADX INFO: renamed from: setX-0680j_4, reason: not valid java name */
    public final void m1996setX0680j_4(float f) {
        this.x = f;
    }

    /* JADX INFO: renamed from: setY-0680j_4, reason: not valid java name */
    public final void m1997setY0680j_4(float f) {
        this.y = f;
    }

    /* JADX INFO: renamed from: update-Md-fbLM, reason: not valid java name */
    public final void m1998updateMdfbLM(float f, float f2, boolean z) {
        if (!Dp.m9047equalsimpl0(this.x, f) || !Dp.m9047equalsimpl0(this.y, f2) || this.rtlAware != z) {
            LayoutModifierNodeKt.invalidatePlacement(this);
        }
        this.x = f;
        this.y = f2;
        this.rtlAware = z;
    }

    public /* synthetic */ OffsetNode(float f, float f2, boolean z, jh2 jh2Var) {
        this(f, f2, z);
    }
}
