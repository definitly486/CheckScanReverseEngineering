package androidx.compose.material3;

import androidx.compose.material3.tokens.SnackbarTokens;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.aa4;
import defpackage.hm;
import defpackage.j59;
import defpackage.nl3;
import defpackage.tg;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SnackbarKt$OneRowSnackbar$2$1 implements MeasurePolicy {
    final /* synthetic */ String $actionTag;
    final /* synthetic */ String $dismissActionTag;
    final /* synthetic */ String $textTag;

    public SnackbarKt$OneRowSnackbar$2$1(String str, String str2, String str3) {
        this.$actionTag = str;
        this.$dismissActionTag = str2;
        this.$textTag = str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$4(Placeable placeable, int i, Placeable placeable2, int i2, int i3, Placeable placeable3, int i4, int i5, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, i, 0.0f, 4, null);
        if (placeable2 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i2, i3, 0.0f, 4, null);
        }
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i4, i5, 0.0f, 4, null);
        }
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0123 A[PHI: r5 r6
      0x0123: PHI (r5v10 int) = (r5v9 int), (r5v16 int), (r5v16 int) binds: [B:66:0x0146, B:59:0x0114, B:61:0x011e] A[DONT_GENERATE, DONT_INLINE]
      0x0123: PHI (r6v9 int) = (r6v8 int), (r6v13 int), (r6v13 int) binds: [B:66:0x0146, B:59:0x0114, B:61:0x011e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        Measurable measurable;
        Measurable measurable2;
        int iMo1428roundToPx0680j_4;
        int iMax;
        int iB;
        int i;
        MeasureScope measureScope2 = measureScope;
        int iMin = Math.min(Constraints.m8995getMaxWidthimpl(j), measureScope2.mo1428roundToPx0680j_4(SnackbarKt.ContainerMaxWidth));
        String str = this.$actionTag;
        List<? extends Measurable> list2 = list;
        int size = list2.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                measurable = null;
                break;
            }
            measurable = list.get(i2);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), str)) {
                break;
            }
            i2++;
        }
        Measurable measurable3 = measurable;
        Placeable placeableMo7702measureBRTryo0 = measurable3 != null ? measurable3.mo7702measureBRTryo0(j) : null;
        String str2 = this.$dismissActionTag;
        int size2 = list2.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size2) {
                measurable2 = null;
                break;
            }
            measurable2 = list.get(i3);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable2), str2)) {
                break;
            }
            i3++;
        }
        Measurable measurable4 = measurable2;
        final Placeable placeableMo7702measureBRTryo1 = measurable4 != null ? measurable4.mo7702measureBRTryo0(j) : null;
        int width = placeableMo7702measureBRTryo0 != null ? placeableMo7702measureBRTryo0.getWidth() : 0;
        int height = placeableMo7702measureBRTryo0 != null ? placeableMo7702measureBRTryo0.getHeight() : 0;
        int width2 = placeableMo7702measureBRTryo1 != null ? placeableMo7702measureBRTryo1.getWidth() : 0;
        int height2 = placeableMo7702measureBRTryo1 != null ? placeableMo7702measureBRTryo1.getHeight() : 0;
        int iMo1428roundToPx0680j_5 = ((iMin - width) - width2) - (width2 == 0 ? measureScope2.mo1428roundToPx0680j_4(SnackbarKt.TextEndExtraSpacing) : 0);
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        if (iMo1428roundToPx0680j_5 < iM8997getMinWidthimpl) {
            iMo1428roundToPx0680j_5 = iM8997getMinWidthimpl;
        }
        String str3 = this.$textTag;
        int size3 = list2.size();
        int i4 = 0;
        while (i4 < size3) {
            Measurable measurable5 = list.get(i4);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable5), str3)) {
                int i5 = height2;
                final Placeable placeableMo7702measureBRTryo2 = measurable5.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, iMo1428roundToPx0680j_5, 0, 0, 9, null));
                int i6 = placeableMo7702measureBRTryo2.get(AlignmentLineKt.getFirstBaseline());
                int i7 = placeableMo7702measureBRTryo2.get(AlignmentLineKt.getLastBaseline());
                boolean z = true;
                boolean z2 = (i6 == Integer.MIN_VALUE || i7 == Integer.MIN_VALUE) ? false : true;
                if (i6 != i7 && z2) {
                    z = false;
                }
                final int i8 = iMin - width2;
                final int i9 = i8 - width;
                if (z) {
                    iMax = Math.max(measureScope2.mo1428roundToPx0680j_4(SnackbarTokens.INSTANCE.m5117getSingleLineContainerHeightD9Ej5fM()), Math.max(height, i5));
                    iMo1428roundToPx0680j_4 = tg.b(iMax, 2, placeableMo7702measureBRTryo2);
                    if (placeableMo7702measureBRTryo0 == null || (i = placeableMo7702measureBRTryo0.get(AlignmentLineKt.getFirstBaseline())) == Integer.MIN_VALUE) {
                        iB = 0;
                    } else {
                        iB = (i6 + iMo1428roundToPx0680j_4) - i;
                    }
                } else {
                    iMo1428roundToPx0680j_4 = measureScope2.mo1428roundToPx0680j_4(SnackbarKt.HeightToFirstLine) - i6;
                    iMax = Math.max(measureScope2.mo1428roundToPx0680j_4(SnackbarTokens.INSTANCE.m5118getTwoLinesContainerHeightD9Ej5fM()), placeableMo7702measureBRTryo2.getHeight() + iMo1428roundToPx0680j_4);
                    if (placeableMo7702measureBRTryo0 != null) {
                        iB = tg.b(iMax, 2, placeableMo7702measureBRTryo0);
                    } else {
                        iB = 0;
                    }
                }
                final int i10 = iB;
                int i11 = iMax;
                final int i12 = iMo1428roundToPx0680j_4;
                final int iB2 = placeableMo7702measureBRTryo1 != null ? tg.b(i11, 2, placeableMo7702measureBRTryo1) : 0;
                final Placeable placeable = placeableMo7702measureBRTryo0;
                return MeasureScope.layout$default(measureScope2, iMin, i11, null, new nl3() { // from class: androidx.compose.material3.c4
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return SnackbarKt$OneRowSnackbar$2$1.measure_3p2s80s$lambda$4(placeableMo7702measureBRTryo2, i12, placeableMo7702measureBRTryo1, i8, iB2, placeable, i9, i10, (Placeable.PlacementScope) obj);
                    }
                }, 4, null);
            }
            i4++;
            height2 = height2;
            measureScope2 = measureScope;
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
