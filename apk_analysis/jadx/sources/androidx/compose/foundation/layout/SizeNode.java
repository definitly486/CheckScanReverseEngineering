package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class SizeNode extends Modifier.Node implements LayoutModifierNode {
    private boolean enforceIncoming;
    private float maxHeight;
    private float maxWidth;
    private float minHeight;
    private float minWidth;

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f2, (i & 4) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f3, (i & 8) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f4, z, null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    /* JADX INFO: renamed from: getTargetConstraints-OenEA2s, reason: not valid java name */
    private final long m2107getTargetConstraintsOenEA2s(Density density) {
        int iMo1428roundToPx0680j_4;
        int iMo1428roundToPx0680j_5;
        int iMo1428roundToPx0680j_6;
        int i = 0;
        if (Float.isNaN(this.maxWidth)) {
            iMo1428roundToPx0680j_4 = Integer.MAX_VALUE;
        } else {
            iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(this.maxWidth);
            if (iMo1428roundToPx0680j_4 < 0) {
                iMo1428roundToPx0680j_4 = 0;
            }
        }
        if (Float.isNaN(this.maxHeight)) {
            iMo1428roundToPx0680j_5 = Integer.MAX_VALUE;
        } else {
            iMo1428roundToPx0680j_5 = density.mo1428roundToPx0680j_4(this.maxHeight);
            if (iMo1428roundToPx0680j_5 < 0) {
                iMo1428roundToPx0680j_5 = 0;
            }
        }
        if (Float.isNaN(this.minWidth)) {
            iMo1428roundToPx0680j_6 = 0;
        } else {
            iMo1428roundToPx0680j_6 = density.mo1428roundToPx0680j_4(this.minWidth);
            if (iMo1428roundToPx0680j_6 < 0) {
                iMo1428roundToPx0680j_6 = 0;
            }
            if (iMo1428roundToPx0680j_6 > iMo1428roundToPx0680j_4) {
                iMo1428roundToPx0680j_6 = iMo1428roundToPx0680j_4;
            }
            if (iMo1428roundToPx0680j_6 == Integer.MAX_VALUE) {
                iMo1428roundToPx0680j_6 = 0;
            }
        }
        if (!Float.isNaN(this.minHeight)) {
            int iMo1428roundToPx0680j_7 = density.mo1428roundToPx0680j_4(this.minHeight);
            if (iMo1428roundToPx0680j_7 < 0) {
                iMo1428roundToPx0680j_7 = 0;
            }
            if (iMo1428roundToPx0680j_7 > iMo1428roundToPx0680j_5) {
                iMo1428roundToPx0680j_7 = iMo1428roundToPx0680j_5;
            }
            if (iMo1428roundToPx0680j_7 != Integer.MAX_VALUE) {
                i = iMo1428roundToPx0680j_7;
            }
        }
        return ConstraintsKt.Constraints(iMo1428roundToPx0680j_6, iMo1428roundToPx0680j_4, i, iMo1428roundToPx0680j_5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    public final boolean getEnforceIncoming() {
        return this.enforceIncoming;
    }

    /* JADX INFO: renamed from: getMaxHeight-D9Ej5fM, reason: not valid java name */
    public final float m2108getMaxHeightD9Ej5fM() {
        return this.maxHeight;
    }

    /* JADX INFO: renamed from: getMaxWidth-D9Ej5fM, reason: not valid java name */
    public final float m2109getMaxWidthD9Ej5fM() {
        return this.maxWidth;
    }

    /* JADX INFO: renamed from: getMinHeight-D9Ej5fM, reason: not valid java name */
    public final float m2110getMinHeightD9Ej5fM() {
        return this.minHeight;
    }

    /* JADX INFO: renamed from: getMinWidth-D9Ej5fM, reason: not valid java name */
    public final float m2111getMinWidthD9Ej5fM() {
        return this.minWidth;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM2107getTargetConstraintsOenEA2s = m2107getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8992getHasFixedHeightimpl(jM2107getTargetConstraintsOenEA2s)) {
            return Constraints.m8994getMaxHeightimpl(jM2107getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m9012constrainWidthK40F9xA(jM2107getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m9011constrainHeightK40F9xA(jM2107getTargetConstraintsOenEA2s, intrinsicMeasurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM2107getTargetConstraintsOenEA2s = m2107getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8993getHasFixedWidthimpl(jM2107getTargetConstraintsOenEA2s)) {
            return Constraints.m8995getMaxWidthimpl(jM2107getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m9011constrainHeightK40F9xA(jM2107getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m9012constrainWidthK40F9xA(jM2107getTargetConstraintsOenEA2s, intrinsicMeasurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iM8997getMinWidthimpl;
        int iM8995getMaxWidthimpl;
        int iM8996getMinHeightimpl;
        int iM8994getMaxHeightimpl;
        long jConstraints;
        long jM2107getTargetConstraintsOenEA2s = m2107getTargetConstraintsOenEA2s(measureScope);
        if (this.enforceIncoming) {
            jConstraints = ConstraintsKt.m9010constrainN9IONVI(j, jM2107getTargetConstraintsOenEA2s);
        } else {
            if (Float.isNaN(this.minWidth)) {
                iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
                int iM8995getMaxWidthimpl2 = Constraints.m8995getMaxWidthimpl(jM2107getTargetConstraintsOenEA2s);
                if (iM8997getMinWidthimpl > iM8995getMaxWidthimpl2) {
                    iM8997getMinWidthimpl = iM8995getMaxWidthimpl2;
                }
            } else {
                iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(jM2107getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxWidth)) {
                iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
                int iM8997getMinWidthimpl2 = Constraints.m8997getMinWidthimpl(jM2107getTargetConstraintsOenEA2s);
                if (iM8995getMaxWidthimpl < iM8997getMinWidthimpl2) {
                    iM8995getMaxWidthimpl = iM8997getMinWidthimpl2;
                }
            } else {
                iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(jM2107getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.minHeight)) {
                iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
                int iM8994getMaxHeightimpl2 = Constraints.m8994getMaxHeightimpl(jM2107getTargetConstraintsOenEA2s);
                if (iM8996getMinHeightimpl > iM8994getMaxHeightimpl2) {
                    iM8996getMinHeightimpl = iM8994getMaxHeightimpl2;
                }
            } else {
                iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(jM2107getTargetConstraintsOenEA2s);
            }
            if (Float.isNaN(this.maxHeight)) {
                iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
                int iM8996getMinHeightimpl2 = Constraints.m8996getMinHeightimpl(jM2107getTargetConstraintsOenEA2s);
                if (iM8994getMaxHeightimpl < iM8996getMinHeightimpl2) {
                    iM8994getMaxHeightimpl = iM8996getMinHeightimpl2;
                }
            } else {
                iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(jM2107getTargetConstraintsOenEA2s);
            }
            jConstraints = ConstraintsKt.Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, iM8994getMaxHeightimpl);
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(jConstraints);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.d0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SizeNode.measure_3p2s80s$lambda$1(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM2107getTargetConstraintsOenEA2s = m2107getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8992getHasFixedHeightimpl(jM2107getTargetConstraintsOenEA2s)) {
            return Constraints.m8994getMaxHeightimpl(jM2107getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m9012constrainWidthK40F9xA(jM2107getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m9011constrainHeightK40F9xA(jM2107getTargetConstraintsOenEA2s, intrinsicMeasurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jM2107getTargetConstraintsOenEA2s = m2107getTargetConstraintsOenEA2s(intrinsicMeasureScope);
        if (Constraints.m8993getHasFixedWidthimpl(jM2107getTargetConstraintsOenEA2s)) {
            return Constraints.m8995getMaxWidthimpl(jM2107getTargetConstraintsOenEA2s);
        }
        if (!this.enforceIncoming) {
            i = ConstraintsKt.m9011constrainHeightK40F9xA(jM2107getTargetConstraintsOenEA2s, i);
        }
        return ConstraintsKt.m9012constrainWidthK40F9xA(jM2107getTargetConstraintsOenEA2s, intrinsicMeasurable.minIntrinsicWidth(i));
    }

    public final void setEnforceIncoming(boolean z) {
        this.enforceIncoming = z;
    }

    /* JADX INFO: renamed from: setMaxHeight-0680j_4, reason: not valid java name */
    public final void m2112setMaxHeight0680j_4(float f) {
        this.maxHeight = f;
    }

    /* JADX INFO: renamed from: setMaxWidth-0680j_4, reason: not valid java name */
    public final void m2113setMaxWidth0680j_4(float f) {
        this.maxWidth = f;
    }

    /* JADX INFO: renamed from: setMinHeight-0680j_4, reason: not valid java name */
    public final void m2114setMinHeight0680j_4(float f) {
        this.minHeight = f;
    }

    /* JADX INFO: renamed from: setMinWidth-0680j_4, reason: not valid java name */
    public final void m2115setMinWidth0680j_4(float f) {
        this.minWidth = f;
    }

    private SizeNode(float f, float f2, float f3, float f4, boolean z) {
        this.minWidth = f;
        this.minHeight = f2;
        this.maxWidth = f3;
        this.maxHeight = f4;
        this.enforceIncoming = z;
    }

    public /* synthetic */ SizeNode(float f, float f2, float f3, float f4, boolean z, jh2 jh2Var) {
        this(f, f2, f3, f4, z);
    }
}
