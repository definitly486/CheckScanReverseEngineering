package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.AlignmentLineKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class AlignmentLineKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: alignmentLineOffsetMeasure-tjqqzMA, reason: not valid java name */
    public static final MeasureResult m1709alignmentLineOffsetMeasuretjqqzMA(MeasureScope measureScope, final AlignmentLine alignmentLine, final float f, float f2, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(getHorizontal(alignmentLine) ? Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null) : Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 14, null));
        int i = placeableMo7702measureBRTryo0.get(alignmentLine);
        if (i == Integer.MIN_VALUE) {
            i = 0;
        }
        int height = getHorizontal(alignmentLine) ? placeableMo7702measureBRTryo0.getHeight() : placeableMo7702measureBRTryo0.getWidth();
        int iM8994getMaxHeightimpl = (getHorizontal(alignmentLine) ? Constraints.m8994getMaxHeightimpl(j) : Constraints.m8995getMaxWidthimpl(j)) - height;
        final int iF = kx6.f((!Float.isNaN(f) ? measureScope.mo1428roundToPx0680j_4(f) : 0) - i, 0, iM8994getMaxHeightimpl);
        final int iF2 = kx6.f(((!Float.isNaN(f2) ? measureScope.mo1428roundToPx0680j_4(f2) : 0) - height) + i, 0, iM8994getMaxHeightimpl - iF);
        final int width = getHorizontal(alignmentLine) ? placeableMo7702measureBRTryo0.getWidth() : Math.max(placeableMo7702measureBRTryo0.getWidth() + iF + iF2, Constraints.m8997getMinWidthimpl(j));
        final int iMax = getHorizontal(alignmentLine) ? Math.max(placeableMo7702measureBRTryo0.getHeight() + iF + iF2, Constraints.m8996getMinHeightimpl(j)) : placeableMo7702measureBRTryo0.getHeight();
        return MeasureScope.layout$default(measureScope, width, iMax, null, new nl3() { // from class: lc
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AlignmentLineKt.alignmentLineOffsetMeasure_tjqqzMA$lambda$1(alignmentLine, f, iF, width, iF2, placeableMo7702measureBRTryo0, iMax, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 alignmentLineOffsetMeasure_tjqqzMA$lambda$1(AlignmentLine alignmentLine, float f, int i, int i2, int i3, Placeable placeable, int i4, Placeable.PlacementScope placementScope) {
        int width;
        int i5;
        if (getHorizontal(alignmentLine)) {
            width = 0;
        } else {
            width = !Dp.m9047equalsimpl0(f, Dp.Companion.m9062getUnspecifiedD9Ej5fM()) ? i : (i2 - i3) - placeable.getWidth();
        }
        if (getHorizontal(alignmentLine)) {
            if (Dp.m9047equalsimpl0(f, Dp.Companion.m9062getUnspecifiedD9Ej5fM())) {
                i = (i4 - i3) - placeable.getHeight();
            }
            i5 = i;
        } else {
            i5 = 0;
        }
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, width, i5, 0.0f, 4, null);
        return j59.a;
    }

    private static final boolean getHorizontal(AlignmentLine alignmentLine) {
        return alignmentLine instanceof HorizontalAlignmentLine;
    }

    /* JADX INFO: renamed from: paddingFrom-4j6BHR0, reason: not valid java name */
    public static final Modifier m1710paddingFrom4j6BHR0(Modifier modifier, AlignmentLine alignmentLine, float f, float f2) {
        return modifier.then(new AlignmentLineOffsetDpElement(alignmentLine, f, f2, InspectableValueKt.isDebugInspectorInfoEnabled() ? new AlignmentLineKt$paddingFrom4j6BHR0$$inlined$debugInspectorInfo$1(alignmentLine, f, f2) : InspectableValueKt.getNoInspectorInfo(), null));
    }

    /* JADX INFO: renamed from: paddingFrom-4j6BHR0$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1711paddingFrom4j6BHR0$default(Modifier modifier, AlignmentLine alignmentLine, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        if ((i & 4) != 0) {
            f2 = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        return m1710paddingFrom4j6BHR0(modifier, alignmentLine, f, f2);
    }

    /* JADX INFO: renamed from: paddingFrom-Y_r0B1c, reason: not valid java name */
    public static final Modifier m1712paddingFromY_r0B1c(Modifier modifier, AlignmentLine alignmentLine, long j, long j2) {
        AlignmentLine alignmentLine2;
        long j3;
        long j4;
        nl3 noInspectorInfo;
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            j3 = j;
            j4 = j2;
            noInspectorInfo = new AlignmentLineKt$paddingFromY_r0B1c$$inlined$debugInspectorInfo$1(alignmentLine, j3, j4);
            alignmentLine2 = alignmentLine;
        } else {
            alignmentLine2 = alignmentLine;
            j3 = j;
            j4 = j2;
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new AlignmentLineOffsetTextUnitElement(alignmentLine2, j3, j4, noInspectorInfo, null));
    }

    /* JADX INFO: renamed from: paddingFrom-Y_r0B1c$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1713paddingFromY_r0B1c$default(Modifier modifier, AlignmentLine alignmentLine, long j, long j2, int i, Object obj) {
        if ((i & 2) != 0) {
            j = TextUnit.Companion.m9247getUnspecifiedXSAIIZE();
        }
        long j3 = j;
        if ((i & 4) != 0) {
            j2 = TextUnit.Companion.m9247getUnspecifiedXSAIIZE();
        }
        return m1712paddingFromY_r0B1c(modifier, alignmentLine, j3, j2);
    }

    /* JADX INFO: renamed from: paddingFromBaseline-VpY3zN4, reason: not valid java name */
    public static final Modifier m1714paddingFromBaselineVpY3zN4(Modifier modifier, float f, float f2) {
        Modifier modifierM1711paddingFrom4j6BHR0$default;
        Modifier modifierM1711paddingFrom4j6BHR0$default2;
        if (Float.isNaN(f)) {
            modifierM1711paddingFrom4j6BHR0$default = Modifier.Companion;
            modifierM1711paddingFrom4j6BHR0$default2 = modifierM1711paddingFrom4j6BHR0$default;
        } else {
            Modifier.Companion companion = Modifier.Companion;
            modifierM1711paddingFrom4j6BHR0$default = m1711paddingFrom4j6BHR0$default(companion, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), f, 0.0f, 4, null);
            modifierM1711paddingFrom4j6BHR0$default2 = companion;
        }
        Modifier modifierThen = modifier.then(modifierM1711paddingFrom4j6BHR0$default);
        if (!Float.isNaN(f2)) {
            modifierM1711paddingFrom4j6BHR0$default2 = m1711paddingFrom4j6BHR0$default(modifierM1711paddingFrom4j6BHR0$default2, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0.0f, f2, 2, null);
        }
        return modifierThen.then(modifierM1711paddingFrom4j6BHR0$default2);
    }

    /* JADX INFO: renamed from: paddingFromBaseline-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1715paddingFromBaselineVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        if ((i & 2) != 0) {
            f2 = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        return m1714paddingFromBaselineVpY3zN4(modifier, f, f2);
    }

    /* JADX INFO: renamed from: paddingFromBaseline-wCyjxdI, reason: not valid java name */
    public static final Modifier m1716paddingFromBaselinewCyjxdI(Modifier modifier, long j, long j2) {
        Modifier modifierM1713paddingFromY_r0B1c$default;
        Modifier modifierM1713paddingFromY_r0B1c$default2;
        if (TextUnit.m9234getRawTypeimpl(j) == 0) {
            modifierM1713paddingFromY_r0B1c$default2 = Modifier.Companion;
            modifierM1713paddingFromY_r0B1c$default = modifierM1713paddingFromY_r0B1c$default2;
        } else {
            modifierM1713paddingFromY_r0B1c$default = Modifier.Companion;
            modifierM1713paddingFromY_r0B1c$default2 = m1713paddingFromY_r0B1c$default(modifierM1713paddingFromY_r0B1c$default, androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline(), j, 0L, 4, null);
        }
        Modifier modifierThen = modifier.then(modifierM1713paddingFromY_r0B1c$default2);
        if (TextUnit.m9234getRawTypeimpl(j2) != 0) {
            modifierM1713paddingFromY_r0B1c$default = m1713paddingFromY_r0B1c$default(modifierM1713paddingFromY_r0B1c$default, androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline(), 0L, j2, 2, null);
        }
        return modifierThen.then(modifierM1713paddingFromY_r0B1c$default);
    }

    /* JADX INFO: renamed from: paddingFromBaseline-wCyjxdI$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1717paddingFromBaselinewCyjxdI$default(Modifier modifier, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = TextUnit.Companion.m9247getUnspecifiedXSAIIZE();
        }
        if ((i & 2) != 0) {
            j2 = TextUnit.Companion.m9247getUnspecifiedXSAIIZE();
        }
        return m1716paddingFromBaselinewCyjxdI(modifier, j, j2);
    }
}
