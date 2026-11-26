package androidx.compose.material3;

import androidx.compose.material3.tokens.TimePickerTokens;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import defpackage.im1;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ClockFaceSizeModifier implements LayoutModifier {
    public static final int $stable = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo2494measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        float clockDialMinContainerSize;
        float fMo1431toDpu2uoSUM = measureScope.mo1431toDpu2uoSUM(Constraints.m8994getMaxHeightimpl(j));
        if (Dp.m9041compareTo0680j_4(fMo1431toDpu2uoSUM, TimePickerKt.TimePickerMaxHeight) >= 0) {
            clockDialMinContainerSize = TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM();
        } else {
            clockDialMinContainerSize = Dp.m9041compareTo0680j_4(fMo1431toDpu2uoSUM, TimePickerKt.TimePickerMidHeight) >= 0 ? TimePickerKt.ClockDialMidContainerSize : TimePickerKt.getClockDialMinContainerSize();
        }
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(clockDialMinContainerSize);
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_4));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new im1(placeableMo7702measureBRTryo0, 0), 4, null);
    }
}
