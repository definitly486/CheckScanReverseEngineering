package androidx.compose.material3;

import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.hm;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ug;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1 implements MeasurePolicy {
    public static final TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1 INSTANCE = new TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1();

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$3(boolean z, int i, Placeable placeable, int i2, Placeable placeable2, int i3, int i4, int i5, MeasureScope measureScope, Placeable placeable3, int i6, int i7, int i8, int i9, Placeable.PlacementScope placementScope) {
        if (z) {
            int height = i4 - ((placeable2.getHeight() + ((placeable.getHeight() + i) + i2)) + i3);
            int iMo1428roundToPx0680j_4 = i4 >= i5 ? measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(16.0f)) : 0;
            Placeable.PlacementScope.place$default(placementScope, placeable3, i6, i6, 0.0f, 4, null);
            int i10 = height / 2;
            int i11 = i + i10;
            Placeable.PlacementScope.place$default(placementScope, placeable, i7, i11, 0.0f, 4, null);
            Placeable.PlacementScope.place$default(placementScope, placeable2, i7, (((placeable.getHeight() + i11) + i2) - iMo1428roundToPx0680j_4) + i10, 0.0f, 4, null);
        } else {
            Placeable.PlacementScope.place$default(placementScope, placeable3, i6, i8, 0.0f, 4, null);
            int iB = ug.b(i9, 2, placeable);
            int height2 = placeable3.getHeight() + i8;
            Placeable.PlacementScope.place$default(placementScope, placeable, iB, height2, 0.0f, 4, null);
            Placeable.PlacementScope.place$default(placementScope, placeable2, ug.b(i9, 2, placeable2), placeable.getHeight() + height2, 0.0f, 4, null);
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00fa  */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, long j) {
        boolean z;
        int height;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), TJAdUnitConstants.String.TITLE)) {
                List<? extends Measurable> list2 = list;
                int size2 = list2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Measurable measurable2 = list.get(i2);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "timePickerContent")) {
                        int size3 = list2.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            Measurable measurable3 = list.get(i3);
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), "actions")) {
                                final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(24.0f));
                                final int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(384.0f));
                                final int iMo1428roundToPx0680j_6 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(24.0f));
                                final int iMo1428roundToPx0680j_7 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(16.0f));
                                final int iMo1428roundToPx0680j_8 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(4.0f));
                                final int iMo1428roundToPx0680j_9 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(8.0f));
                                final int iMo1428roundToPx0680j_10 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(24.0f));
                                int iMo1428roundToPx0680j_11 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(24.0f));
                                final Placeable placeableMo7702measureBRTryo0 = measurable2.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null));
                                if (placeableMo7702measureBRTryo0.getWidth() > placeableMo7702measureBRTryo0.getHeight()) {
                                    float height2 = placeableMo7702measureBRTryo0.getHeight();
                                    float fMo1434toPx0680j_4 = measureScope.mo1434toPx0680j_4(TimePickerKt.getClockDialMinContainerSize());
                                    if (!Float.isNaN(fMo1434toPx0680j_4) && !Float.isInfinite(fMo1434toPx0680j_4)) {
                                        fMo1434toPx0680j_4 = (float) (fMo1434toPx0680j_4 > 0.0f ? Math.floor(fMo1434toPx0680j_4) : Math.ceil(fMo1434toPx0680j_4));
                                    }
                                    if (height2 >= fMo1434toPx0680j_4) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                } else {
                                    z = false;
                                }
                                final int width = (iMo1428roundToPx0680j_4 * 2) + (z ? placeableMo7702measureBRTryo0.getWidth() : placeableMo7702measureBRTryo0.getWidth());
                                final boolean z2 = z;
                                final Placeable placeableMo7702measureBRTryo1 = measurable3.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, placeableMo7702measureBRTryo0.getWidth(), 0, 0, 8, null));
                                final Placeable placeableMo7702measureBRTryo2 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, placeableMo7702measureBRTryo0.getWidth(), 0, 0, 8, null));
                                if (z2) {
                                    height = placeableMo7702measureBRTryo1.getHeight() + placeableMo7702measureBRTryo0.getHeight() + iMo1428roundToPx0680j_9 + iMo1428roundToPx0680j_7 + iMo1428roundToPx0680j_8;
                                    if (Constraints.m8990getHasBoundedHeightimpl(j)) {
                                        height = Constraints.m8994getMaxHeightimpl(j);
                                    }
                                } else {
                                    height = placeableMo7702measureBRTryo1.getHeight() + placeableMo7702measureBRTryo0.getHeight() + placeableMo7702measureBRTryo2.getHeight() + iMo1428roundToPx0680j_10 + iMo1428roundToPx0680j_11;
                                }
                                final int i4 = height;
                                return MeasureScope.layout$default(measureScope, width, i4, null, new nl3() { // from class: androidx.compose.material3.v4
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return TimePickerDialogKt$TimePickerCustomLayout$measurePolicy$1$1.measure_3p2s80s$lambda$3(z2, iMo1428roundToPx0680j_7, placeableMo7702measureBRTryo0, iMo1428roundToPx0680j_8, placeableMo7702measureBRTryo1, iMo1428roundToPx0680j_9, i4, iMo1428roundToPx0680j_5, measureScope, placeableMo7702measureBRTryo2, iMo1428roundToPx0680j_6, iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_10, width, (Placeable.PlacementScope) obj);
                                    }
                                }, 4, null);
                            }
                            i3++;
                            measureScope = measureScope;
                        }
                        throw hm.d("Collection contains no element matching the predicate.");
                    }
                    i2++;
                    measureScope = measureScope;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
