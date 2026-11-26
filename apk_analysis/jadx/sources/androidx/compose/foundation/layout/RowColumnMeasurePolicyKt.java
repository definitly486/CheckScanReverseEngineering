package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RowColumnMeasurePolicyKt {
    /* JADX WARN: Code duplicated, block: B:78:0x0196  */
    /* JADX WARN: Code duplicated, block: B:79:0x019e  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a9  */
    public static final MeasureResult measure(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, int i5, MeasureScope measureScope, List<? extends Measurable> list, Placeable[] placeableArr, int i6, int i7, int[] iArr, int i8) {
        int i9;
        int i10;
        int i11;
        int i12;
        FlowLayoutData flowLayoutData;
        int iIntValue;
        int iIntValue2;
        int i13;
        int i14;
        FlowLayoutData flowLayoutData2;
        RowColumnMeasurePolicy rowColumnMeasurePolicy2;
        int i15;
        long j = i5;
        int i16 = i7 - i6;
        int[] iArr2 = new int[i16];
        int i17 = i6;
        float f = 0.0f;
        int i18 = 0;
        int i19 = 0;
        boolean z = false;
        int i20 = 0;
        int i21 = 0;
        while (true) {
            i9 = Integer.MAX_VALUE;
            boolean z2 = true;
            if (i17 >= i7) {
                break;
            }
            Measurable measurable = list.get(i17);
            RowColumnParentData rowColumnParentData = RowColumnImplKt.getRowColumnParentData(measurable);
            float weight = RowColumnImplKt.getWeight(rowColumnParentData);
            if (!z && !RowColumnImplKt.isRelative(rowColumnParentData)) {
                z2 = false;
            }
            if (weight > 0.0f) {
                f += weight;
                i20++;
                iArr2 = iArr2;
                i17 = i17;
                j = j;
            } else {
                Integer numValueOf = (i4 == Integer.MAX_VALUE || rowColumnParentData == null || (flowLayoutData2 = rowColumnParentData.getFlowLayoutData()) == null) ? null : Integer.valueOf(Math.round(flowLayoutData2.getFillCrossAxisFraction() * i4));
                int i22 = i3 - i21;
                Placeable placeableMo7702measureBRTryo0 = placeableArr[i17];
                if (placeableMo7702measureBRTryo0 == null) {
                    i15 = i19;
                    rowColumnMeasurePolicy2 = rowColumnMeasurePolicy;
                    placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(RowColumnMeasurePolicy.m2079createConstraintsxF2OJ5Q$default(rowColumnMeasurePolicy2, 0, numValueOf != null ? numValueOf.intValue() : 0, i3 != Integer.MAX_VALUE ? i22 < 0 ? 0 : i22 : Integer.MAX_VALUE, numValueOf != null ? numValueOf.intValue() : i4, false, 16, null));
                } else {
                    rowColumnMeasurePolicy2 = rowColumnMeasurePolicy;
                    i15 = i19;
                }
                int iMainAxisSize = rowColumnMeasurePolicy2.mainAxisSize(placeableMo7702measureBRTryo0);
                int iCrossAxisSize = rowColumnMeasurePolicy2.crossAxisSize(placeableMo7702measureBRTryo0);
                iArr2[i17 - i6] = iMainAxisSize;
                int i23 = i22 - iMainAxisSize;
                if (i23 < 0) {
                    i23 = 0;
                }
                int iMin = Math.min(i5, i23);
                int iMax = Math.max(i15, iCrossAxisSize);
                placeableArr[i17] = placeableMo7702measureBRTryo0;
                i21 = iMainAxisSize + iMin + i21;
                i18 = iMin;
                i19 = iMax;
            }
            i17++;
            z = z2;
            iArr2 = iArr2;
            j = j;
        }
        int[] iArr3 = iArr2;
        long j2 = j;
        RowColumnMeasurePolicy rowColumnMeasurePolicy3 = rowColumnMeasurePolicy;
        int i24 = i19;
        if (i20 == 0) {
            i21 -= i18;
            i11 = 0;
            i10 = 0;
        } else {
            long j3 = j2 * ((long) (i20 - 1));
            long jRound = ((long) ((i3 != Integer.MAX_VALUE ? i3 : i) - i21)) - j3;
            if (jRound < 0) {
                jRound = 0;
            }
            float f2 = jRound / f;
            for (int i25 = i6; i25 < i7; i25++) {
                jRound -= (long) Math.round(RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(list.get(i25))) * f2);
            }
            int i26 = i6;
            int i27 = 0;
            while (i26 < i7) {
                if (placeableArr[i26] == null) {
                    Measurable measurable2 = list.get(i26);
                    RowColumnParentData rowColumnParentData2 = RowColumnImplKt.getRowColumnParentData(measurable2);
                    float weight2 = RowColumnImplKt.getWeight(rowColumnParentData2);
                    Integer numValueOf2 = (i4 == i9 || rowColumnParentData2 == null || (flowLayoutData = rowColumnParentData2.getFlowLayoutData()) == null) ? null : Integer.valueOf(Math.round(flowLayoutData.getFillCrossAxisFraction() * i4));
                    if (!(weight2 > 0.0f)) {
                        InlineClassHelperKt.throwIllegalStateException("All weights <= 0 should have placeables");
                    }
                    int iSignum = Long.signum(jRound);
                    long j4 = jRound - ((long) iSignum);
                    int iMax2 = Math.max(0, Math.round(weight2 * f2) + iSignum);
                    if (RowColumnImplKt.getFill(rowColumnParentData2)) {
                        i12 = Integer.MAX_VALUE;
                        int i28 = iMax2 != Integer.MAX_VALUE ? iMax2 : 0;
                        if (numValueOf2 != null) {
                            iIntValue = numValueOf2.intValue();
                        } else {
                            iIntValue = 0;
                        }
                        if (numValueOf2 != null) {
                            iIntValue2 = numValueOf2.intValue();
                        } else {
                            iIntValue2 = i4;
                        }
                        rowColumnMeasurePolicy3 = rowColumnMeasurePolicy;
                        Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(rowColumnMeasurePolicy3.mo1771createConstraintsxF2OJ5Q(i28, iIntValue, iMax2, iIntValue2, true));
                        int iMainAxisSize2 = rowColumnMeasurePolicy3.mainAxisSize(placeableMo7702measureBRTryo1);
                        int iCrossAxisSize2 = rowColumnMeasurePolicy3.crossAxisSize(placeableMo7702measureBRTryo1);
                        iArr3[i26 - i6] = iMainAxisSize2;
                        i27 += iMainAxisSize2;
                        int iMax3 = Math.max(i24, iCrossAxisSize2);
                        placeableArr[i26] = placeableMo7702measureBRTryo1;
                        i24 = iMax3;
                        jRound = j4;
                    } else {
                        i12 = Integer.MAX_VALUE;
                    }
                    if (numValueOf2 != null) {
                        iIntValue = numValueOf2.intValue();
                    } else {
                        iIntValue = 0;
                    }
                    if (numValueOf2 != null) {
                        iIntValue2 = numValueOf2.intValue();
                    } else {
                        iIntValue2 = i4;
                    }
                    rowColumnMeasurePolicy3 = rowColumnMeasurePolicy;
                    Placeable placeableMo7702measureBRTryo2 = measurable2.mo7702measureBRTryo0(rowColumnMeasurePolicy3.mo1771createConstraintsxF2OJ5Q(i28, iIntValue, iMax2, iIntValue2, true));
                    int iMainAxisSize3 = rowColumnMeasurePolicy3.mainAxisSize(placeableMo7702measureBRTryo2);
                    int iCrossAxisSize3 = rowColumnMeasurePolicy3.crossAxisSize(placeableMo7702measureBRTryo2);
                    iArr3[i26 - i6] = iMainAxisSize3;
                    i27 += iMainAxisSize3;
                    int iMax4 = Math.max(i24, iCrossAxisSize3);
                    placeableArr[i26] = placeableMo7702measureBRTryo2;
                    i24 = iMax4;
                    jRound = j4;
                } else {
                    i12 = i9;
                }
                i26++;
                i9 = i12;
            }
            i10 = 0;
            i11 = (int) (((long) i27) + j3);
            int i29 = i3 - i21;
            if (i11 < 0) {
                i11 = 0;
            }
            if (i11 > i29) {
                i11 = i29;
            }
        }
        int i30 = i24;
        if (z) {
            int iMax5 = i10;
            int iMax6 = iMax5;
            for (int i31 = i6; i31 < i7; i31++) {
                Placeable placeable = placeableArr[i31];
                placeable.getClass();
                CrossAxisAlignment crossAxisAlignment = RowColumnImplKt.getCrossAxisAlignment(RowColumnImplKt.getRowColumnParentData(placeable));
                Integer numCalculateAlignmentLinePosition$foundation_layout = crossAxisAlignment != null ? crossAxisAlignment.calculateAlignmentLinePosition$foundation_layout(placeable) : null;
                if (numCalculateAlignmentLinePosition$foundation_layout != null) {
                    int iIntValue3 = numCalculateAlignmentLinePosition$foundation_layout.intValue();
                    int iCrossAxisSize4 = rowColumnMeasurePolicy3.crossAxisSize(placeable);
                    iMax5 = Math.max(iMax5, iIntValue3 != Integer.MIN_VALUE ? numCalculateAlignmentLinePosition$foundation_layout.intValue() : i10);
                    if (iIntValue3 == Integer.MIN_VALUE) {
                        iIntValue3 = iCrossAxisSize4;
                    }
                    iMax6 = Math.max(iMax6, iCrossAxisSize4 - iIntValue3);
                }
            }
            int i32 = iMax6;
            i14 = iMax5;
            i13 = i32;
        } else {
            i13 = i10;
            i14 = i13;
        }
        int i33 = i21 + i11;
        if (i33 < 0) {
            i33 = i10;
        }
        int iMax7 = Math.max(i33, i);
        int iMax8 = Math.max(i30, Math.max(i2, i13 + i14));
        int[] iArr4 = new int[i16];
        rowColumnMeasurePolicy3.populateMainAxisPositions(iMax7, iArr3, iArr4, measureScope);
        return rowColumnMeasurePolicy3.placeHelper(placeableArr, measureScope, i14, iArr4, iMax7, iMax8, iArr, i8, i6, i7);
    }
}
