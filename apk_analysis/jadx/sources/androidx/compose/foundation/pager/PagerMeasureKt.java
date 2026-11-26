package androidx.compose.foundation.pager;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.gestures.snapping.SnapPositionKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.pager.PagerMeasureKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import defpackage.dm3;
import defpackage.fr;
import defpackage.il1;
import defpackage.j59;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.oi5;
import defpackage.vr2;
import defpackage.w74;
import defpackage.y22;
import defpackage.y74;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PagerMeasureKt {
    public static final float MaxPageOffset = 0.5f;
    public static final float MinPageOffset = -0.5f;

    private static final MeasuredPage calculateNewCurrentPage(int i, List<MeasuredPage> list, int i2, int i3, int i4, SnapPosition snapPosition, int i5) {
        MeasuredPage measuredPage;
        if (list.isEmpty()) {
            measuredPage = null;
        } else {
            MeasuredPage measuredPage2 = list.get(0);
            MeasuredPage measuredPage3 = measuredPage2;
            float f = -Math.abs(SnapPositionKt.calculateDistanceToDesiredSnapPosition(i, i2, i3, i4, measuredPage3.getOffset(), measuredPage3.getIndex(), snapPosition, i5));
            int size = list.size() - 1;
            if (1 <= size) {
                int i6 = 1;
                while (true) {
                    MeasuredPage measuredPage4 = list.get(i6);
                    MeasuredPage measuredPage5 = measuredPage4;
                    float f2 = -Math.abs(SnapPositionKt.calculateDistanceToDesiredSnapPosition(i, i2, i3, i4, measuredPage5.getOffset(), measuredPage5.getIndex(), snapPosition, i5));
                    if (Float.compare(f, f2) < 0) {
                        f = f2;
                        measuredPage2 = measuredPage4;
                    }
                    if (i6 == size) {
                        break;
                    }
                    i6++;
                }
            }
            measuredPage = measuredPage2;
        }
        return measuredPage;
    }

    private static final List<MeasuredPage> calculatePagesOffsets(LazyLayoutMeasureScope lazyLayoutMeasureScope, List<MeasuredPage> list, List<MeasuredPage> list2, List<MeasuredPage> list3, int i, int i2, int i3, int i4, int i5, Orientation orientation, boolean z, Density density, int i6, int i7) {
        ArrayList arrayList;
        int i8 = i5;
        int i9 = i7 + i6;
        int i10 = orientation == Orientation.Vertical ? i2 : i;
        int i11 = 0;
        boolean z2 = i3 < Math.min(i10, i4);
        if (z2 && i8 != 0) {
            InlineClassHelperKt.throwIllegalStateException("non-zero pagesScrollOffset=" + i8);
        }
        ArrayList arrayList2 = new ArrayList(list3.size() + list2.size() + list.size());
        if (z2) {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                InlineClassHelperKt.throwIllegalArgumentException("No extra pages");
            }
            int size = list.size();
            arrayList = arrayList2;
            int[] iArr = new int[size];
            while (i11 < size) {
                iArr[i11] = i7;
                i11++;
            }
            int[] iArr2 = new int[size];
            Arrangement.HorizontalOrVertical horizontalOrVerticalM1743spacedBy0680j_4 = Arrangement.Absolute.INSTANCE.m1743spacedBy0680j_4(lazyLayoutMeasureScope.mo1431toDpu2uoSUM(i6));
            if (orientation == Orientation.Vertical) {
                horizontalOrVerticalM1743spacedBy0680j_4.arrange(density, i10, iArr, iArr2);
            } else {
                horizontalOrVerticalM1743spacedBy0680j_4.arrange(density, i10, iArr, LayoutDirection.Ltr, iArr2);
            }
            y74 y74VarL = yr.L(iArr2);
            w74 w74VarL = y74VarL;
            if (z) {
                w74VarL = kx6.l(y74VarL);
            }
            int i12 = w74VarL.b;
            int i13 = w74VarL.c;
            int i14 = w74VarL.d;
            if ((i14 > 0 && i12 <= i13) || (i14 < 0 && i13 <= i12)) {
                while (true) {
                    int size2 = iArr2[i12];
                    MeasuredPage measuredPage = list.get(calculatePagesOffsets$reverseAware(i12, z, size));
                    if (z) {
                        size2 = (i10 - size2) - measuredPage.getSize();
                    }
                    measuredPage.position(size2, i, i2);
                    arrayList.add(measuredPage);
                    if (i12 == i13) {
                        break;
                    }
                    i12 += i14;
                }
            }
        } else {
            arrayList = arrayList2;
            int size3 = list2.size();
            int i15 = i8;
            for (int i16 = 0; i16 < size3; i16++) {
                MeasuredPage measuredPage2 = list2.get(i16);
                i15 -= i9;
                measuredPage2.position(i15, i, i2);
                arrayList.add(measuredPage2);
            }
            int size4 = list.size();
            for (int i17 = 0; i17 < size4; i17++) {
                MeasuredPage measuredPage3 = list.get(i17);
                measuredPage3.position(i8, i, i2);
                arrayList.add(measuredPage3);
                i8 += i9;
            }
            int size5 = list3.size();
            while (i11 < size5) {
                MeasuredPage measuredPage4 = list3.get(i11);
                measuredPage4.position(i8, i, i2);
                arrayList.add(measuredPage4);
                i8 += i9;
                i11++;
            }
        }
        return arrayList;
    }

    private static final int calculatePagesOffsets$reverseAware(int i, boolean z, int i2) {
        return !z ? i : (i2 - i) - 1;
    }

    private static final List<MeasuredPage> createPagesAfterList(int i, int i2, int i3, List<Integer> list, nl3<? super Integer, MeasuredPage> nl3Var) {
        int iMin = Math.min(i3, (i2 - i) - 1) + i;
        int i4 = i + 1;
        ArrayList arrayList = null;
        if (i4 <= iMin) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(nl3Var.invoke(Integer.valueOf(i4)));
                if (i4 == iMin) {
                    break;
                }
                i4++;
            }
        }
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            int iIntValue = list.get(i5).intValue();
            if (iMin + 1 <= iIntValue && iIntValue < i2) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(nl3Var.invoke(Integer.valueOf(iIntValue)));
            }
        }
        return arrayList == null ? kx2.b : arrayList;
    }

    private static final List<MeasuredPage> createPagesBeforeList(int i, int i2, List<Integer> list, nl3<? super Integer, MeasuredPage> nl3Var) {
        int iMax = Math.max(0, i - i2);
        int i3 = i - 1;
        ArrayList arrayList = null;
        if (iMax <= i3) {
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(nl3Var.invoke(Integer.valueOf(i3)));
                if (i3 == iMax) {
                    break;
                }
                i3--;
            }
        }
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            int iIntValue = list.get(i4).intValue();
            if (iIntValue < iMax) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(nl3Var.invoke(Integer.valueOf(iIntValue)));
            }
        }
        return arrayList == null ? kx2.b : arrayList;
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    /* JADX INFO: renamed from: getAndMeasure-G5IdpRk, reason: not valid java name */
    private static final MeasuredPage m2301getAndMeasureG5IdpRk(LazyLayoutMeasureScope lazyLayoutMeasureScope, int i, long j, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j2, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z, int i2, MutableIntObjectMap<List<Placeable>> mutableIntObjectMap) {
        List<Placeable> list;
        Object key = pagerLazyLayoutItemProvider.getKey(i);
        List<Placeable> list2 = mutableIntObjectMap.get(i);
        if (list2 != null) {
            list = list2;
        } else {
            List<Measurable> listCompose = lazyLayoutMeasureScope.compose(i);
            int size = listCompose.size();
            ArrayList arrayList = new ArrayList(size);
            int iB = 0;
            while (iB < size) {
                iB = il1.b(listCompose.get(iB), j, arrayList, iB, 1);
            }
            mutableIntObjectMap.set(i, arrayList);
            list = arrayList;
        }
        return new MeasuredPage(i, i2, list, j2, key, orientation, horizontal, vertical, layoutDirection, z, null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x023c A[LOOP:5: B:100:0x023a->B:101:0x023c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:104:0x0281 A[LOOP:6: B:103:0x027f->B:104:0x0281, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:112:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:115:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:116:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:119:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:122:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:124:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:126:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:134:0x033a  */
    /* JADX WARN: Code duplicated, block: B:135:0x033d  */
    /* JADX WARN: Code duplicated, block: B:137:0x0351  */
    /* JADX WARN: Code duplicated, block: B:139:0x0368  */
    /* JADX WARN: Code duplicated, block: B:144:0x0376  */
    /* JADX WARN: Code duplicated, block: B:145:0x0379  */
    /* JADX WARN: Code duplicated, block: B:147:0x038d  */
    /* JADX WARN: Code duplicated, block: B:149:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:154:0x03cb  */
    /* JADX WARN: Code duplicated, block: B:156:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:159:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:160:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:162:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:163:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:170:0x041a  */
    /* JADX WARN: Code duplicated, block: B:193:0x03a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x036b A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v22, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r21v0, types: [java.util.List] */
    /* JADX INFO: renamed from: measurePager-7L1iB3k, reason: not valid java name */
    public static final PagerMeasureResult m2302measurePager7L1iB3k(final LazyLayoutMeasureScope lazyLayoutMeasureScope, int i, final PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, int i2, int i3, int i4, int i5, int i6, int i7, long j, final Orientation orientation, final Alignment.Vertical vertical, final Alignment.Horizontal horizontal, final boolean z, final long j2, final int i8, int i9, List<Integer> list, SnapPosition snapPosition, final MutableState<j59> mutableState, y22 y22Var, Density density, dm3<? super Integer, ? super Integer, ? super nl3<? super Placeable.PlacementScope, j59>, ? extends MeasureResult> dm3Var, final MutableIntObjectMap<List<Placeable>> mutableIntObjectMap) {
        int i10;
        int i11;
        int i12;
        int i13;
        MeasuredPage measuredPage;
        List<MeasuredPage> listCreatePagesBeforeList;
        int size;
        int i14;
        List<MeasuredPage> listCreatePagesAfterList;
        int size2;
        int i15;
        List<MeasuredPage> list2;
        boolean z2;
        Orientation orientation2;
        int i16;
        int i17;
        final List<MeasuredPage> listCalculatePagesOffsets;
        ?? arrayList;
        int size3;
        int i18;
        MeasuredPage measuredPage2;
        int i19;
        ArrayList arrayList2;
        int size4;
        int i20;
        List list3;
        MeasuredPage measuredPage3;
        ArrayList arrayList3;
        int size5;
        int i21;
        List list4;
        MeasuredPage measuredPage4;
        int i22;
        MeasuredPage measuredPageCalculateNewCurrentPage;
        int index;
        int iPosition;
        int offset;
        float fD;
        boolean z3;
        if (i3 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("negative beforeContentPadding");
        }
        if (i4 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("negative afterContentPadding");
        }
        int i23 = i8 + i5;
        if (i23 < 0) {
            i23 = 0;
        }
        int i24 = i9;
        if (i24 > i) {
            i24 = i;
        }
        Orientation orientation3 = Orientation.Vertical;
        final long jConstraints$default = ConstraintsKt.Constraints$default(0, orientation == orientation3 ? Constraints.m8995getMaxWidthimpl(j) : i8, 0, orientation != orientation3 ? Constraints.m8994getMaxHeightimpl(j) : i8, 5, null);
        kx2 kx2Var = kx2.b;
        int i25 = 1;
        if (i <= 0) {
            return new PagerMeasureResult(kx2Var, i8, i5, i4, orientation, -i3, i2 + i4, false, i24, null, null, 0.0f, 0, false, snapPosition, dm3Var.invoke(Integer.valueOf(Constraints.m8997getMinWidthimpl(j)), Integer.valueOf(Constraints.m8996getMinHeightimpl(j)), new oi5(i25)), false, null, null, y22Var, density, jConstraints$default, 393216, null);
        }
        int i26 = i24;
        int i27 = i6;
        int i28 = i7;
        while (i27 > 0 && i28 > 0) {
            i27--;
            i28 -= i23;
        }
        int i29 = i28 * (-1);
        if (i27 >= i) {
            i27 = i - 1;
            i29 = 0;
        }
        fr frVar = new fr();
        int i30 = -i3;
        int i31 = i30 + (i5 < 0 ? i5 : 0);
        int i32 = i29 + i31;
        int iMax = 0;
        while (i32 < 0 && i27 > 0) {
            int i33 = i27 - 1;
            MeasuredPage measuredPageM2301getAndMeasureG5IdpRk = m2301getAndMeasureG5IdpRk(lazyLayoutMeasureScope, i33, jConstraints$default, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, lazyLayoutMeasureScope.getLayoutDirection(), z, i8, mutableIntObjectMap);
            frVar.add(0, measuredPageM2301getAndMeasureG5IdpRk);
            iMax = Math.max(iMax, measuredPageM2301getAndMeasureG5IdpRk.getCrossAxisSize());
            i32 += i23;
            i27 = i33;
            i30 = i30;
        }
        int i34 = i30;
        int i35 = iMax;
        if (i32 < i31) {
            i32 = i31;
        }
        int i36 = i32 - i31;
        int i37 = i2 + i4;
        int i38 = i37 >= 0 ? i37 : 0;
        int i39 = -i36;
        int i40 = i27;
        int i41 = i40;
        int i42 = 0;
        boolean z4 = false;
        while (i42 < frVar.size()) {
            if (i39 >= i38) {
                frVar.remove(i42);
                j59 j59Var = j59.a;
                z4 = true;
            } else {
                i41++;
                i39 += i23;
                i42++;
            }
        }
        int i43 = i40;
        int i44 = i41;
        boolean z5 = z4;
        while (i44 < i && (i39 < i38 || i39 <= 0 || frVar.isEmpty())) {
            int i45 = i44;
            int i46 = i38;
            int iMax2 = i35;
            MeasuredPage measuredPageM2301getAndMeasureG5IdpRk2 = m2301getAndMeasureG5IdpRk(lazyLayoutMeasureScope, i45, jConstraints$default, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, lazyLayoutMeasureScope.getLayoutDirection(), z, i8, mutableIntObjectMap);
            int i47 = i43;
            int i48 = i - 1;
            i39 += i45 == i48 ? i8 : i23;
            if (i39 > i31 || i45 == i48) {
                iMax2 = Math.max(iMax2, measuredPageM2301getAndMeasureG5IdpRk2.getCrossAxisSize());
                frVar.addLast(measuredPageM2301getAndMeasureG5IdpRk2);
                i43 = i47;
            } else {
                i36 -= i23;
                j59 j59Var2 = j59.a;
                z5 = true;
                i43 = i45 + 1;
            }
            i35 = iMax2;
            i44 = i45 + 1;
            i38 = i46;
        }
        int i49 = i35;
        int i50 = i44;
        int iMax3 = i49;
        int i51 = i43;
        if (i39 < i2) {
            int i52 = i2 - i39;
            i36 -= i52;
            i39 += i52;
            i11 = i51;
            while (i36 < i3 && i11 > 0) {
                int i53 = i11 - 1;
                MeasuredPage measuredPageM2301getAndMeasureG5IdpRk3 = m2301getAndMeasureG5IdpRk(lazyLayoutMeasureScope, i53, jConstraints$default, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, lazyLayoutMeasureScope.getLayoutDirection(), z, i8, mutableIntObjectMap);
                frVar.add(0, measuredPageM2301getAndMeasureG5IdpRk3);
                iMax3 = Math.max(iMax3, measuredPageM2301getAndMeasureG5IdpRk3.getCrossAxisSize());
                i36 += i23;
                i50 = i50;
                i11 = i53;
            }
            i10 = i50;
            if (i36 < 0) {
                i39 += i36;
                i36 = 0;
            }
        } else {
            i10 = i50;
            i11 = i51;
        }
        if (i36 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid currentFirstPageScrollOffset");
        }
        int i54 = -i36;
        MeasuredPage measuredPage5 = (MeasuredPage) frVar.first();
        if (i3 > 0 || i5 < 0) {
            int size6 = frVar.size();
            i12 = i10;
            int i55 = 0;
            while (true) {
                if (i55 < size6 && i36 != 0 && i23 <= i36) {
                    i13 = i39;
                    if (i55 == frVar.size() - 1) {
                        break;
                    }
                    i36 -= i23;
                    i55++;
                    measuredPage5 = (MeasuredPage) frVar.get(i55);
                    i39 = i13;
                }
            }
            int i56 = i36;
            measuredPage = measuredPage5;
            listCreatePagesBeforeList = createPagesBeforeList(i11, i26, list, new nl3() { // from class: d26
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return PagerMeasureKt.measurePager_7L1iB3k$lambda$10(lazyLayoutMeasureScope, jConstraints$default, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, z, i8, mutableIntObjectMap, ((Integer) obj).intValue());
                }
            });
            size = listCreatePagesBeforeList.size();
            for (i14 = 0; i14 < size; i14++) {
                iMax3 = Math.max(iMax3, listCreatePagesBeforeList.get(i14).getCrossAxisSize());
            }
            listCreatePagesAfterList = createPagesAfterList(((MeasuredPage) frVar.last()).getIndex(), i, i26, list, new nl3() { // from class: e26
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return PagerMeasureKt.measurePager_7L1iB3k$lambda$12(lazyLayoutMeasureScope, jConstraints$default, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, z, i8, mutableIntObjectMap, ((Integer) obj).intValue());
                }
            });
            size2 = listCreatePagesAfterList.size();
            i15 = 0;
            while (i15 < size2) {
                iMax3 = Math.max(iMax3, listCreatePagesAfterList.get(i15).getCrossAxisSize());
                i15++;
                listCreatePagesAfterList = listCreatePagesAfterList;
            }
            list2 = listCreatePagesAfterList;
            if (!aa4.e(measuredPage, frVar.first()) && listCreatePagesBeforeList.isEmpty() && list2.isEmpty()) {
                z2 = true;
            } else {
                z2 = false;
            }
            orientation2 = Orientation.Vertical;
            if (orientation == orientation2) {
                i16 = iMax3;
            } else {
                i16 = i13;
            }
            int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, i16);
            if (orientation == orientation2) {
                iMax3 = i13;
            }
            int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, iMax3);
            i17 = i23;
            int i57 = i13;
            listCalculatePagesOffsets = calculatePagesOffsets(lazyLayoutMeasureScope, frVar, listCreatePagesBeforeList, list2, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, i57, i2, i54, orientation, z, lazyLayoutMeasureScope, i5, i8);
            if (z2) {
                arrayList = listCalculatePagesOffsets;
            } else {
                arrayList = new ArrayList(listCalculatePagesOffsets.size());
                size3 = listCalculatePagesOffsets.size();
                i18 = 0;
                while (i18 < size3) {
                    MeasuredPage measuredPage6 = measuredPage;
                    MeasuredPage measuredPage7 = listCalculatePagesOffsets.get(i18);
                    measuredPage2 = measuredPage7;
                    int i58 = i17;
                    if (measuredPage2.getIndex() < ((MeasuredPage) frVar.first()).getIndex() && measuredPage2.getIndex() <= ((MeasuredPage) frVar.last()).getIndex()) {
                        arrayList.add(measuredPage7);
                    }
                    i18++;
                    i17 = i58;
                    measuredPage = measuredPage6;
                }
            }
            MeasuredPage measuredPage8 = measuredPage;
            i19 = i17;
            if (listCreatePagesBeforeList.isEmpty()) {
                list3 = kx2Var;
            } else {
                arrayList2 = new ArrayList(listCalculatePagesOffsets.size());
                size4 = listCalculatePagesOffsets.size();
                for (i20 = 0; i20 < size4; i20++) {
                    measuredPage3 = listCalculatePagesOffsets.get(i20);
                    if (measuredPage3.getIndex() < ((MeasuredPage) frVar.first()).getIndex()) {
                        arrayList2.add(measuredPage3);
                    }
                }
                list3 = arrayList2;
            }
            if (list2.isEmpty()) {
                list4 = kx2Var;
            } else {
                arrayList3 = new ArrayList(listCalculatePagesOffsets.size());
                size5 = listCalculatePagesOffsets.size();
                for (i21 = 0; i21 < size5; i21++) {
                    measuredPage4 = listCalculatePagesOffsets.get(i21);
                    if (measuredPage4.getIndex() > ((MeasuredPage) frVar.last()).getIndex()) {
                        arrayList3.add(measuredPage4);
                    }
                }
                list4 = arrayList3;
            }
            int i59 = i2 + i3 + i4;
            i22 = i12;
            measuredPageCalculateNewCurrentPage = calculateNewCurrentPage(i59, arrayList, i3, i4, i8, snapPosition, i);
            ?? r21 = arrayList;
            if (measuredPageCalculateNewCurrentPage != null) {
                index = measuredPageCalculateNewCurrentPage.getIndex();
            } else {
                index = 0;
            }
            iPosition = snapPosition.position(i59, i8, i3, i4, index, i);
            if (measuredPageCalculateNewCurrentPage != null) {
                offset = measuredPageCalculateNewCurrentPage.getOffset();
            } else {
                offset = 0;
            }
            if (i19 == 0) {
                fD = 0.0f;
            } else {
                fD = kx6.d((iPosition - offset) / i19, -0.5f, 0.5f);
            }
            MeasureResult measureResultInvoke = dm3Var.invoke(Integer.valueOf(iM9012constrainWidthK40F9xA), Integer.valueOf(iM9011constrainHeightK40F9xA), new nl3() { // from class: f26
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return PagerMeasureKt.measurePager_7L1iB3k$lambda$18(mutableState, listCalculatePagesOffsets, (Placeable.PlacementScope) obj);
                }
            });
            if (i22 >= i || i57 > i2) {
                z3 = true;
            } else {
                z3 = false;
            }
            return new PagerMeasureResult(r21, i8, i5, i4, orientation, i34, i37, z, i26, measuredPage8, measuredPageCalculateNewCurrentPage, fD, i56, z3, snapPosition, measureResultInvoke, z5, list3, list4, y22Var, density, jConstraints$default, null);
        }
        i12 = i10;
        i13 = i39;
        int i510 = i36;
        measuredPage = measuredPage5;
        listCreatePagesBeforeList = createPagesBeforeList(i11, i26, list, new nl3() { // from class: d26
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PagerMeasureKt.measurePager_7L1iB3k$lambda$10(lazyLayoutMeasureScope, jConstraints$default, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, z, i8, mutableIntObjectMap, ((Integer) obj).intValue());
            }
        });
        size = listCreatePagesBeforeList.size();
        while (i14 < size) {
            iMax3 = Math.max(iMax3, listCreatePagesBeforeList.get(i14).getCrossAxisSize());
        }
        listCreatePagesAfterList = createPagesAfterList(((MeasuredPage) frVar.last()).getIndex(), i, i26, list, new nl3() { // from class: e26
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PagerMeasureKt.measurePager_7L1iB3k$lambda$12(lazyLayoutMeasureScope, jConstraints$default, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, z, i8, mutableIntObjectMap, ((Integer) obj).intValue());
            }
        });
        size2 = listCreatePagesAfterList.size();
        i15 = 0;
        while (i15 < size2) {
            iMax3 = Math.max(iMax3, listCreatePagesAfterList.get(i15).getCrossAxisSize());
            i15++;
            listCreatePagesAfterList = listCreatePagesAfterList;
        }
        list2 = listCreatePagesAfterList;
        if (!aa4.e(measuredPage, frVar.first())) {
            z2 = false;
        } else {
            z2 = false;
        }
        orientation2 = Orientation.Vertical;
        if (orientation == orientation2) {
            i16 = iMax3;
        } else {
            i16 = i13;
        }
        int iM9012constrainWidthK40F9xA2 = ConstraintsKt.m9012constrainWidthK40F9xA(j, i16);
        if (orientation == orientation2) {
            iMax3 = i13;
        }
        int iM9011constrainHeightK40F9xA2 = ConstraintsKt.m9011constrainHeightK40F9xA(j, iMax3);
        i17 = i23;
        int i511 = i13;
        listCalculatePagesOffsets = calculatePagesOffsets(lazyLayoutMeasureScope, frVar, listCreatePagesBeforeList, list2, iM9012constrainWidthK40F9xA2, iM9011constrainHeightK40F9xA2, i511, i2, i54, orientation, z, lazyLayoutMeasureScope, i5, i8);
        if (z2) {
            arrayList = listCalculatePagesOffsets;
        } else {
            arrayList = new ArrayList(listCalculatePagesOffsets.size());
            size3 = listCalculatePagesOffsets.size();
            i18 = 0;
            while (i18 < size3) {
                MeasuredPage measuredPage9 = measuredPage;
                MeasuredPage measuredPage10 = listCalculatePagesOffsets.get(i18);
                measuredPage2 = measuredPage10;
                int i512 = i17;
                if (measuredPage2.getIndex() < ((MeasuredPage) frVar.first()).getIndex()) {
                }
                i18++;
                i17 = i512;
                measuredPage = measuredPage9;
            }
        }
        MeasuredPage measuredPage11 = measuredPage;
        i19 = i17;
        if (listCreatePagesBeforeList.isEmpty()) {
            list3 = kx2Var;
        } else {
            arrayList2 = new ArrayList(listCalculatePagesOffsets.size());
            size4 = listCalculatePagesOffsets.size();
            while (i20 < size4) {
                measuredPage3 = listCalculatePagesOffsets.get(i20);
                if (measuredPage3.getIndex() < ((MeasuredPage) frVar.first()).getIndex()) {
                    arrayList2.add(measuredPage3);
                }
            }
            list3 = arrayList2;
        }
        if (list2.isEmpty()) {
            list4 = kx2Var;
        } else {
            arrayList3 = new ArrayList(listCalculatePagesOffsets.size());
            size5 = listCalculatePagesOffsets.size();
            while (i21 < size5) {
                measuredPage4 = listCalculatePagesOffsets.get(i21);
                if (measuredPage4.getIndex() > ((MeasuredPage) frVar.last()).getIndex()) {
                    arrayList3.add(measuredPage4);
                }
            }
            list4 = arrayList3;
        }
        int i513 = i2 + i3 + i4;
        i22 = i12;
        measuredPageCalculateNewCurrentPage = calculateNewCurrentPage(i513, arrayList, i3, i4, i8, snapPosition, i);
        ?? r22 = arrayList;
        if (measuredPageCalculateNewCurrentPage != null) {
            index = measuredPageCalculateNewCurrentPage.getIndex();
        } else {
            index = 0;
        }
        iPosition = snapPosition.position(i513, i8, i3, i4, index, i);
        if (measuredPageCalculateNewCurrentPage != null) {
            offset = measuredPageCalculateNewCurrentPage.getOffset();
        } else {
            offset = 0;
        }
        if (i19 == 0) {
            fD = 0.0f;
        } else {
            fD = kx6.d((iPosition - offset) / i19, -0.5f, 0.5f);
        }
        MeasureResult measureResultInvoke2 = dm3Var.invoke(Integer.valueOf(iM9012constrainWidthK40F9xA2), Integer.valueOf(iM9011constrainHeightK40F9xA2), new nl3() { // from class: f26
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PagerMeasureKt.measurePager_7L1iB3k$lambda$18(mutableState, listCalculatePagesOffsets, (Placeable.PlacementScope) obj);
            }
        });
        if (i22 >= i) {
            z3 = true;
        } else {
            z3 = true;
        }
        return new PagerMeasureResult(r22, i8, i5, i4, orientation, i34, i37, z, i26, measuredPage11, measuredPageCalculateNewCurrentPage, fD, i510, z3, snapPosition, measureResultInvoke2, z5, list3, list4, y22Var, density, jConstraints$default, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasuredPage measurePager_7L1iB3k$lambda$10(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j2, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, boolean z, int i, MutableIntObjectMap mutableIntObjectMap, int i2) {
        return m2301getAndMeasureG5IdpRk(lazyLayoutMeasureScope, i2, j, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, lazyLayoutMeasureScope.getLayoutDirection(), z, i, mutableIntObjectMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasuredPage measurePager_7L1iB3k$lambda$12(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j, PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, long j2, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, boolean z, int i, MutableIntObjectMap mutableIntObjectMap, int i2) {
        return m2301getAndMeasureG5IdpRk(lazyLayoutMeasureScope, i2, j, pagerLazyLayoutItemProvider, j2, orientation, horizontal, vertical, lazyLayoutMeasureScope.getLayoutDirection(), z, i, mutableIntObjectMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measurePager_7L1iB3k$lambda$18(MutableState mutableState, List list, Placeable.PlacementScope placementScope) {
        placementScope.withMotionFrameOfReferencePlacement(new vr2(list, 2));
        ObservableScopeInvalidator.m2232attachToScopeimpl(mutableState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measurePager_7L1iB3k$lambda$18$0(List list, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((MeasuredPage) list.get(i)).place(placementScope);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measurePager_7L1iB3k$lambda$3(Placeable.PlacementScope placementScope) {
        return j59.a;
    }
}
