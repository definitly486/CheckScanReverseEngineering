package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.LazyListMeasureKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutStickyItemsKt;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.dm3;
import defpackage.fr;
import defpackage.j59;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.ng;
import defpackage.nl3;
import defpackage.pf;
import defpackage.qn1;
import defpackage.w74;
import defpackage.xs;
import defpackage.y22;
import defpackage.y74;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListMeasureKt {
    private static final List<LazyListMeasuredItem> calculateItemsOffsets(List<LazyListMeasuredItem> list, List<LazyListMeasuredItem> list2, List<LazyListMeasuredItem> list3, int i, int i2, int i3, int i4, int i5, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z2, Density density) {
        int i6 = z ? i2 : i;
        int i7 = 0;
        boolean z3 = i3 < Math.min(i6, i4);
        if (z3 && i5 != 0) {
            InlineClassHelperKt.throwIllegalStateException("non-zero itemsScrollOffset");
        }
        ArrayList arrayList = new ArrayList(list3.size() + list2.size() + list.size());
        if (z3) {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                InlineClassHelperKt.throwIllegalArgumentException("no extra items");
            }
            int size = list.size();
            int[] iArr = new int[size];
            while (i7 < size) {
                iArr[i7] = list.get(calculateItemsOffsets$reverseAware(i7, z2, size)).getSize();
                i7++;
            }
            int[] iArr2 = new int[size];
            if (z) {
                if (vertical == null) {
                    throw ng.f("null verticalArrangement when isVertical == true");
                }
                vertical.arrange(density, i6, iArr, iArr2);
            } else {
                if (horizontal == null) {
                    throw ng.f("null horizontalArrangement when isVertical == false");
                }
                horizontal.arrange(density, i6, iArr, LayoutDirection.Ltr, iArr2);
            }
            y74 y74VarL = yr.L(iArr2);
            w74 w74VarL = y74VarL;
            if (z2) {
                w74VarL = kx6.l(y74VarL);
            }
            int i8 = w74VarL.b;
            int i9 = w74VarL.c;
            int i10 = w74VarL.d;
            if ((i10 > 0 && i8 <= i9) || (i10 < 0 && i9 <= i8)) {
                while (true) {
                    int size2 = iArr2[i8];
                    LazyListMeasuredItem lazyListMeasuredItem = list.get(calculateItemsOffsets$reverseAware(i8, z2, size));
                    if (z2) {
                        size2 = (i6 - size2) - lazyListMeasuredItem.getSize();
                    }
                    lazyListMeasuredItem.position(size2, i, i2);
                    arrayList.add(lazyListMeasuredItem);
                    if (i8 == i9) {
                        break;
                    }
                    i8 += i10;
                }
            }
        } else {
            int size3 = list2.size();
            int mainAxisSizeWithSpacings = i5;
            for (int i11 = 0; i11 < size3; i11++) {
                LazyListMeasuredItem lazyListMeasuredItem2 = list2.get(i11);
                mainAxisSizeWithSpacings -= lazyListMeasuredItem2.getMainAxisSizeWithSpacings();
                lazyListMeasuredItem2.position(mainAxisSizeWithSpacings, i, i2);
                arrayList.add(lazyListMeasuredItem2);
            }
            int size4 = list.size();
            int mainAxisSizeWithSpacings2 = i5;
            for (int i12 = 0; i12 < size4; i12++) {
                LazyListMeasuredItem lazyListMeasuredItem3 = list.get(i12);
                lazyListMeasuredItem3.position(mainAxisSizeWithSpacings2, i, i2);
                arrayList.add(lazyListMeasuredItem3);
                mainAxisSizeWithSpacings2 += lazyListMeasuredItem3.getMainAxisSizeWithSpacings();
            }
            int size5 = list3.size();
            while (i7 < size5) {
                LazyListMeasuredItem lazyListMeasuredItem4 = list3.get(i7);
                lazyListMeasuredItem4.position(mainAxisSizeWithSpacings2, i, i2);
                arrayList.add(lazyListMeasuredItem4);
                mainAxisSizeWithSpacings2 += lazyListMeasuredItem4.getMainAxisSizeWithSpacings();
                i7++;
            }
        }
        return arrayList;
    }

    private static final int calculateItemsOffsets$reverseAware(int i, boolean z, int i2) {
        return !z ? i : (i2 - i) - 1;
    }

    private static final List<LazyListMeasuredItem> createItemsAfterList(List<LazyListMeasuredItem> list, LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i, int i2, List<Integer> list2) {
        LazyListMeasuredItemProvider lazyListMeasuredItemProvider2;
        LazyListMeasuredItemProvider lazyListMeasuredItemProvider3;
        int iMin = Math.min(((LazyListMeasuredItem) qn1.b0(list)).getIndex() + i2, i - 1);
        int index = ((LazyListMeasuredItem) qn1.b0(list)).getIndex() + 1;
        ArrayList arrayList = null;
        if (index <= iMin) {
            int i3 = index;
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                lazyListMeasuredItemProvider2 = lazyListMeasuredItemProvider;
                arrayList.add(LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider2, i3, 0L, 2, null));
                if (i3 == iMin) {
                    break;
                }
                i3++;
                lazyListMeasuredItemProvider = lazyListMeasuredItemProvider2;
            }
        } else {
            lazyListMeasuredItemProvider2 = lazyListMeasuredItemProvider;
        }
        if (arrayList != null && ((LazyListMeasuredItem) qn1.b0(arrayList)).getIndex() > iMin) {
            iMin = ((LazyListMeasuredItem) qn1.b0(arrayList)).getIndex();
        }
        int size = list2.size();
        int i4 = 0;
        while (i4 < size) {
            int iIntValue = list2.get(i4).intValue();
            if (iIntValue > iMin) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider2;
                arrayList.add(LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider3, iIntValue, 0L, 2, null));
            } else {
                lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider2;
            }
            i4++;
            lazyListMeasuredItemProvider2 = lazyListMeasuredItemProvider3;
        }
        return arrayList == null ? kx2.b : arrayList;
    }

    private static final List<LazyListMeasuredItem> createItemsBeforeList(int i, LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i2, List<Integer> list) {
        LazyListMeasuredItemProvider lazyListMeasuredItemProvider2;
        int iMax = Math.max(0, i - i2);
        int i3 = i - 1;
        ArrayList arrayList = null;
        if (iMax <= i3) {
            int i4 = i3;
            while (true) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                lazyListMeasuredItemProvider2 = lazyListMeasuredItemProvider;
                arrayList.add(LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider2, i4, 0L, 2, null));
                if (i4 == iMax) {
                    break;
                }
                i4--;
                lazyListMeasuredItemProvider = lazyListMeasuredItemProvider2;
            }
        } else {
            lazyListMeasuredItemProvider2 = lazyListMeasuredItemProvider;
        }
        int size = list.size() - 1;
        if (size >= 0) {
            while (true) {
                int i5 = size - 1;
                int iIntValue = list.get(size).intValue();
                if (iIntValue < iMax) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider2, iIntValue, 0L, 2, null));
                }
                if (i5 < 0) {
                    break;
                }
                size = i5;
            }
        }
        return arrayList == null ? kx2.b : arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0263  */
    /* JADX WARN: Code duplicated, block: B:104:0x026c  */
    /* JADX WARN: Code duplicated, block: B:106:0x027a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:112:0x02a2 A[LOOP:4: B:111:0x02a0->B:112:0x02a2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:115:0x02c1 A[LOOP:5: B:114:0x02bf->B:115:0x02c1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:118:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:123:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:125:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:127:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:130:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:133:0x0323 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:134:0x0325  */
    /* JADX WARN: Code duplicated, block: B:138:0x0351  */
    /* JADX WARN: Code duplicated, block: B:140:0x0361 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x0363  */
    /* JADX WARN: Code duplicated, block: B:142:0x0365  */
    /* JADX WARN: Code duplicated, block: B:145:0x0380  */
    /* JADX WARN: Code duplicated, block: B:146:0x0382  */
    /* JADX WARN: Code duplicated, block: B:148:0x0385  */
    /* JADX WARN: Code duplicated, block: B:150:0x0390 A[LOOP:6: B:149:0x038e->B:150:0x0390, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:152:0x039e  */
    /* JADX WARN: Code duplicated, block: B:155:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:156:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:159:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:161:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:164:0x03da  */
    /* JADX WARN: Code duplicated, block: B:166:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:167:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:168:0x03ed  */
    /* JADX WARN: Code duplicated, block: B:170:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:172:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:174:0x0407  */
    /* JADX WARN: Code duplicated, block: B:176:0x0412  */
    /* JADX WARN: Code duplicated, block: B:178:0x041a  */
    /* JADX WARN: Code duplicated, block: B:180:0x0425  */
    /* JADX WARN: Code duplicated, block: B:184:0x042d  */
    /* JADX WARN: Code duplicated, block: B:187:0x0448  */
    /* JADX WARN: Code duplicated, block: B:188:0x044d  */
    /* JADX WARN: Code duplicated, block: B:190:0x0451  */
    /* JADX WARN: Code duplicated, block: B:191:0x0456  */
    /* JADX WARN: Code duplicated, block: B:194:0x045e  */
    /* JADX WARN: Code duplicated, block: B:196:0x0463  */
    /* JADX WARN: Code duplicated, block: B:216:0x025e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x0260 A[ADDED_TO_REGION, EDGE_INSN: B:217:0x0260->B:101:0x0260 BREAK  A[LOOP:7: B:103:0x026a->B:109:0x0286], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0236  */
    /* JADX WARN: Code duplicated, block: B:94:0x024b  */
    /* JADX INFO: renamed from: measureLazyList-pIk1_oM, reason: not valid java name */
    public static final LazyListMeasureResult m2159measureLazyListpIk1_oM(int i, LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i2, int i3, int i4, int i5, int i6, int i7, float f, long j, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z2, Density density, LazyLayoutItemAnimator<LazyListMeasuredItem> lazyLayoutItemAnimator, int i8, List<Integer> list, boolean z3, boolean z4, y22 y22Var, final MutableState<j59> mutableState, GraphicsContext graphicsContext, StickyItemsPlacement stickyItemsPlacement, boolean z5, dm3<? super Integer, ? super Integer, ? super nl3<? super Placeable.PlacementScope, j59>, ? extends MeasureResult> dm3Var) {
        int i9;
        int i10;
        int i11;
        LazyListMeasuredItemProvider lazyListMeasuredItemProvider2;
        int i12;
        int i13;
        int i14;
        int i15;
        float f2;
        float f3;
        float f4;
        int i16;
        LazyListMeasuredItem lazyListMeasuredItem;
        int size;
        int i17;
        int i18;
        float f5;
        int mainAxisSizeWithSpacings;
        int i19;
        LazyListMeasuredItem lazyListMeasuredItem2;
        List<LazyListMeasuredItem> listCreateItemsBeforeList;
        int size2;
        int i20;
        List<LazyListMeasuredItem> listCreateItemsAfterList;
        int size3;
        int i21;
        boolean z6;
        int i22;
        int iM9011constrainHeightK40F9xA;
        float f6;
        List<LazyListMeasuredItem> listCalculateItemsOffsets;
        int iM9012constrainWidthK40F9xA;
        List<LazyListMeasuredItem> list2;
        int i23;
        LazyListMeasuredItemProvider lazyListMeasuredItemProvider3;
        int i24;
        final boolean z7;
        int iM9011constrainHeightK40F9xA2;
        LazyListMeasuredItem lazyListMeasuredItem3;
        int index;
        LazyListMeasuredItem lazyListMeasuredItem4;
        int index2;
        final List<LazyListMeasuredItem> list3;
        Integer numValueOf;
        LazyListMeasuredItem lazyListMeasuredItem5;
        Integer numValueOf2;
        LazyListMeasuredItem lazyListMeasuredItem6;
        boolean z8;
        int iIntValue;
        int iIntValue2;
        Orientation orientation;
        LazyListMeasuredItem lazyListMeasuredItem7;
        LazyListMeasuredItem lazyListMeasuredItem8;
        long jM2216getMinSizeToFitDisappearingItemsYbymL2g;
        int i25;
        int i26;
        int size4;
        int i27;
        int i28;
        if (i3 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid beforeContentPadding");
        }
        if (i4 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid afterContentPadding");
        }
        int i29 = 3;
        if (i <= 0) {
            int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
            int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
            lazyLayoutItemAnimator.onMeasured(0, iM8997getMinWidthimpl, iM8996getMinHeightimpl, new ArrayList(), lazyListMeasuredItemProvider.getKeyIndexMap(), lazyListMeasuredItemProvider, z, z4, 1, z3, 0, 0, y22Var, graphicsContext);
            if (!z4) {
                long jM2216getMinSizeToFitDisappearingItemsYbymL2g2 = lazyLayoutItemAnimator.m2216getMinSizeToFitDisappearingItemsYbymL2g();
                if (!IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g2, IntSize.Companion.m9218getZeroYbymL2g())) {
                    iM8997getMinWidthimpl = ConstraintsKt.m9012constrainWidthK40F9xA(j, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g2 >> 32));
                    iM8996getMinHeightimpl = ConstraintsKt.m9011constrainHeightK40F9xA(j, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
            }
            return new LazyListMeasureResult(null, 0, false, 0.0f, dm3Var.invoke(Integer.valueOf(iM8997getMinWidthimpl), Integer.valueOf(iM8996getMinHeightimpl), new pf(i29)), 0.0f, false, y22Var, density, lazyListMeasuredItemProvider.m2168getChildConstraintsmsEJaDk(), kx2.b, -i3, i2 + i4, 0, z2, z ? Orientation.Vertical : Orientation.Horizontal, i4, i5, null);
        }
        int i30 = i6;
        if (i30 >= i) {
            i30 = i - 1;
            i9 = 0;
        } else {
            i9 = i7;
        }
        int iRound = Math.round(f);
        int i31 = i9 - iRound;
        if (i30 == 0 && i31 < 0) {
            iRound += i31;
            i31 = 0;
        }
        int i32 = iRound;
        fr frVar = new fr();
        int i33 = -i3;
        int i34 = (i5 < 0 ? i5 : 0) + i33;
        int mainAxisSizeWithSpacings2 = i31 + i34;
        int iMax = 0;
        while (mainAxisSizeWithSpacings2 < 0 && i30 > 0) {
            int i35 = i30 - 1;
            fr frVar2 = frVar;
            LazyListMeasuredItem lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default = LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, i35, 0L, 2, null);
            frVar2.add(0, lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default);
            iMax = Math.max(iMax, lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default.getCrossAxisSize());
            mainAxisSizeWithSpacings2 = lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default.getMainAxisSizeWithSpacings() + mainAxisSizeWithSpacings2;
            i30 = i35;
            frVar = frVar2;
            i34 = i34;
            i33 = i33;
        }
        int i36 = mainAxisSizeWithSpacings2;
        fr frVar3 = frVar;
        int i37 = i33;
        int i38 = i34;
        int i39 = iMax;
        if (i36 < i38) {
            i32 -= i38 - i36;
            i10 = i38;
        } else {
            i10 = i36;
        }
        int i40 = i32;
        int i41 = i10 - i38;
        int i42 = i2 + i4;
        int i43 = i42 < 0 ? 0 : i42;
        int i44 = -i41;
        int i45 = i30;
        int i46 = 0;
        boolean z9 = false;
        while (i46 < frVar3.size()) {
            if (i44 >= i43) {
                frVar3.remove(i46);
                j59 j59Var = j59.a;
                z9 = true;
            } else {
                i45++;
                int mainAxisSizeWithSpacings3 = ((LazyListMeasuredItem) frVar3.get(i46)).getMainAxisSizeWithSpacings() + i44;
                i46++;
                i44 = mainAxisSizeWithSpacings3;
            }
        }
        int i47 = i30;
        int i48 = i39;
        int mainAxisSizeWithSpacings4 = i44;
        boolean z10 = z9;
        int mainAxisSizeWithSpacings5 = i41;
        while (i45 < i && (mainAxisSizeWithSpacings4 < i43 || mainAxisSizeWithSpacings4 <= 0 || frVar3.isEmpty())) {
            int i49 = i43;
            int i50 = i45;
            int i51 = i47;
            int i52 = i48;
            LazyListMeasuredItem lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default2 = LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, i50, 0L, 2, null);
            mainAxisSizeWithSpacings4 += lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default2.getMainAxisSizeWithSpacings();
            if (mainAxisSizeWithSpacings4 > i38 || i50 == i - 1) {
                int iMax2 = Math.max(i52, lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default2.getCrossAxisSize());
                frVar3.addLast(lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default2);
                i28 = i51;
                i52 = iMax2;
            } else {
                i28 = i50 + 1;
                mainAxisSizeWithSpacings5 -= lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default2.getMainAxisSizeWithSpacings();
                j59 j59Var2 = j59.a;
                z10 = true;
            }
            int i53 = i50 + 1;
            int i54 = i28;
            i45 = i53;
            i48 = i52;
            i47 = i54;
            i43 = i49;
        }
        int i55 = i47;
        int iMax3 = i48;
        int i56 = i45;
        if (mainAxisSizeWithSpacings4 < i2) {
            int i57 = i2 - mainAxisSizeWithSpacings4;
            int i58 = mainAxisSizeWithSpacings4 + i57;
            i12 = i55;
            int mainAxisSizeWithSpacings6 = mainAxisSizeWithSpacings5 - i57;
            while (mainAxisSizeWithSpacings6 < i3 && i12 > 0) {
                i12--;
                int i59 = mainAxisSizeWithSpacings6;
                LazyListMeasuredItem lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default3 = LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, i12, 0L, 2, null);
                frVar3.add(0, lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default3);
                iMax3 = Math.max(iMax3, lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default3.getCrossAxisSize());
                mainAxisSizeWithSpacings6 = lazyListMeasuredItemM2165getAndMeasure0kLqBqw$default3.getMainAxisSizeWithSpacings() + i59;
                i56 = i56;
                i57 = i57;
            }
            mainAxisSizeWithSpacings5 = mainAxisSizeWithSpacings6;
            int i60 = i57;
            i11 = i56;
            lazyListMeasuredItemProvider2 = lazyListMeasuredItemProvider;
            i14 = i40 + i60;
            if (mainAxisSizeWithSpacings5 < 0) {
                i14 += mainAxisSizeWithSpacings5;
                i15 = 0;
                i13 = i58 + mainAxisSizeWithSpacings5;
            } else {
                i13 = i58;
            }
            if (Integer.signum(Math.round(f)) == Integer.signum(i14) || Math.abs(Math.round(f)) < Math.abs(i14)) {
                f2 = f;
            } else {
                f2 = i14;
            }
            f3 = f - f2;
            f4 = 0.0f;
            if (z4 && i14 > i40 && f3 <= 0.0f) {
                f4 = (i14 - i40) + f3;
            }
            if (i15 < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("negative currentFirstItemScrollOffset");
            }
            i16 = -i15;
            lazyListMeasuredItem = (LazyListMeasuredItem) frVar3.first();
            if (i3 <= 0 || i5 < 0) {
                size = frVar3.size();
                i17 = i16;
                i18 = 0;
                while (true) {
                    if (i18 < size) {
                        f5 = f2;
                        mainAxisSizeWithSpacings = ((LazyListMeasuredItem) frVar3.get(i18)).getMainAxisSizeWithSpacings();
                        if (i15 != 0 || mainAxisSizeWithSpacings > i15 || i18 == frVar3.size() - 1) {
                            break;
                        }
                        i15 -= mainAxisSizeWithSpacings;
                        i18++;
                        lazyListMeasuredItem = (LazyListMeasuredItem) frVar3.get(i18);
                        f2 = f5;
                    }
                }
                i19 = i15;
                lazyListMeasuredItem2 = lazyListMeasuredItem;
                listCreateItemsBeforeList = createItemsBeforeList(i12, lazyListMeasuredItemProvider2, i8, list);
                size2 = listCreateItemsBeforeList.size();
                for (i20 = 0; i20 < size2; i20++) {
                    iMax3 = Math.max(iMax3, listCreateItemsBeforeList.get(i20).getCrossAxisSize());
                }
                listCreateItemsAfterList = createItemsAfterList(frVar3, lazyListMeasuredItemProvider2, i, i8, list);
                size3 = listCreateItemsAfterList.size();
                for (i21 = 0; i21 < size3; i21++) {
                    iMax3 = Math.max(iMax3, listCreateItemsAfterList.get(i21).getCrossAxisSize());
                }
                if (!aa4.e(lazyListMeasuredItem2, frVar3.first()) && listCreateItemsBeforeList.isEmpty() && listCreateItemsAfterList.isEmpty()) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z) {
                    i22 = iMax3;
                } else {
                    i22 = i13;
                }
                int iM9012constrainWidthK40F9xA2 = ConstraintsKt.m9012constrainWidthK40F9xA(j, i22);
                if (z) {
                    iMax3 = i13;
                }
                iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, iMax3);
                f6 = f5;
                listCalculateItemsOffsets = calculateItemsOffsets(frVar3, listCreateItemsBeforeList, listCreateItemsAfterList, iM9012constrainWidthK40F9xA2, iM9011constrainHeightK40F9xA, i13, i2, i17, z, vertical, horizontal, z2, density);
                iM9012constrainWidthK40F9xA = iM9012constrainWidthK40F9xA2;
                if (ComposeFoundationFlags.isSkipItemPlacementAnimationFixEnabled || z5) {
                    list2 = listCalculateItemsOffsets;
                    i23 = i13;
                    lazyLayoutItemAnimator.onMeasured((int) f6, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, list2, lazyListMeasuredItemProvider.getKeyIndexMap(), lazyListMeasuredItemProvider, z, z4, 1, z3, i19, i23, y22Var, graphicsContext);
                    lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider;
                    i24 = i19;
                    z7 = z4;
                } else {
                    lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider;
                    z7 = z4;
                    list2 = listCalculateItemsOffsets;
                    i23 = i13;
                    i24 = i19;
                }
                if (z7) {
                    iM9011constrainHeightK40F9xA2 = iM9011constrainHeightK40F9xA;
                } else {
                    jM2216getMinSizeToFitDisappearingItemsYbymL2g = lazyLayoutItemAnimator.m2216getMinSizeToFitDisappearingItemsYbymL2g();
                    if (IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g, IntSize.Companion.m9218getZeroYbymL2g())) {
                        iM9011constrainHeightK40F9xA2 = iM9011constrainHeightK40F9xA;
                    } else {
                        if (z) {
                            i25 = iM9011constrainHeightK40F9xA;
                        } else {
                            i25 = iM9012constrainWidthK40F9xA;
                        }
                        iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(iM9012constrainWidthK40F9xA, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g >> 32)));
                        iM9011constrainHeightK40F9xA2 = ConstraintsKt.m9011constrainHeightK40F9xA(j, Math.max(iM9011constrainHeightK40F9xA, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
                        if (z) {
                            i26 = iM9011constrainHeightK40F9xA2;
                        } else {
                            i26 = iM9012constrainWidthK40F9xA;
                        }
                        if (i26 != i25) {
                            size4 = list2.size();
                            for (i27 = 0; i27 < size4; i27++) {
                                list2.get(i27).updateMainAxisLayoutSize(i26);
                            }
                        }
                    }
                }
                int i61 = iM9012constrainWidthK40F9xA;
                lazyListMeasuredItem3 = (LazyListMeasuredItem) frVar3.d();
                if (lazyListMeasuredItem3 != null) {
                    index = lazyListMeasuredItem3.getIndex();
                } else {
                    index = 0;
                }
                lazyListMeasuredItem4 = (LazyListMeasuredItem) frVar3.j();
                if (lazyListMeasuredItem4 != null) {
                    index2 = lazyListMeasuredItem4.getIndex();
                } else {
                    index2 = 0;
                }
                list3 = list2;
                final List listApplyStickyItems = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsPlacement, index, index2, list3, lazyListMeasuredItemProvider3.getHeaderIndexes(), i3, i4, i61, iM9011constrainHeightK40F9xA2, new xs(lazyListMeasuredItemProvider3, 3));
                numValueOf = null;
                if (z6) {
                    lazyListMeasuredItem8 = (LazyListMeasuredItem) qn1.V(list3);
                    if (lazyListMeasuredItem8 != null) {
                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem8.getIndex());
                    } else {
                        numValueOf2 = null;
                    }
                } else {
                    lazyListMeasuredItem5 = (LazyListMeasuredItem) frVar3.d();
                    if (lazyListMeasuredItem5 != null) {
                        numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.getIndex());
                    } else {
                        numValueOf2 = null;
                    }
                }
                if (z6) {
                    lazyListMeasuredItem7 = (LazyListMeasuredItem) qn1.c0(list3);
                    if (lazyListMeasuredItem7 != null) {
                        numValueOf = Integer.valueOf(lazyListMeasuredItem7.getIndex());
                    }
                } else {
                    lazyListMeasuredItem6 = (LazyListMeasuredItem) frVar3.j();
                    if (lazyListMeasuredItem6 != null) {
                        numValueOf = Integer.valueOf(lazyListMeasuredItem6.getIndex());
                    }
                }
                if (i11 >= i || i23 > i2) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                MeasureResult measureResultInvoke = dm3Var.invoke(Integer.valueOf(i61), Integer.valueOf(iM9011constrainHeightK40F9xA2), new nl3() { // from class: kn4
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return LazyListMeasureKt.measureLazyList_pIk1_oM$lambda$8(mutableState, list3, listApplyStickyItems, z7, (Placeable.PlacementScope) obj);
                    }
                });
                if (numValueOf2 != null) {
                    iIntValue = numValueOf2.intValue();
                } else {
                    iIntValue = 0;
                }
                if (numValueOf != null) {
                    iIntValue2 = numValueOf.intValue();
                } else {
                    iIntValue2 = 0;
                }
                List listUpdatedVisibleItems = LazyLayoutMeasuredItemKt.updatedVisibleItems(iIntValue, iIntValue2, list3, listApplyStickyItems);
                if (z) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                return new LazyListMeasureResult(lazyListMeasuredItem2, i24, z8, f6, measureResultInvoke, f4, z10, y22Var, density, lazyListMeasuredItemProvider3.m2168getChildConstraintsmsEJaDk(), listUpdatedVisibleItems, i37, i42, i, z2, orientation, i4, i5, null);
            }
            i17 = i16;
            f5 = f2;
            i19 = i15;
            lazyListMeasuredItem2 = lazyListMeasuredItem;
            listCreateItemsBeforeList = createItemsBeforeList(i12, lazyListMeasuredItemProvider2, i8, list);
            size2 = listCreateItemsBeforeList.size();
            while (i20 < size2) {
                iMax3 = Math.max(iMax3, listCreateItemsBeforeList.get(i20).getCrossAxisSize());
            }
            listCreateItemsAfterList = createItemsAfterList(frVar3, lazyListMeasuredItemProvider2, i, i8, list);
            size3 = listCreateItemsAfterList.size();
            while (i21 < size3) {
                iMax3 = Math.max(iMax3, listCreateItemsAfterList.get(i21).getCrossAxisSize());
            }
            if (!aa4.e(lazyListMeasuredItem2, frVar3.first())) {
                z6 = false;
            } else {
                z6 = false;
            }
            if (z) {
                i22 = iMax3;
            } else {
                i22 = i13;
            }
            int iM9012constrainWidthK40F9xA3 = ConstraintsKt.m9012constrainWidthK40F9xA(j, i22);
            if (z) {
                iMax3 = i13;
            }
            iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, iMax3);
            f6 = f5;
            listCalculateItemsOffsets = calculateItemsOffsets(frVar3, listCreateItemsBeforeList, listCreateItemsAfterList, iM9012constrainWidthK40F9xA3, iM9011constrainHeightK40F9xA, i13, i2, i17, z, vertical, horizontal, z2, density);
            iM9012constrainWidthK40F9xA = iM9012constrainWidthK40F9xA3;
            if (ComposeFoundationFlags.isSkipItemPlacementAnimationFixEnabled) {
                list2 = listCalculateItemsOffsets;
                i23 = i13;
                lazyLayoutItemAnimator.onMeasured((int) f6, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, list2, lazyListMeasuredItemProvider.getKeyIndexMap(), lazyListMeasuredItemProvider, z, z4, 1, z3, i19, i23, y22Var, graphicsContext);
                lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider;
                i24 = i19;
                z7 = z4;
            } else {
                list2 = listCalculateItemsOffsets;
                i23 = i13;
                lazyLayoutItemAnimator.onMeasured((int) f6, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, list2, lazyListMeasuredItemProvider.getKeyIndexMap(), lazyListMeasuredItemProvider, z, z4, 1, z3, i19, i23, y22Var, graphicsContext);
                lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider;
                i24 = i19;
                z7 = z4;
            }
            if (z7) {
                jM2216getMinSizeToFitDisappearingItemsYbymL2g = lazyLayoutItemAnimator.m2216getMinSizeToFitDisappearingItemsYbymL2g();
                if (IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g, IntSize.Companion.m9218getZeroYbymL2g())) {
                    if (z) {
                        i25 = iM9011constrainHeightK40F9xA;
                    } else {
                        i25 = iM9012constrainWidthK40F9xA;
                    }
                    iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(iM9012constrainWidthK40F9xA, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g >> 32)));
                    iM9011constrainHeightK40F9xA2 = ConstraintsKt.m9011constrainHeightK40F9xA(j, Math.max(iM9011constrainHeightK40F9xA, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
                    if (z) {
                        i26 = iM9011constrainHeightK40F9xA2;
                    } else {
                        i26 = iM9012constrainWidthK40F9xA;
                    }
                    if (i26 != i25) {
                        size4 = list2.size();
                        while (i27 < size4) {
                            list2.get(i27).updateMainAxisLayoutSize(i26);
                        }
                    }
                } else {
                    iM9011constrainHeightK40F9xA2 = iM9011constrainHeightK40F9xA;
                }
            } else {
                iM9011constrainHeightK40F9xA2 = iM9011constrainHeightK40F9xA;
            }
            int i62 = iM9012constrainWidthK40F9xA;
            lazyListMeasuredItem3 = (LazyListMeasuredItem) frVar3.d();
            if (lazyListMeasuredItem3 != null) {
                index = lazyListMeasuredItem3.getIndex();
            } else {
                index = 0;
            }
            lazyListMeasuredItem4 = (LazyListMeasuredItem) frVar3.j();
            if (lazyListMeasuredItem4 != null) {
                index2 = lazyListMeasuredItem4.getIndex();
            } else {
                index2 = 0;
            }
            list3 = list2;
            final List listApplyStickyItems2 = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsPlacement, index, index2, list3, lazyListMeasuredItemProvider3.getHeaderIndexes(), i3, i4, i62, iM9011constrainHeightK40F9xA2, new xs(lazyListMeasuredItemProvider3, 3));
            numValueOf = null;
            if (z6) {
                lazyListMeasuredItem8 = (LazyListMeasuredItem) qn1.V(list3);
                if (lazyListMeasuredItem8 != null) {
                    numValueOf2 = Integer.valueOf(lazyListMeasuredItem8.getIndex());
                } else {
                    numValueOf2 = null;
                }
            } else {
                lazyListMeasuredItem5 = (LazyListMeasuredItem) frVar3.d();
                if (lazyListMeasuredItem5 != null) {
                    numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.getIndex());
                } else {
                    numValueOf2 = null;
                }
            }
            if (z6) {
                lazyListMeasuredItem7 = (LazyListMeasuredItem) qn1.c0(list3);
                if (lazyListMeasuredItem7 != null) {
                    numValueOf = Integer.valueOf(lazyListMeasuredItem7.getIndex());
                }
            } else {
                lazyListMeasuredItem6 = (LazyListMeasuredItem) frVar3.j();
                if (lazyListMeasuredItem6 != null) {
                    numValueOf = Integer.valueOf(lazyListMeasuredItem6.getIndex());
                }
            }
            if (i11 >= i) {
                z8 = true;
            } else {
                z8 = true;
            }
            MeasureResult measureResultInvoke2 = dm3Var.invoke(Integer.valueOf(i62), Integer.valueOf(iM9011constrainHeightK40F9xA2), new nl3() { // from class: kn4
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return LazyListMeasureKt.measureLazyList_pIk1_oM$lambda$8(mutableState, list3, listApplyStickyItems2, z7, (Placeable.PlacementScope) obj);
                }
            });
            if (numValueOf2 != null) {
                iIntValue = numValueOf2.intValue();
            } else {
                iIntValue = 0;
            }
            if (numValueOf != null) {
                iIntValue2 = numValueOf.intValue();
            } else {
                iIntValue2 = 0;
            }
            List listUpdatedVisibleItems2 = LazyLayoutMeasuredItemKt.updatedVisibleItems(iIntValue, iIntValue2, list3, listApplyStickyItems2);
            if (z) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            return new LazyListMeasureResult(lazyListMeasuredItem2, i24, z8, f6, measureResultInvoke2, f4, z10, y22Var, density, lazyListMeasuredItemProvider3.m2168getChildConstraintsmsEJaDk(), listUpdatedVisibleItems2, i37, i42, i, z2, orientation, i4, i5, null);
        }
        i11 = i56;
        lazyListMeasuredItemProvider2 = lazyListMeasuredItemProvider;
        i12 = i55;
        i13 = mainAxisSizeWithSpacings4;
        i14 = i40;
        i15 = mainAxisSizeWithSpacings5;
        if (Integer.signum(Math.round(f)) == Integer.signum(i14)) {
            f2 = f;
        } else {
            f2 = f;
        }
        f3 = f - f2;
        f4 = 0.0f;
        if (z4) {
            f4 = (i14 - i40) + f3;
        }
        if (i15 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("negative currentFirstItemScrollOffset");
        }
        i16 = -i15;
        lazyListMeasuredItem = (LazyListMeasuredItem) frVar3.first();
        if (i3 <= 0) {
            size = frVar3.size();
            i17 = i16;
            i18 = 0;
            while (true) {
                if (i18 < size) {
                    f5 = f2;
                    break;
                }
                f5 = f2;
                mainAxisSizeWithSpacings = ((LazyListMeasuredItem) frVar3.get(i18)).getMainAxisSizeWithSpacings();
                if (i15 != 0) {
                    break;
                }
                break;
                i15 -= mainAxisSizeWithSpacings;
                i18++;
                lazyListMeasuredItem = (LazyListMeasuredItem) frVar3.get(i18);
                f2 = f5;
            }
        } else {
            size = frVar3.size();
            i17 = i16;
            i18 = 0;
            while (true) {
                if (i18 < size) {
                    f5 = f2;
                    break;
                }
                f5 = f2;
                mainAxisSizeWithSpacings = ((LazyListMeasuredItem) frVar3.get(i18)).getMainAxisSizeWithSpacings();
                if (i15 != 0) {
                    break;
                    break;
                }
                break;
                break;
                i15 -= mainAxisSizeWithSpacings;
                i18++;
                lazyListMeasuredItem = (LazyListMeasuredItem) frVar3.get(i18);
                f2 = f5;
            }
        }
        i19 = i15;
        lazyListMeasuredItem2 = lazyListMeasuredItem;
        listCreateItemsBeforeList = createItemsBeforeList(i12, lazyListMeasuredItemProvider2, i8, list);
        size2 = listCreateItemsBeforeList.size();
        while (i20 < size2) {
            iMax3 = Math.max(iMax3, listCreateItemsBeforeList.get(i20).getCrossAxisSize());
        }
        listCreateItemsAfterList = createItemsAfterList(frVar3, lazyListMeasuredItemProvider2, i, i8, list);
        size3 = listCreateItemsAfterList.size();
        while (i21 < size3) {
            iMax3 = Math.max(iMax3, listCreateItemsAfterList.get(i21).getCrossAxisSize());
        }
        if (!aa4.e(lazyListMeasuredItem2, frVar3.first())) {
            z6 = false;
        } else {
            z6 = false;
        }
        if (z) {
            i22 = iMax3;
        } else {
            i22 = i13;
        }
        int iM9012constrainWidthK40F9xA4 = ConstraintsKt.m9012constrainWidthK40F9xA(j, i22);
        if (z) {
            iMax3 = i13;
        }
        iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, iMax3);
        f6 = f5;
        listCalculateItemsOffsets = calculateItemsOffsets(frVar3, listCreateItemsBeforeList, listCreateItemsAfterList, iM9012constrainWidthK40F9xA4, iM9011constrainHeightK40F9xA, i13, i2, i17, z, vertical, horizontal, z2, density);
        iM9012constrainWidthK40F9xA = iM9012constrainWidthK40F9xA4;
        if (ComposeFoundationFlags.isSkipItemPlacementAnimationFixEnabled) {
            list2 = listCalculateItemsOffsets;
            i23 = i13;
            lazyLayoutItemAnimator.onMeasured((int) f6, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, list2, lazyListMeasuredItemProvider.getKeyIndexMap(), lazyListMeasuredItemProvider, z, z4, 1, z3, i19, i23, y22Var, graphicsContext);
            lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider;
            i24 = i19;
            z7 = z4;
        } else {
            list2 = listCalculateItemsOffsets;
            i23 = i13;
            lazyLayoutItemAnimator.onMeasured((int) f6, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, list2, lazyListMeasuredItemProvider.getKeyIndexMap(), lazyListMeasuredItemProvider, z, z4, 1, z3, i19, i23, y22Var, graphicsContext);
            lazyListMeasuredItemProvider3 = lazyListMeasuredItemProvider;
            i24 = i19;
            z7 = z4;
        }
        if (z7) {
            jM2216getMinSizeToFitDisappearingItemsYbymL2g = lazyLayoutItemAnimator.m2216getMinSizeToFitDisappearingItemsYbymL2g();
            if (IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g, IntSize.Companion.m9218getZeroYbymL2g())) {
                if (z) {
                    i25 = iM9011constrainHeightK40F9xA;
                } else {
                    i25 = iM9012constrainWidthK40F9xA;
                }
                iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(iM9012constrainWidthK40F9xA, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g >> 32)));
                iM9011constrainHeightK40F9xA2 = ConstraintsKt.m9011constrainHeightK40F9xA(j, Math.max(iM9011constrainHeightK40F9xA, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
                if (z) {
                    i26 = iM9011constrainHeightK40F9xA2;
                } else {
                    i26 = iM9012constrainWidthK40F9xA;
                }
                if (i26 != i25) {
                    size4 = list2.size();
                    while (i27 < size4) {
                        list2.get(i27).updateMainAxisLayoutSize(i26);
                    }
                }
            } else {
                iM9011constrainHeightK40F9xA2 = iM9011constrainHeightK40F9xA;
            }
        } else {
            iM9011constrainHeightK40F9xA2 = iM9011constrainHeightK40F9xA;
        }
        int i63 = iM9012constrainWidthK40F9xA;
        lazyListMeasuredItem3 = (LazyListMeasuredItem) frVar3.d();
        if (lazyListMeasuredItem3 != null) {
            index = lazyListMeasuredItem3.getIndex();
        } else {
            index = 0;
        }
        lazyListMeasuredItem4 = (LazyListMeasuredItem) frVar3.j();
        if (lazyListMeasuredItem4 != null) {
            index2 = lazyListMeasuredItem4.getIndex();
        } else {
            index2 = 0;
        }
        list3 = list2;
        final List listApplyStickyItems3 = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsPlacement, index, index2, list3, lazyListMeasuredItemProvider3.getHeaderIndexes(), i3, i4, i63, iM9011constrainHeightK40F9xA2, new xs(lazyListMeasuredItemProvider3, 3));
        numValueOf = null;
        if (z6) {
            lazyListMeasuredItem8 = (LazyListMeasuredItem) qn1.V(list3);
            if (lazyListMeasuredItem8 != null) {
                numValueOf2 = Integer.valueOf(lazyListMeasuredItem8.getIndex());
            } else {
                numValueOf2 = null;
            }
        } else {
            lazyListMeasuredItem5 = (LazyListMeasuredItem) frVar3.d();
            if (lazyListMeasuredItem5 != null) {
                numValueOf2 = Integer.valueOf(lazyListMeasuredItem5.getIndex());
            } else {
                numValueOf2 = null;
            }
        }
        if (z6) {
            lazyListMeasuredItem7 = (LazyListMeasuredItem) qn1.c0(list3);
            if (lazyListMeasuredItem7 != null) {
                numValueOf = Integer.valueOf(lazyListMeasuredItem7.getIndex());
            }
        } else {
            lazyListMeasuredItem6 = (LazyListMeasuredItem) frVar3.j();
            if (lazyListMeasuredItem6 != null) {
                numValueOf = Integer.valueOf(lazyListMeasuredItem6.getIndex());
            }
        }
        if (i11 >= i) {
            z8 = true;
        } else {
            z8 = true;
        }
        MeasureResult measureResultInvoke3 = dm3Var.invoke(Integer.valueOf(i63), Integer.valueOf(iM9011constrainHeightK40F9xA2), new nl3() { // from class: kn4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LazyListMeasureKt.measureLazyList_pIk1_oM$lambda$8(mutableState, list3, listApplyStickyItems3, z7, (Placeable.PlacementScope) obj);
            }
        });
        if (numValueOf2 != null) {
            iIntValue = numValueOf2.intValue();
        } else {
            iIntValue = 0;
        }
        if (numValueOf != null) {
            iIntValue2 = numValueOf.intValue();
        } else {
            iIntValue2 = 0;
        }
        List listUpdatedVisibleItems3 = LazyLayoutMeasuredItemKt.updatedVisibleItems(iIntValue, iIntValue2, list3, listApplyStickyItems3);
        if (z) {
            orientation = Orientation.Vertical;
        } else {
            orientation = Orientation.Horizontal;
        }
        return new LazyListMeasureResult(lazyListMeasuredItem2, i24, z8, f6, measureResultInvoke3, f4, z10, y22Var, density, lazyListMeasuredItemProvider3.m2168getChildConstraintsmsEJaDk(), listUpdatedVisibleItems3, i37, i42, i, z2, orientation, i4, i5, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureLazyList_pIk1_oM$lambda$2(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListMeasuredItem measureLazyList_pIk1_oM$lambda$7(LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i) {
        return LazyListMeasuredItemProvider.m2165getAndMeasure0kLqBqw$default(lazyListMeasuredItemProvider, i, 0L, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureLazyList_pIk1_oM$lambda$8(MutableState mutableState, final List list, final List list2, final boolean z, Placeable.PlacementScope placementScope) {
        placementScope.withMotionFrameOfReferencePlacement(new nl3() { // from class: jn4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LazyListMeasureKt.measureLazyList_pIk1_oM$lambda$8$0(list, list2, z, (Placeable.PlacementScope) obj);
            }
        });
        ObservableScopeInvalidator.m2232attachToScopeimpl(mutableState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureLazyList_pIk1_oM$lambda$8$0(List list, List list2, boolean z, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((LazyListMeasuredItem) list.get(i)).place(placementScope, z);
        }
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((LazyListMeasuredItem) list2.get(i2)).place(placementScope, z);
        }
        return j59.a;
    }
}
