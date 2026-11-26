package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureKt;
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
import defpackage.ag;
import defpackage.am4;
import defpackage.b36;
import defpackage.bm4;
import defpackage.dm3;
import defpackage.fr;
import defpackage.j59;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.ng;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.ty2;
import defpackage.w74;
import defpackage.y22;
import defpackage.y74;
import defpackage.yr;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridMeasureKt {
    private static final <T> void addAllFromArray(List<T> list, T[] tArr) {
        for (T t : tArr) {
            list.add(t);
        }
    }

    private static final List<LazyGridMeasuredItem> calculateExtraItems(List<Integer> list, LazyGridMeasuredItemProvider lazyGridMeasuredItemProvider, LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider, nl3<? super Integer, Boolean> nl3Var) {
        LazyGridMeasuredItemProvider lazyGridMeasuredItemProvider2;
        int size = list.size();
        ArrayList arrayList = null;
        int i = 0;
        while (i < size) {
            int iIntValue = list.get(i).intValue();
            if (nl3Var.invoke(Integer.valueOf(iIntValue)).booleanValue()) {
                int iSpanOf = lazyGridMeasuredLineProvider.spanOf(iIntValue);
                lazyGridMeasuredItemProvider2 = lazyGridMeasuredItemProvider;
                LazyGridMeasuredItem lazyGridMeasuredItemMo2166getAndMeasurehBUhpc = lazyGridMeasuredItemProvider2.mo2166getAndMeasurehBUhpc(iIntValue, 0, iSpanOf, lazyGridMeasuredLineProvider.m2192childConstraintsJhjzzOo$foundation(0, iSpanOf));
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lazyGridMeasuredItemMo2166getAndMeasurehBUhpc);
            } else {
                lazyGridMeasuredItemProvider2 = lazyGridMeasuredItemProvider;
            }
            i++;
            lazyGridMeasuredItemProvider = lazyGridMeasuredItemProvider2;
        }
        return arrayList == null ? kx2.b : arrayList;
    }

    private static final List<LazyGridMeasuredItem> calculateItemsOffsets(List<LazyGridMeasuredLine> list, List<LazyGridMeasuredItem> list2, List<LazyGridMeasuredItem> list3, int i, int i2, int i3, int i4, int i5, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z2, Density density) {
        int i6 = z ? i2 : i;
        boolean z3 = i3 < Math.min(i6, i4);
        if (z3 && i5 != 0) {
            InlineClassHelperKt.throwIllegalStateException("non-zero firstLineScrollOffset");
        }
        List<LazyGridMeasuredLine> list4 = list;
        int size = list4.size();
        int length = 0;
        for (int i7 = 0; i7 < size; i7++) {
            length += list.get(i7).getItems().length;
        }
        ArrayList arrayList = new ArrayList(length);
        if (z3) {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                InlineClassHelperKt.throwIllegalArgumentException("no items");
            }
            int size2 = list.size();
            int[] iArr = new int[size2];
            for (int i8 = 0; i8 < size2; i8++) {
                iArr[i8] = list.get(calculateItemsOffsets$reverseAware(i8, z2, size2)).getMainAxisSize();
            }
            int[] iArr2 = new int[size2];
            if (z) {
                if (vertical == null) {
                    throw ng.f("null verticalArrangement");
                }
                vertical.arrange(density, i6, iArr, iArr2);
            } else {
                if (horizontal == null) {
                    throw ng.f("null horizontalArrangement");
                }
                horizontal.arrange(density, i6, iArr, LayoutDirection.Ltr, iArr2);
            }
            y74 y74VarL = yr.L(iArr2);
            w74 w74VarL = y74VarL;
            if (z2) {
                w74VarL = kx6.l(y74VarL);
            }
            int i9 = w74VarL.b;
            int i10 = w74VarL.c;
            int i11 = w74VarL.d;
            if ((i11 > 0 && i9 <= i10) || (i11 < 0 && i10 <= i9)) {
                while (true) {
                    int mainAxisSize = iArr2[i9];
                    LazyGridMeasuredLine lazyGridMeasuredLine = list.get(calculateItemsOffsets$reverseAware(i9, z2, size2));
                    if (z2) {
                        mainAxisSize = (i6 - mainAxisSize) - lazyGridMeasuredLine.getMainAxisSize();
                    }
                    addAllFromArray(arrayList, lazyGridMeasuredLine.position(mainAxisSize, i, i2));
                    if (i9 == i10) {
                        break;
                    }
                    i9 += i11;
                }
            }
        } else {
            int size3 = list2.size() - 1;
            if (size3 >= 0) {
                int mainAxisSizeWithSpacings = i5;
                while (true) {
                    int i12 = size3 - 1;
                    LazyGridMeasuredItem lazyGridMeasuredItem = list2.get(size3);
                    mainAxisSizeWithSpacings -= lazyGridMeasuredItem.getMainAxisSizeWithSpacings();
                    lazyGridMeasuredItem.position(mainAxisSizeWithSpacings, 0, i, i2);
                    arrayList.add(lazyGridMeasuredItem);
                    if (i12 < 0) {
                        break;
                    }
                    size3 = i12;
                }
            }
            int size4 = list4.size();
            int mainAxisSizeWithSpacings2 = i5;
            for (int i13 = 0; i13 < size4; i13++) {
                LazyGridMeasuredLine lazyGridMeasuredLine2 = list.get(i13);
                addAllFromArray(arrayList, lazyGridMeasuredLine2.position(mainAxisSizeWithSpacings2, i, i2));
                mainAxisSizeWithSpacings2 += lazyGridMeasuredLine2.getMainAxisSizeWithSpacings();
            }
            int size5 = list3.size();
            for (int i14 = 0; i14 < size5; i14++) {
                LazyGridMeasuredItem lazyGridMeasuredItem2 = list3.get(i14);
                lazyGridMeasuredItem2.position(mainAxisSizeWithSpacings2, 0, i, i2);
                arrayList.add(lazyGridMeasuredItem2);
                mainAxisSizeWithSpacings2 += lazyGridMeasuredItem2.getMainAxisSizeWithSpacings();
            }
        }
        return arrayList;
    }

    private static final int calculateItemsOffsets$reverseAware(int i, boolean z, int i2) {
        return !z ? i : (i2 - i) - 1;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x009d  */
    private static final List<LazyGridMeasuredLine> linesRetainedForLookahead(int i, int i2, LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider, boolean z, List<LazyGridMeasuredLine> list, LazyGridLayoutInfo lazyGridLayoutInfo) {
        LazyGridItemInfo lazyGridItemInfo;
        int index;
        int iMin;
        ArrayList arrayList = null;
        if (z && lazyGridLayoutInfo != null && !lazyGridLayoutInfo.getVisibleItemsInfo().isEmpty()) {
            List<LazyGridItemInfo> visibleItemsInfo = lazyGridLayoutInfo.getVisibleItemsInfo();
            int size = visibleItemsInfo.size();
            while (true) {
                size--;
                if (-1 >= size) {
                    lazyGridItemInfo = null;
                    break;
                }
                if (visibleItemsInfo.get(size).getIndex() > i && (size == 0 || visibleItemsInfo.get(size - 1).getIndex() <= i)) {
                    lazyGridItemInfo = visibleItemsInfo.get(size);
                    break;
                }
            }
            LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) qn1.b0(lazyGridLayoutInfo.getVisibleItemsInfo());
            LazyGridMeasuredLine lazyGridMeasuredLine = (LazyGridMeasuredLine) qn1.c0(list);
            int index2 = lazyGridMeasuredLine != null ? lazyGridMeasuredLine.getIndex() + 1 : 0;
            if (lazyGridItemInfo != null && (index = lazyGridItemInfo.getIndex()) <= (iMin = Math.min(lazyGridItemInfo2.getIndex(), i2 - 1))) {
                while (true) {
                    if (arrayList != null) {
                        int size2 = arrayList.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 < size2) {
                                LazyGridMeasuredItem[] items = arrayList.get(i3).getItems();
                                int length = items.length;
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= length) {
                                        i3++;
                                    } else if (items[i4].getIndex() != index) {
                                        i4++;
                                    }
                                }
                            } else {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                LazyGridMeasuredLine andMeasure = lazyGridMeasuredLineProvider.getAndMeasure(index2);
                                index2++;
                                arrayList.add(andMeasure);
                            }
                        }
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        LazyGridMeasuredLine andMeasure2 = lazyGridMeasuredLineProvider.getAndMeasure(index2);
                        index2++;
                        arrayList.add(andMeasure2);
                    }
                    if (index == iMin) {
                        break;
                    }
                    index++;
                }
            }
        }
        return arrayList == null ? kx2.b : arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0211  */
    /* JADX WARN: Code duplicated, block: B:117:0x0237  */
    /* JADX WARN: Code duplicated, block: B:200:0x0436  */
    /* JADX INFO: renamed from: measureLazyGrid-t1x4au0, reason: not valid java name */
    public static final LazyGridMeasureResult m2188measureLazyGridt1x4au0(int i, LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider, LazyGridMeasuredItemProvider lazyGridMeasuredItemProvider, int i2, int i3, int i4, int i5, int i6, int i7, float f, long j, boolean z, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z2, Density density, LazyLayoutItemAnimator<LazyGridMeasuredItem> lazyLayoutItemAnimator, int i8, List<Integer> list, boolean z3, boolean z4, LazyGridLayoutInfo lazyGridLayoutInfo, y22 y22Var, MutableState<j59> mutableState, GraphicsContext graphicsContext, nl3<? super Integer, ? extends List<b36<Integer, Constraints>>> nl3Var, nl3<? super Integer, Integer> nl3Var2, StickyItemsPlacement stickyItemsPlacement, dm3<? super Integer, ? super Integer, ? super nl3<? super Placeable.PlacementScope, j59>, ? extends MeasureResult> dm3Var) {
        int i9;
        ArrayList arrayList;
        int i10;
        int index;
        int index2;
        fr frVar;
        int i11;
        int i12;
        LazyGridMeasuredItem[] items;
        LazyGridMeasuredItem[] items2;
        int i13;
        int i14;
        int i15 = i;
        if (i3 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("negative beforeContentPadding");
        }
        if (i4 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("negative afterContentPadding");
        }
        kx2 kx2Var = kx2.b;
        int i16 = 1;
        if (i15 <= 0) {
            int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
            int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
            lazyLayoutItemAnimator.onMeasured(0, iM8997getMinWidthimpl, iM8996getMinHeightimpl, new ArrayList(), lazyGridMeasuredItemProvider.getKeyIndexMap(), lazyGridMeasuredItemProvider, z, z4, i8, z3, 0, 0, y22Var, graphicsContext);
            if (!z4) {
                long jM2216getMinSizeToFitDisappearingItemsYbymL2g = lazyLayoutItemAnimator.m2216getMinSizeToFitDisappearingItemsYbymL2g();
                if (!IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g, IntSize.Companion.m9218getZeroYbymL2g())) {
                    iM8997getMinWidthimpl = ConstraintsKt.m9012constrainWidthK40F9xA(j, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g >> 32));
                    iM8996getMinHeightimpl = ConstraintsKt.m9011constrainHeightK40F9xA(j, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
            }
            return new LazyGridMeasureResult(null, 0, false, 0.0f, dm3Var.invoke(Integer.valueOf(iM8997getMinWidthimpl), Integer.valueOf(iM8996getMinHeightimpl), new ty2(i16)), 0.0f, false, y22Var, density, i8, nl3Var, nl3Var2, kx2Var, -i3, i2 + i4, 0, z2, z ? Orientation.Vertical : Orientation.Horizontal, i4, i5);
        }
        int iRound = Math.round(f);
        int i17 = i7 - iRound;
        if (i6 == 0 && i17 < 0) {
            iRound += i17;
            i17 = 0;
        }
        fr frVar2 = new fr();
        int i18 = -i3;
        int i19 = (i5 < 0 ? i5 : 0) + i18;
        int mainAxisSizeWithSpacings = i17 + i19;
        int i20 = i6;
        while (mainAxisSizeWithSpacings < 0 && i20 > 0) {
            i20--;
            int i21 = iRound;
            LazyGridMeasuredLine andMeasure = lazyGridMeasuredLineProvider.getAndMeasure(i20);
            frVar2.add(0, andMeasure);
            mainAxisSizeWithSpacings += andMeasure.getMainAxisSizeWithSpacings();
            iRound = i21;
        }
        int i22 = iRound;
        if (mainAxisSizeWithSpacings < i19) {
            i9 = i22 - (i19 - mainAxisSizeWithSpacings);
            mainAxisSizeWithSpacings = i19;
        } else {
            i9 = i22;
        }
        int i23 = mainAxisSizeWithSpacings - i19;
        int i24 = i2 + i4;
        int i25 = i24 >= 0 ? i24 : 0;
        int i26 = i20;
        int i27 = i26;
        int mainAxisSizeWithSpacings2 = -i23;
        int i28 = 0;
        boolean z5 = false;
        while (i28 < frVar2.size()) {
            if (mainAxisSizeWithSpacings2 >= i25) {
                frVar2.remove(i28);
                j59 j59Var = j59.a;
                z5 = true;
            } else {
                i27++;
                int mainAxisSizeWithSpacings3 = ((LazyGridMeasuredLine) frVar2.get(i28)).getMainAxisSizeWithSpacings() + mainAxisSizeWithSpacings2;
                i28++;
                mainAxisSizeWithSpacings2 = mainAxisSizeWithSpacings3;
            }
        }
        boolean z6 = z5;
        int i29 = i27;
        int mainAxisSizeWithSpacings4 = i23;
        while (true) {
            arrayList = null;
            if (i29 >= i15 || (mainAxisSizeWithSpacings2 >= i25 && mainAxisSizeWithSpacings2 > 0 && !frVar2.isEmpty())) {
                break;
            }
            LazyGridMeasuredLine andMeasure2 = lazyGridMeasuredLineProvider.getAndMeasure(i29);
            if (andMeasure2.isEmpty()) {
                break;
            }
            mainAxisSizeWithSpacings2 = andMeasure2.getMainAxisSizeWithSpacings() + mainAxisSizeWithSpacings2;
            int i30 = i29;
            if (mainAxisSizeWithSpacings2 <= i19) {
                LazyGridMeasuredItem[] items3 = andMeasure2.getItems();
                items3.getClass();
                i13 = i19;
                if (items3.length == 0) {
                    ag.g("Array is empty.");
                    return null;
                }
                if (items3[items3.length - 1].getIndex() != i - 1) {
                    i14 = i30 + 1;
                    mainAxisSizeWithSpacings4 -= andMeasure2.getMainAxisSizeWithSpacings();
                    j59 j59Var2 = j59.a;
                    z6 = true;
                }
                i26 = i14;
                i19 = i13;
                i29 = i30 + 1;
                i15 = i;
            } else {
                i13 = i19;
            }
            frVar2.addLast(andMeasure2);
            i14 = i26;
            i26 = i14;
            i19 = i13;
            i29 = i30 + 1;
            i15 = i;
        }
        if (mainAxisSizeWithSpacings2 < i2) {
            int i31 = i2 - mainAxisSizeWithSpacings2;
            mainAxisSizeWithSpacings4 -= i31;
            mainAxisSizeWithSpacings2 += i31;
            int i32 = i26;
            while (mainAxisSizeWithSpacings4 < i3 && i32 > 0) {
                i32--;
                LazyGridMeasuredLine andMeasure3 = lazyGridMeasuredLineProvider.getAndMeasure(i32);
                frVar2.add(0, andMeasure3);
                mainAxisSizeWithSpacings4 += andMeasure3.getMainAxisSizeWithSpacings();
            }
            i10 = i31 + i9;
            if (mainAxisSizeWithSpacings4 < 0) {
                i10 += mainAxisSizeWithSpacings4;
                mainAxisSizeWithSpacings2 += mainAxisSizeWithSpacings4;
                mainAxisSizeWithSpacings4 = 0;
            }
        } else {
            i10 = i9;
        }
        float f2 = (Integer.signum(Math.round(f)) != Integer.signum(i10) || Math.abs(Math.round(f)) < Math.abs(i10)) ? f : i10;
        float f3 = f - f2;
        float f4 = 0.0f;
        if (z4 && i10 > i9 && f3 <= 0.0f) {
            f4 = (i10 - i9) + f3;
        }
        float f5 = f4;
        if (mainAxisSizeWithSpacings4 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("negative initial offset");
        }
        int i33 = -mainAxisSizeWithSpacings4;
        LazyGridMeasuredLine lazyGridMeasuredLine = (LazyGridMeasuredLine) frVar2.d();
        if (lazyGridMeasuredLine == null || (items2 = lazyGridMeasuredLine.getItems()) == null) {
            index = 0;
        } else {
            LazyGridMeasuredItem lazyGridMeasuredItem = items2.length == 0 ? null : items2[0];
            if (lazyGridMeasuredItem != null) {
                index = lazyGridMeasuredItem.getIndex();
            } else {
                index = 0;
            }
        }
        LazyGridMeasuredLine lazyGridMeasuredLine2 = (LazyGridMeasuredLine) frVar2.j();
        if (lazyGridMeasuredLine2 == null || (items = lazyGridMeasuredLine2.getItems()) == null) {
            index2 = 0;
        } else {
            LazyGridMeasuredItem lazyGridMeasuredItem2 = items.length == 0 ? null : items[items.length - 1];
            if (lazyGridMeasuredItem2 != null) {
                index2 = lazyGridMeasuredItem2.getIndex();
            } else {
                index2 = 0;
            }
        }
        List<Integer> list2 = list;
        int size = list2.size();
        int i34 = index2;
        List list3 = null;
        int i35 = 0;
        while (i35 < size) {
            int i36 = i35;
            int iIntValue = list.get(i35).intValue();
            if (iIntValue >= 0 && iIntValue < index) {
                int iSpanOf = lazyGridMeasuredLineProvider.spanOf(iIntValue);
                LazyGridMeasuredItem lazyGridMeasuredItemMo2166getAndMeasurehBUhpc = lazyGridMeasuredItemProvider.mo2166getAndMeasurehBUhpc(iIntValue, 0, iSpanOf, lazyGridMeasuredLineProvider.m2192childConstraintsJhjzzOo$foundation(0, iSpanOf));
                List arrayList2 = list3 == null ? new ArrayList() : list3;
                arrayList2.add(lazyGridMeasuredItemMo2166getAndMeasurehBUhpc);
                list3 = arrayList2;
            }
            i35 = i36 + 1;
            index = index;
        }
        int i37 = index;
        if (list3 == null) {
            list3 = kx2Var;
        }
        List<LazyGridMeasuredLine> listLinesRetainedForLookahead = linesRetainedForLookahead(i34, i, lazyGridMeasuredLineProvider, z4, frVar2, lazyGridLayoutInfo);
        int i38 = i;
        LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider2 = lazyGridMeasuredLineProvider;
        int size2 = list2.size();
        int i39 = 0;
        while (i39 < size2) {
            int i40 = size2;
            int iIntValue2 = list.get(i39).intValue();
            int i41 = i39;
            if (i34 + 1 <= iIntValue2 && iIntValue2 < i38) {
                if (z4) {
                    int size3 = listLinesRetainedForLookahead.size();
                    int i42 = 0;
                    while (true) {
                        if (i42 < size3) {
                            int i43 = i42;
                            LazyGridMeasuredItem[] items4 = listLinesRetainedForLookahead.get(i42).getItems();
                            int i44 = size3;
                            int length = items4.length;
                            int i45 = 0;
                            while (true) {
                                if (i45 < length) {
                                    int i46 = i45;
                                    if (items4[i45].getIndex() != iIntValue2) {
                                        i45 = i46 + 1;
                                    }
                                } else {
                                    i42 = i43 + 1;
                                    size3 = i44;
                                }
                            }
                        }
                    }
                }
                int iSpanOf2 = lazyGridMeasuredLineProvider2.spanOf(iIntValue2);
                LazyGridMeasuredItem lazyGridMeasuredItemMo2166getAndMeasurehBUhpc2 = lazyGridMeasuredItemProvider.mo2166getAndMeasurehBUhpc(iIntValue2, 0, iSpanOf2, lazyGridMeasuredLineProvider2.m2192childConstraintsJhjzzOo$foundation(0, iSpanOf2));
                ArrayList arrayList3 = arrayList == null ? new ArrayList() : arrayList;
                arrayList3.add(lazyGridMeasuredItemMo2166getAndMeasurehBUhpc2);
                arrayList = arrayList3;
            }
            i39 = i41 + 1;
            i38 = i;
            lazyGridMeasuredLineProvider2 = lazyGridMeasuredLineProvider;
            size2 = i40;
            frVar2 = frVar2;
            listLinesRetainedForLookahead = listLinesRetainedForLookahead;
        }
        fr frVar3 = frVar2;
        List<LazyGridMeasuredLine> list4 = listLinesRetainedForLookahead;
        List list5 = arrayList == null ? kx2Var : arrayList;
        if (i3 > 0 || i5 < 0) {
            int size4 = frVar3.size();
            int i47 = 0;
            fr frVar4 = frVar3;
            while (true) {
                frVar = frVar4;
                if (i47 >= size4) {
                    break;
                }
                int mainAxisSizeWithSpacings5 = ((LazyGridMeasuredLine) frVar.get(i47)).getMainAxisSizeWithSpacings();
                if (mainAxisSizeWithSpacings4 == 0 || mainAxisSizeWithSpacings5 > mainAxisSizeWithSpacings4 || i47 == frVar.size() - 1) {
                    break;
                }
                mainAxisSizeWithSpacings4 -= mainAxisSizeWithSpacings5;
                i47++;
                lazyGridMeasuredLine = (LazyGridMeasuredLine) frVar.get(i47);
                frVar4 = frVar;
            }
        } else {
            frVar = frVar3;
        }
        int i48 = mainAxisSizeWithSpacings4;
        LazyGridMeasuredLine lazyGridMeasuredLine3 = lazyGridMeasuredLine;
        int iM8995getMaxWidthimpl = z ? Constraints.m8995getMaxWidthimpl(j) : ConstraintsKt.m9012constrainWidthK40F9xA(j, mainAxisSizeWithSpacings2);
        int iM9011constrainHeightK40F9xA = z ? ConstraintsKt.m9011constrainHeightK40F9xA(j, mainAxisSizeWithSpacings2) : Constraints.m8994getMaxHeightimpl(j);
        List listH0 = frVar;
        if (!list4.isEmpty()) {
            listH0 = qn1.h0(list4, frVar);
        }
        List list6 = listH0;
        int i49 = iM9011constrainHeightK40F9xA;
        int i50 = mainAxisSizeWithSpacings2;
        float f6 = f2;
        List<LazyGridMeasuredItem> listCalculateItemsOffsets = calculateItemsOffsets(list6, list3, list5, iM8995getMaxWidthimpl, i49, i50, i2, i33, z, vertical, horizontal, z2, density);
        lazyLayoutItemAnimator.onMeasured((int) f6, iM8995getMaxWidthimpl, i49, listCalculateItemsOffsets, lazyGridMeasuredItemProvider.getKeyIndexMap(), lazyGridMeasuredItemProvider, z, z4, i8, z3, i48, i50, y22Var, graphicsContext);
        if (z4) {
            i11 = iM8995getMaxWidthimpl;
            i12 = i49;
        } else {
            long jM2216getMinSizeToFitDisappearingItemsYbymL2g2 = lazyLayoutItemAnimator.m2216getMinSizeToFitDisappearingItemsYbymL2g();
            if (IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g2, IntSize.Companion.m9218getZeroYbymL2g())) {
                i11 = iM8995getMaxWidthimpl;
                i12 = i49;
            } else {
                int i51 = z ? i49 : iM8995getMaxWidthimpl;
                int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(iM8995getMaxWidthimpl, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g2 >> 32)));
                int iM9011constrainHeightK40F9xA2 = ConstraintsKt.m9011constrainHeightK40F9xA(j, Math.max(i49, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
                int i52 = z ? iM9011constrainHeightK40F9xA2 : iM9012constrainWidthK40F9xA;
                if (i52 != i51) {
                    int size5 = listCalculateItemsOffsets.size();
                    for (int i53 = 0; i53 < size5; i53++) {
                        listCalculateItemsOffsets.get(i53).updateMainAxisLayoutSize(i52);
                    }
                }
                i12 = iM9011constrainHeightK40F9xA2;
                i11 = iM9012constrainWidthK40F9xA;
            }
        }
        List listApplyStickyItems = LazyLayoutStickyItemsKt.applyStickyItems(stickyItemsPlacement, i37, i34, listCalculateItemsOffsets, lazyGridMeasuredItemProvider.getHeaderIndices(), i3, i4, i11, i12, new am4(0, lazyGridMeasuredLineProvider, lazyGridMeasuredItemProvider));
        return new LazyGridMeasureResult(lazyGridMeasuredLine3, i48, i34 != i + (-1) || i50 > i2, f6, dm3Var.invoke(Integer.valueOf(i11), Integer.valueOf(i12), new bm4(mutableState, listCalculateItemsOffsets, listApplyStickyItems, z4)), f5, z6, y22Var, density, i8, nl3Var, nl3Var2, LazyLayoutMeasuredItemKt.updatedVisibleItems(i37, i34, listCalculateItemsOffsets, listApplyStickyItems), i18, i24, i, z2, z ? Orientation.Vertical : Orientation.Horizontal, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureLazyGrid_t1x4au0$lambda$2(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyGridMeasuredItem measureLazyGrid_t1x4au0$lambda$7(LazyGridMeasuredLineProvider lazyGridMeasuredLineProvider, LazyGridMeasuredItemProvider lazyGridMeasuredItemProvider, int i) {
        int iSpanOf = lazyGridMeasuredLineProvider.spanOf(i);
        return lazyGridMeasuredItemProvider.mo2166getAndMeasurehBUhpc(i, 0, iSpanOf, lazyGridMeasuredLineProvider.m2192childConstraintsJhjzzOo$foundation(0, iSpanOf));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureLazyGrid_t1x4au0$lambda$8(MutableState mutableState, final List list, final List list2, final boolean z, Placeable.PlacementScope placementScope) {
        placementScope.withMotionFrameOfReferencePlacement(new nl3() { // from class: zl4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$8$0(list, list2, z, (Placeable.PlacementScope) obj);
            }
        });
        ObservableScopeInvalidator.m2232attachToScopeimpl(mutableState);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureLazyGrid_t1x4au0$lambda$8$0(List list, List list2, boolean z, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((LazyGridMeasuredItem) list.get(i)).place(placementScope, z);
        }
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((LazyGridMeasuredItem) list2.get(i2)).place(placementScope, z);
        }
        return j59.a;
    }
}
