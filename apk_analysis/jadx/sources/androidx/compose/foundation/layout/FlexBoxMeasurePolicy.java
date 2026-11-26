package androidx.compose.foundation.layout;

import androidx.compose.runtime.State;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.eq;
import defpackage.j59;
import defpackage.kx6;
import defpackage.n7;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.pp1;
import defpackage.u96;
import defpackage.w74;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class FlexBoxMeasurePolicy implements MeasurePolicy {
    private final State<FlexBoxConfig> flexBoxConfigState;
    private final ResolvedFlexBoxConfig resolvedFlexBoxConfig = new ResolvedFlexBoxConfig();

    /* JADX WARN: Multi-variable type inference failed */
    public FlexBoxMeasurePolicy(State<? extends FlexBoxConfig> state) {
        this.flexBoxConfigState = state;
    }

    /* JADX INFO: renamed from: applyAlignContentStretch-WWvErGg, reason: not valid java name */
    private final int m1840applyAlignContentStretchWWvErGg(ResolvedFlexBoxConfig resolvedFlexBoxConfig, ArrayList<FlexLine> arrayList, long j, int i, int i2) {
        if (FlexAlignContent.m1781equalsimpl0(resolvedFlexBoxConfig.m2058getAlignContentd9B3MrI$foundation_layout(), FlexAlignContent.m1779constructorimpl(3)) && Constraints.m8996getMinHeightimpl(j) != Integer.MAX_VALUE && !arrayList.isEmpty() && arrayList.size() != 1) {
            int size = (arrayList.size() - 1) * i2;
            int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
            if (i + size < iM8996getMinHeightimpl) {
                int i3 = (iM8996getMinHeightimpl - i) - size;
                if (i3 < 0) {
                    i3 = 0;
                }
                int size2 = i3 / arrayList.size();
                int size3 = arrayList.size();
                int crossAxisSize = 0;
                for (int i4 = 0; i4 < size3; i4++) {
                    FlexLine flexLine = arrayList.get(i4);
                    flexLine.setCrossStart(crossAxisSize);
                    flexLine.setCrossAxisSize(flexLine.getCrossAxisSize() + size2);
                    crossAxisSize += flexLine.getCrossAxisSize() + i2;
                    i += size2;
                }
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: buildFlexLines-JlE-8fw, reason: not valid java name */
    private final ArrayList<FlexLine> m1841buildFlexLinesJlE8fw(ResolvedFlexBoxConfig resolvedFlexBoxConfig, ArrayList<ResolvedFlexItemInfo> arrayList, long j, int i, int i2, boolean z, nl3<? super Integer, j59> nl3Var) {
        ArrayList<FlexLine> arrayList2 = new ArrayList<>(8);
        FlexLine flexLine = new FlexLine();
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        int size = arrayList.size();
        FlexLine flexLine2 = flexLine;
        int crossAxisSize = iM8994getMaxHeightimpl;
        int i3 = 0;
        int hypotheticalMainSize = 0;
        int crossAxisSize2 = 0;
        int crossAxisSize3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            ResolvedFlexItemInfo resolvedFlexItemInfo = arrayList.get(i4);
            if ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && i4 > i3 && resolvedFlexItemInfo.getHypotheticalMainSize() + hypotheticalMainSize > Constraints.m8995getMaxWidthimpl(j)) {
                flexLine2.setStartIndex(i3);
                flexLine2.setEndIndex(i4);
                m1847processFlexLine7gjidqw(flexLine2, arrayList, resolvedFlexBoxConfig, hypotheticalMainSize - i, z, j, crossAxisSize);
                crossAxisSize2 += flexLine2.getCrossAxisSize();
                flexLine2.setCrossStart(crossAxisSize3);
                crossAxisSize3 += flexLine2.getCrossAxisSize() + i2;
                crossAxisSize -= flexLine2.getCrossAxisSize() + i2;
                if (crossAxisSize < 0) {
                    crossAxisSize = 0;
                }
                arrayList2.add(flexLine2);
                FlexLine flexLine3 = new FlexLine();
                hypotheticalMainSize = resolvedFlexItemInfo.getHypotheticalMainSize() + i;
                flexLine2 = flexLine3;
                i3 = i4;
            } else {
                hypotheticalMainSize = resolvedFlexItemInfo.getHypotheticalMainSize() + i + hypotheticalMainSize;
            }
        }
        if (i3 < arrayList.size()) {
            flexLine2.setStartIndex(i3);
            flexLine2.setEndIndex(arrayList.size());
            m1847processFlexLine7gjidqw(flexLine2, arrayList, resolvedFlexBoxConfig, hypotheticalMainSize - i, z, j, crossAxisSize);
            crossAxisSize2 += flexLine2.getCrossAxisSize();
            flexLine2.setCrossStart(crossAxisSize3);
            arrayList2.add(flexLine2);
        }
        nl3Var.invoke(Integer.valueOf(crossAxisSize2));
        return arrayList2;
    }

    /* JADX INFO: renamed from: calculateItemCrossPosition-sT6f14c, reason: not valid java name */
    private final int m1842calculateItemCrossPositionsT6f14c(ResolvedFlexItemInfo resolvedFlexItemInfo, int i, int i2, int i3, int i4, int i5) {
        int iM1804constructorimpl;
        if (!FlexAlignSelf.m1806equalsimpl0(resolvedFlexItemInfo.m2073getAlignSelf_ov7Qcc$foundation_layout(), FlexAlignSelf.m1804constructorimpl(0))) {
            iM1804constructorimpl = resolvedFlexItemInfo.m2073getAlignSelf_ov7Qcc$foundation_layout();
        } else if (FlexAlignItems.m1794equalsimpl0(i5, FlexAlignItems.m1792constructorimpl(0))) {
            iM1804constructorimpl = FlexAlignSelf.m1804constructorimpl(1);
        } else if (FlexAlignItems.m1794equalsimpl0(i5, FlexAlignItems.m1792constructorimpl(1))) {
            iM1804constructorimpl = FlexAlignSelf.m1804constructorimpl(2);
        } else if (FlexAlignItems.m1794equalsimpl0(i5, FlexAlignItems.m1792constructorimpl(2))) {
            iM1804constructorimpl = FlexAlignSelf.m1804constructorimpl(3);
        } else if (FlexAlignItems.m1794equalsimpl0(i5, FlexAlignItems.m1792constructorimpl(3))) {
            iM1804constructorimpl = FlexAlignSelf.m1804constructorimpl(4);
        } else {
            iM1804constructorimpl = FlexAlignItems.m1794equalsimpl0(i5, FlexAlignItems.m1792constructorimpl(4)) ? FlexAlignSelf.m1804constructorimpl(5) : FlexAlignSelf.m1804constructorimpl(1);
        }
        if (FlexAlignSelf.m1806equalsimpl0(iM1804constructorimpl, FlexAlignSelf.m1804constructorimpl(1))) {
            return 0;
        }
        if (FlexAlignSelf.m1806equalsimpl0(iM1804constructorimpl, FlexAlignSelf.m1804constructorimpl(2))) {
            return i4 - i3;
        }
        if (FlexAlignSelf.m1806equalsimpl0(iM1804constructorimpl, FlexAlignSelf.m1804constructorimpl(3))) {
            return (i4 - i3) / 2;
        }
        if (FlexAlignSelf.m1806equalsimpl0(iM1804constructorimpl, FlexAlignSelf.m1804constructorimpl(4)) || !FlexAlignSelf.m1806equalsimpl0(iM1804constructorimpl, FlexAlignSelf.m1804constructorimpl(5)) || i == Integer.MIN_VALUE) {
            return 0;
        }
        return i2 - i;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    private final void calculateLineCrossAxisSize(ArrayList<ResolvedFlexItemInfo> arrayList, ResolvedFlexBoxConfig resolvedFlexBoxConfig, FlexLine flexLine, int i) {
        int crossAxisSize;
        int iMaxIntrinsicWidth;
        boolean z = FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2));
        int startIndex = flexLine.getStartIndex();
        int endIndex = flexLine.getEndIndex();
        if (startIndex < 0 || startIndex > arrayList.size()) {
            eq.c(arrayList.size(), n7.c(startIndex, "fromIndex (", ") is out of bounds [0, "));
            return;
        }
        if (endIndex < 0 || endIndex > arrayList.size()) {
            eq.c(arrayList.size(), n7.c(endIndex, "toIndex (", ") is out of bounds [0, "));
            return;
        }
        int iMax = 0;
        int iMax2 = 0;
        int iMax3 = 0;
        while (startIndex < endIndex) {
            ResolvedFlexItemInfo resolvedFlexItemInfo = arrayList.get(startIndex);
            if (resolvedFlexItemInfo.getHasBaseline() || (FlexAlignItems.m1794equalsimpl0(resolvedFlexBoxConfig.m2059getAlignItems20X20zU$foundation_layout(), FlexAlignItems.m1792constructorimpl(4)) && FlexAlignSelf.m1806equalsimpl0(resolvedFlexItemInfo.m2073getAlignSelf_ov7Qcc$foundation_layout(), FlexAlignSelf.m1804constructorimpl(0)))) {
                measureItem(resolvedFlexItemInfo, resolvedFlexBoxConfig, 0, false, i);
                Placeable placeable = resolvedFlexItemInfo.getPlaceable();
                placeable.getClass();
                int baseline = resolvedFlexItemInfo.getBaseline(placeable, resolvedFlexBoxConfig);
                resolvedFlexItemInfo.setBaseline(baseline);
                iMax = Math.max(iMax, baseline);
                iMax3 = Math.max(iMax3, resolvedFlexItemInfo.getCrossAxisSize() - baseline);
                crossAxisSize = iMax + iMax3;
            } else {
                if (z) {
                    Measurable measurable = resolvedFlexItemInfo.getMeasurable();
                    if (measurable != null) {
                        iMaxIntrinsicWidth = measurable.maxIntrinsicHeight(resolvedFlexItemInfo.getTargetMainSize());
                    } else {
                        iMaxIntrinsicWidth = 0;
                    }
                } else {
                    Measurable measurable2 = resolvedFlexItemInfo.getMeasurable();
                    if (measurable2 != null) {
                        iMaxIntrinsicWidth = measurable2.maxIntrinsicWidth(resolvedFlexItemInfo.getTargetMainSize());
                    } else {
                        iMaxIntrinsicWidth = 0;
                    }
                }
                resolvedFlexItemInfo.setCrossAxisSize(iMaxIntrinsicWidth);
                crossAxisSize = resolvedFlexItemInfo.getCrossAxisSize();
            }
            iMax2 = Math.max(iMax2, crossAxisSize);
            startIndex++;
        }
        flexLine.setMaxAboveBaseline(iMax);
        flexLine.setCrossAxisSize(iMax2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005f  */
    private final void calculateLineCrossPositions(ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, ArrayList<FlexLine> arrayList, int i2, int i3) {
        int size;
        if (arrayList.isEmpty() || arrayList.size() == 1) {
            return;
        }
        int size2 = (i - i2) - ((arrayList.size() - 1) * i3);
        int iM2058getAlignContentd9B3MrI$foundation_layout = resolvedFlexBoxConfig.m2058getAlignContentd9B3MrI$foundation_layout();
        if (FlexAlignContent.m1781equalsimpl0(iM2058getAlignContentd9B3MrI$foundation_layout, FlexAlignContent.m1779constructorimpl(5))) {
            size = size2 / arrayList.size();
        } else {
            size = FlexAlignContent.m1781equalsimpl0(iM2058getAlignContentd9B3MrI$foundation_layout, FlexAlignContent.m1779constructorimpl(4)) ? size2 / (arrayList.size() - 1) : 0;
        }
        int iM2058getAlignContentd9B3MrI$foundation_layout2 = resolvedFlexBoxConfig.m2058getAlignContentd9B3MrI$foundation_layout();
        if (FlexAlignContent.m1781equalsimpl0(iM2058getAlignContentd9B3MrI$foundation_layout2, FlexAlignContent.m1779constructorimpl(1))) {
            if (FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) {
                size2 = 0;
            }
        } else if (FlexAlignContent.m1781equalsimpl0(iM2058getAlignContentd9B3MrI$foundation_layout2, FlexAlignContent.m1779constructorimpl(2))) {
            size2 /= 2;
        } else if (FlexAlignContent.m1781equalsimpl0(iM2058getAlignContentd9B3MrI$foundation_layout2, FlexAlignContent.m1779constructorimpl(5))) {
            size2 = size / 2;
        } else if (!FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) {
            size2 = 0;
        }
        w74 w74VarL = FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2)) ? kx6.l(u96.f(arrayList)) : u96.f(arrayList);
        int i4 = w74VarL.b;
        int i5 = w74VarL.c;
        int i6 = w74VarL.d;
        if ((i6 <= 0 || i4 > i5) && (i6 >= 0 || i5 > i4)) {
            return;
        }
        while (true) {
            FlexLine flexLine = arrayList.get(i4);
            flexLine.setCrossStart(size2);
            size2 += flexLine.getCrossAxisSize() + size + i3;
            if (i4 == i5) {
                return;
            } else {
                i4 += i6;
            }
        }
    }

    /* JADX INFO: renamed from: createFlexItem-XsoA538, reason: not valid java name */
    private final ResolvedFlexItemInfo m1843createFlexItemXsoA538(MeasureScope measureScope, Measurable measurable, boolean z, long j) {
        int maxContentSize$foundation_layout;
        Object parentData = measurable.getParentData();
        FlexBoxChildDataNode flexBoxChildDataNode = parentData instanceof FlexBoxChildDataNode ? (FlexBoxChildDataNode) parentData : null;
        ResolvedFlexItemInfo resolvedFlexItemInfo = new ResolvedFlexItemInfo();
        if (flexBoxChildDataNode != null) {
            resolvedFlexItemInfo.m2075prepareRMq0m1M(measureScope, j);
            flexBoxChildDataNode.getConfig().configure(resolvedFlexItemInfo);
        }
        resolvedFlexItemInfo.setMeasurable(measurable);
        int minMainAxisSize$foundation_layout = resolvedFlexItemInfo.getMinMainAxisSize$foundation_layout(z);
        if (FlexBasis.m1823isDpimpl$foundation_layout(resolvedFlexItemInfo.m2074getBasisdlZNVs$foundation_layout())) {
            maxContentSize$foundation_layout = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(FlexBasis.m1820getValueimpl$foundation_layout(resolvedFlexItemInfo.m2074getBasisdlZNVs$foundation_layout())));
        } else if (!FlexBasis.m1824isPercentimpl$foundation_layout(resolvedFlexItemInfo.m2074getBasisdlZNVs$foundation_layout())) {
            maxContentSize$foundation_layout = FlexBasis.m1822isAutoimpl$foundation_layout(resolvedFlexItemInfo.m2074getBasisdlZNVs$foundation_layout()) ? resolvedFlexItemInfo.getMaxContentSize$foundation_layout(z) : resolvedFlexItemInfo.getMaxContentSize$foundation_layout(z);
        } else if (Constraints.m8995getMaxWidthimpl(j) == Integer.MAX_VALUE || Float.isNaN(FlexBasis.m1820getValueimpl$foundation_layout(resolvedFlexItemInfo.m2074getBasisdlZNVs$foundation_layout()))) {
            maxContentSize$foundation_layout = resolvedFlexItemInfo.getMaxContentSize$foundation_layout(z);
        } else {
            maxContentSize$foundation_layout = (int) (FlexBasis.m1820getValueimpl$foundation_layout(resolvedFlexItemInfo.m2074getBasisdlZNVs$foundation_layout()) * Constraints.m8995getMaxWidthimpl(j));
        }
        resolvedFlexItemInfo.setFlexBaseSize(maxContentSize$foundation_layout);
        if (maxContentSize$foundation_layout >= minMainAxisSize$foundation_layout) {
            minMainAxisSize$foundation_layout = maxContentSize$foundation_layout;
        }
        resolvedFlexItemInfo.setHypotheticalMainSize(minMainAxisSize$foundation_layout);
        resolvedFlexItemInfo.setTargetMainSize(resolvedFlexItemInfo.getHypotheticalMainSize());
        return resolvedFlexItemInfo;
    }

    private final boolean isMainAxisReversedForLayout(ResolvedFlexBoxConfig resolvedFlexBoxConfig, LayoutDirection layoutDirection) {
        boolean z = FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(3));
        if ((FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) && layoutDirection == LayoutDirection.Rtl) {
            return !z;
        }
        return z;
    }

    /* JADX INFO: renamed from: measureFlexBox-w1Onq5I, reason: not valid java name */
    private final MeasureResult m1844measureFlexBoxw1Onq5I(final MeasureScope measureScope, final ResolvedFlexBoxConfig resolvedFlexBoxConfig, List<? extends Measurable> list, long j, final boolean z) {
        int i;
        ArrayList<ResolvedFlexItemInfo> arrayList;
        FlexLine flexLine;
        int i2;
        int i3;
        boolean z2;
        int i4;
        ArrayList<ResolvedFlexItemInfo> arrayList2;
        FlexBoxMeasurePolicy flexBoxMeasurePolicy = this;
        ArrayList<ResolvedFlexItemInfo> arrayList3 = new ArrayList<>(list.size());
        long j2 = j;
        boolean zM1846needUpfrontCrossAxisCalculationRMq0m1M = flexBoxMeasurePolicy.m1846needUpfrontCrossAxisCalculationRMq0m1M(resolvedFlexBoxConfig, j2);
        int size = list.size();
        boolean z3 = zM1846needUpfrontCrossAxisCalculationRMq0m1M;
        int i5 = 0;
        boolean z4 = false;
        while (true) {
            i = 1;
            if (i5 >= size) {
                break;
            }
            ResolvedFlexItemInfo resolvedFlexItemInfoM1843createFlexItemXsoA538 = flexBoxMeasurePolicy.m1843createFlexItemXsoA538(measureScope, list.get(i5), z, j2);
            if (resolvedFlexItemInfoM1843createFlexItemXsoA538.getOrder$foundation_layout() != 0) {
                z4 = true;
            }
            if (FlexAlignSelf.m1806equalsimpl0(resolvedFlexItemInfoM1843createFlexItemXsoA538.m2073getAlignSelf_ov7Qcc$foundation_layout(), FlexAlignSelf.m1804constructorimpl(5)) || FlexAlignSelf.m1806equalsimpl0(resolvedFlexItemInfoM1843createFlexItemXsoA538.m2073getAlignSelf_ov7Qcc$foundation_layout(), FlexAlignSelf.m1804constructorimpl(4))) {
                z3 = true;
            }
            arrayList3.add(resolvedFlexItemInfoM1843createFlexItemXsoA538);
            i5++;
            flexBoxMeasurePolicy = this;
            j2 = j;
        }
        if (z4 && arrayList3.size() > 1) {
            nn1.J(new Comparator() { // from class: androidx.compose.foundation.layout.FlexBoxMeasurePolicy$measureFlexBox-w1Onq5I$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return pp1.a(Integer.valueOf(((ResolvedFlexItemInfo) t).getOrder$foundation_layout()), Integer.valueOf(((ResolvedFlexItemInfo) t2).getOrder$foundation_layout()));
                }
            }, arrayList3);
        }
        final int iMainAxisGap = resolvedFlexBoxConfig.mainAxisGap();
        int iCrossAxisGap = resolvedFlexBoxConfig.crossAxisGap();
        final ArrayList<FlexLine> arrayList4 = new ArrayList<>(8);
        FlexLine flexLine2 = new FlexLine();
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        int size2 = arrayList3.size();
        int i6 = iM8994getMaxHeightimpl;
        int i7 = 0;
        int hypotheticalMainSize = 0;
        int crossAxisSize = 0;
        int crossAxisSize2 = 0;
        FlexLine flexLine3 = flexLine2;
        int i8 = 0;
        while (i8 < size2) {
            ResolvedFlexItemInfo resolvedFlexItemInfo = arrayList3.get(i8);
            if ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && i8 > i7 && resolvedFlexItemInfo.getHypotheticalMainSize() + hypotheticalMainSize > Constraints.m8995getMaxWidthimpl(j)) {
                flexLine3.setStartIndex(i7);
                flexLine3.setEndIndex(i8);
                int i9 = crossAxisSize;
                ArrayList<ResolvedFlexItemInfo> arrayList5 = arrayList3;
                z2 = z3;
                i4 = i8;
                m1847processFlexLine7gjidqw(flexLine3, arrayList5, resolvedFlexBoxConfig, hypotheticalMainSize - iMainAxisGap, z2, j, i6);
                arrayList2 = arrayList5;
                crossAxisSize2 += flexLine3.getCrossAxisSize();
                flexLine3.setCrossStart(i9);
                crossAxisSize = flexLine3.getCrossAxisSize() + iCrossAxisGap + i9;
                int crossAxisSize3 = i6 - (flexLine3.getCrossAxisSize() + iCrossAxisGap);
                if (crossAxisSize3 < 0) {
                    crossAxisSize3 = 0;
                }
                arrayList4.add(flexLine3);
                flexLine3 = new FlexLine();
                hypotheticalMainSize = resolvedFlexItemInfo.getHypotheticalMainSize() + iMainAxisGap;
                i6 = crossAxisSize3;
                i7 = i4;
            } else {
                int i10 = crossAxisSize;
                z2 = z3;
                i4 = i8;
                arrayList2 = arrayList3;
                hypotheticalMainSize = resolvedFlexItemInfo.getHypotheticalMainSize() + iMainAxisGap + hypotheticalMainSize;
                crossAxisSize = i10;
            }
            int i11 = i4 + 1;
            arrayList3 = arrayList2;
            z3 = z2;
            i8 = i11;
        }
        int i12 = crossAxisSize;
        ArrayList<ResolvedFlexItemInfo> arrayList6 = arrayList3;
        boolean z5 = z3;
        if (i7 < arrayList6.size()) {
            flexLine3.setStartIndex(i7);
            flexLine3.setEndIndex(arrayList6.size());
            m1847processFlexLine7gjidqw(flexLine3, arrayList6, resolvedFlexBoxConfig, hypotheticalMainSize - iMainAxisGap, z5, j, i6);
            arrayList = arrayList6;
            crossAxisSize2 += flexLine3.getCrossAxisSize();
            flexLine3.setCrossStart(i12);
            arrayList4.add(flexLine3);
        } else {
            arrayList = arrayList6;
        }
        int i13 = crossAxisSize2;
        if (arrayList4.size() == 1) {
            arrayList4.get(0).setCrossAxisSize(Math.max(arrayList4.get(0).getCrossAxisSize(), Constraints.m8996getMinHeightimpl(j)));
        }
        final ArrayList<ResolvedFlexItemInfo> arrayList7 = arrayList;
        int iM1845measureFlexItemsHjG58DU = m1845measureFlexItemsHjG58DU(arrayList4, arrayList7, resolvedFlexBoxConfig, m1840applyAlignContentStretchWWvErGg(resolvedFlexBoxConfig, arrayList4, j, i13, iCrossAxisGap), z5, j);
        calculateLineCrossPositions(resolvedFlexBoxConfig, Math.max(iM1845measureFlexItemsHjG58DU, Constraints.m8996getMinHeightimpl(j)), arrayList4, iM1845measureFlexItemsHjG58DU, iCrossAxisGap);
        int iMax = Math.max(totalCrossAxisSize(arrayList4, FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))), Constraints.m8996getMinHeightimpl(j));
        if (!arrayList4.isEmpty()) {
            flexLine = arrayList4.get(0);
            int mainAxisSize = flexLine.getMainAxisSize();
            int size3 = arrayList4.size() - 1;
            if (1 <= size3) {
                while (true) {
                    FlexLine flexLine4 = arrayList4.get(i);
                    int mainAxisSize2 = flexLine4.getMainAxisSize();
                    if (mainAxisSize < mainAxisSize2) {
                        flexLine = flexLine4;
                        mainAxisSize = mainAxisSize2;
                    }
                    if (i == size3) {
                        break;
                    }
                    i++;
                }
            }
        } else {
            flexLine = null;
        }
        FlexLine flexLine5 = flexLine;
        int iMax2 = Math.max(flexLine5 != null ? flexLine5.getMainAxisSize() : Constraints.m8997getMinWidthimpl(j), Constraints.m8997getMinWidthimpl(j));
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (iMax2 < iM8997getMinWidthimpl) {
            iMax2 = iM8997getMinWidthimpl;
        }
        if (iMax2 <= iM8995getMaxWidthimpl) {
            iM8995getMaxWidthimpl = iMax2;
        }
        if (z) {
            int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
            int iM8994getMaxHeightimpl2 = Constraints.m8994getMaxHeightimpl(j);
            if (iMax < iM8996getMinHeightimpl) {
                iMax = iM8996getMinHeightimpl;
            }
            if (iMax <= iM8994getMaxHeightimpl2) {
                iM8994getMaxHeightimpl2 = iMax;
            }
            i3 = iM8994getMaxHeightimpl2;
            i2 = iM8995getMaxWidthimpl;
        } else {
            int iM8996getMinHeightimpl2 = Constraints.m8996getMinHeightimpl(j);
            int iM8994getMaxHeightimpl3 = Constraints.m8994getMaxHeightimpl(j);
            if (iMax < iM8996getMinHeightimpl2) {
                iMax = iM8996getMinHeightimpl2;
            }
            if (iMax <= iM8994getMaxHeightimpl3) {
                iM8994getMaxHeightimpl3 = iMax;
            }
            i2 = iM8994getMaxHeightimpl3;
            i3 = iM8995getMaxWidthimpl;
        }
        final int i14 = i2;
        final int i15 = i3;
        return MeasureScope.layout$default(measureScope, i2, i3, null, new nl3() { // from class: androidx.compose.foundation.layout.m
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return FlexBoxMeasurePolicy.measureFlexBox_w1Onq5I$lambda$4(this.b, arrayList4, arrayList7, measureScope, resolvedFlexBoxConfig, i14, i15, iMainAxisGap, z, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measureFlexBox_w1Onq5I$lambda$4(FlexBoxMeasurePolicy flexBoxMeasurePolicy, ArrayList arrayList, ArrayList arrayList2, MeasureScope measureScope, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, int i2, int i3, boolean z, Placeable.PlacementScope placementScope) {
        flexBoxMeasurePolicy.placeFlexItems(placementScope, arrayList, arrayList2, measureScope.getLayoutDirection(), resolvedFlexBoxConfig, i, i2, i3, z);
        return j59.a;
    }

    /* JADX INFO: renamed from: measureFlexItems-HjG58DU, reason: not valid java name */
    private final int m1845measureFlexItemsHjG58DU(ArrayList<FlexLine> arrayList, ArrayList<ResolvedFlexItemInfo> arrayList2, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, boolean z, long j) {
        int crossAxisSize;
        int i2;
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        int size = arrayList.size();
        int i3 = 0;
        int i4 = i;
        int crossAxisSize2 = iM8994getMaxHeightimpl;
        int i5 = 0;
        while (i5 < size) {
            FlexLine flexLine = arrayList.get(i5);
            int crossAxisSize3 = z ? flexLine.getCrossAxisSize() : i3;
            int startIndex = flexLine.getStartIndex();
            int endIndex = flexLine.getEndIndex();
            if (startIndex < 0 || startIndex > arrayList2.size()) {
                int i6 = i3;
                eq.c(arrayList2.size(), n7.c(startIndex, "fromIndex (", ") is out of bounds [0, "));
                return i6;
            }
            if (endIndex < 0 || endIndex > arrayList2.size()) {
                int i7 = i3;
                eq.c(arrayList2.size(), n7.c(endIndex, "toIndex (", ") is out of bounds [0, "));
                return i7;
            }
            int iMax = crossAxisSize3;
            int i8 = startIndex;
            while (i8 < endIndex) {
                ResolvedFlexItemInfo resolvedFlexItemInfo = arrayList2.get(i8);
                if (resolvedFlexItemInfo.getPlaceable() != null) {
                    if (!z) {
                        iMax = Math.max(iMax, resolvedFlexItemInfo.getCrossAxisSize());
                    }
                    i2 = i3;
                } else {
                    boolean z2 = (FlexAlignSelf.m1806equalsimpl0(resolvedFlexItemInfo.m2073getAlignSelf_ov7Qcc$foundation_layout(), FlexAlignSelf.m1804constructorimpl(4)) || (FlexAlignSelf.m1806equalsimpl0(resolvedFlexItemInfo.m2073getAlignSelf_ov7Qcc$foundation_layout(), FlexAlignSelf.m1804constructorimpl(i3)) && (FlexAlignItems.m1794equalsimpl0(resolvedFlexBoxConfig.m2059getAlignItems20X20zU$foundation_layout(), FlexAlignItems.m1792constructorimpl(3)) || FlexAlignContent.m1781equalsimpl0(resolvedFlexBoxConfig.m2058getAlignContentd9B3MrI$foundation_layout(), FlexAlignContent.m1779constructorimpl(3))))) ? true : i3;
                    if (z2) {
                        i2 = i3;
                        crossAxisSize = flexLine.getCrossAxisSize();
                    } else {
                        crossAxisSize = i3;
                        i2 = crossAxisSize;
                    }
                    int iMeasureItem = measureItem(resolvedFlexItemInfo, resolvedFlexBoxConfig, crossAxisSize, z2, crossAxisSize2);
                    if (!z) {
                        iMax = Math.max(iMax, iMeasureItem);
                    }
                    if (arrayList.size() == 1) {
                        iMax = Math.max(iMax, Constraints.m8996getMinHeightimpl(j));
                    }
                }
                i8++;
                i3 = i2;
            }
            int i9 = i3;
            if (!z) {
                flexLine.setCrossAxisSize(iMax);
                i4 += iMax;
            }
            crossAxisSize2 = (crossAxisSize2 - flexLine.getCrossAxisSize()) - resolvedFlexBoxConfig.crossAxisGap();
            if (crossAxisSize2 < 0) {
                crossAxisSize2 = i9;
            }
            i5++;
            i3 = i9;
        }
        return z ? i : i4;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x007e  */
    private final int measureItem(ResolvedFlexItemInfo resolvedFlexItemInfo, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, boolean z, int i2) {
        long jM9004fitPrioritizingWidthZbe2FdA;
        int width;
        int targetMainSize;
        int height = 0;
        boolean z2 = FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2));
        if (!z || i <= 0) {
            jM9004fitPrioritizingWidthZbe2FdA = z2 ? Constraints.Companion.m9004fitPrioritizingWidthZbe2FdA(resolvedFlexItemInfo.getTargetMainSize(), resolvedFlexItemInfo.getTargetMainSize(), 0, i2) : Constraints.Companion.m9003fitPrioritizingHeightZbe2FdA(0, i2, resolvedFlexItemInfo.getTargetMainSize(), resolvedFlexItemInfo.getTargetMainSize());
        } else {
            Constraints.Companion companion = Constraints.Companion;
            if (z2) {
                targetMainSize = resolvedFlexItemInfo.getTargetMainSize();
            } else {
                targetMainSize = i > i2 ? i2 : i;
            }
            if (!z2) {
                i = resolvedFlexItemInfo.getTargetMainSize();
            } else if (i > i2) {
                i = i2;
            }
            jM9004fitPrioritizingWidthZbe2FdA = companion.m9005fixedJhjzzOo(targetMainSize, i);
        }
        Measurable measurable = resolvedFlexItemInfo.getMeasurable();
        resolvedFlexItemInfo.setPlaceable(measurable != null ? measurable.mo7702measureBRTryo0(jM9004fitPrioritizingWidthZbe2FdA) : null);
        if (z2) {
            Placeable placeable = resolvedFlexItemInfo.getPlaceable();
            if (placeable != null) {
                width = placeable.getHeight();
            } else {
                width = 0;
            }
        } else {
            Placeable placeable2 = resolvedFlexItemInfo.getPlaceable();
            if (placeable2 != null) {
                width = placeable2.getWidth();
            } else {
                width = 0;
            }
        }
        resolvedFlexItemInfo.setCrossAxisSize(width);
        if (z2) {
            Placeable placeable3 = resolvedFlexItemInfo.getPlaceable();
            if (placeable3 != null) {
                height = placeable3.getWidth();
            }
        } else {
            Placeable placeable4 = resolvedFlexItemInfo.getPlaceable();
            if (placeable4 != null) {
                height = placeable4.getHeight();
            }
        }
        resolvedFlexItemInfo.setMainAxisSize(height);
        return resolvedFlexItemInfo.getCrossAxisSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: renamed from: needUpfrontCrossAxisCalculation-RMq0m1M, reason: not valid java name */
    private final boolean m1846needUpfrontCrossAxisCalculationRMq0m1M(ResolvedFlexBoxConfig resolvedFlexBoxConfig, long j) {
        return FlexAlignItems.m1794equalsimpl0(resolvedFlexBoxConfig.m2059getAlignItems20X20zU$foundation_layout(), FlexAlignItems.m1792constructorimpl(3)) || FlexAlignItems.m1794equalsimpl0(resolvedFlexBoxConfig.m2059getAlignItems20X20zU$foundation_layout(), FlexAlignItems.m1792constructorimpl(4)) || ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfig.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && FlexAlignContent.m1781equalsimpl0(resolvedFlexBoxConfig.m2058getAlignContentd9B3MrI$foundation_layout(), FlexAlignContent.m1779constructorimpl(3)) && Constraints.m8994getMaxHeightimpl(j) != Integer.MAX_VALUE);
    }

    private final void placeFlexItems(Placeable.PlacementScope placementScope, ArrayList<FlexLine> arrayList, ArrayList<ResolvedFlexItemInfo> arrayList2, LayoutDirection layoutDirection, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, int i2, int i3, boolean z) {
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            FlexLine flexLine = arrayList.get(i4);
            positionItemsOnMainAxis(arrayList2, resolvedFlexBoxConfig, z ? i : i2, flexLine, i3, isMainAxisReversedForLayout(resolvedFlexBoxConfig, layoutDirection));
            int startIndex = flexLine.getStartIndex();
            int endIndex = flexLine.getEndIndex();
            if (startIndex < 0 || startIndex > arrayList2.size()) {
                eq.c(arrayList2.size(), n7.c(startIndex, "fromIndex (", ") is out of bounds [0, "));
                return;
            }
            if (endIndex < 0 || endIndex > arrayList2.size()) {
                eq.c(arrayList2.size(), n7.c(endIndex, "toIndex (", ") is out of bounds [0, "));
                return;
            }
            while (startIndex < endIndex) {
                ResolvedFlexItemInfo resolvedFlexItemInfo = arrayList2.get(startIndex);
                int mainPosition = z ? resolvedFlexItemInfo.getMainPosition() : resolvedFlexItemInfo.getCrossPosition();
                int crossPosition = z ? resolvedFlexItemInfo.getCrossPosition() : resolvedFlexItemInfo.getMainPosition();
                Placeable placeable = resolvedFlexItemInfo.getPlaceable();
                if (placeable != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable, mainPosition, crossPosition, 0.0f, 4, null);
                }
                startIndex++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0058  */
    private final void positionItemsOnMainAxis(ArrayList<ResolvedFlexItemInfo> arrayList, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, FlexLine flexLine, int i2, boolean z) {
        int i3;
        int endIndex = flexLine.getEndIndex() - flexLine.getStartIndex();
        if (endIndex == 0) {
            return;
        }
        int mainAxisSize = i - flexLine.getMainAxisSize();
        int iM2062getJustifyContentGomtQF4$foundation_layout = resolvedFlexBoxConfig.m2062getJustifyContentGomtQF4$foundation_layout();
        if (FlexJustifyContent.m1866equalsimpl0(iM2062getJustifyContentGomtQF4$foundation_layout, FlexJustifyContent.m1864constructorimpl(4))) {
            i3 = mainAxisSize / endIndex;
        } else if (FlexJustifyContent.m1866equalsimpl0(iM2062getJustifyContentGomtQF4$foundation_layout, FlexJustifyContent.m1864constructorimpl(3))) {
            if (endIndex > 1) {
                i3 = mainAxisSize / (endIndex - 1);
            } else {
                i3 = 0;
            }
        } else if (FlexJustifyContent.m1866equalsimpl0(iM2062getJustifyContentGomtQF4$foundation_layout, FlexJustifyContent.m1864constructorimpl(5))) {
            i3 = mainAxisSize / (endIndex + 1);
        } else {
            i3 = 0;
        }
        int iM2062getJustifyContentGomtQF4$foundation_layout2 = resolvedFlexBoxConfig.m2062getJustifyContentGomtQF4$foundation_layout();
        if (FlexJustifyContent.m1866equalsimpl0(iM2062getJustifyContentGomtQF4$foundation_layout2, FlexJustifyContent.m1864constructorimpl(1))) {
            if (z) {
                mainAxisSize = 0;
            }
        } else if (FlexJustifyContent.m1866equalsimpl0(iM2062getJustifyContentGomtQF4$foundation_layout2, FlexJustifyContent.m1864constructorimpl(2))) {
            mainAxisSize /= 2;
        } else if (FlexJustifyContent.m1866equalsimpl0(iM2062getJustifyContentGomtQF4$foundation_layout2, FlexJustifyContent.m1864constructorimpl(4))) {
            mainAxisSize = i3 / 2;
        } else if (FlexJustifyContent.m1866equalsimpl0(iM2062getJustifyContentGomtQF4$foundation_layout2, FlexJustifyContent.m1864constructorimpl(5))) {
            mainAxisSize = i3;
        } else if (!z) {
            mainAxisSize = 0;
        }
        w74 w74VarK = z ? kx6.k(flexLine.getEndIndex() - 1, flexLine.getStartIndex()) : kx6.n(flexLine.getStartIndex(), flexLine.getEndIndex());
        int i4 = w74VarK.b;
        int i5 = w74VarK.c;
        int i6 = w74VarK.d;
        if ((i6 <= 0 || i4 > i5) && (i6 >= 0 || i5 > i4)) {
            return;
        }
        while (true) {
            ResolvedFlexItemInfo resolvedFlexItemInfo = arrayList.get(i4);
            resolvedFlexItemInfo.setMainPosition(mainAxisSize);
            mainAxisSize += resolvedFlexItemInfo.getTargetMainSize() + i3 + i2;
            resolvedFlexItemInfo.setCrossPosition(flexLine.getCrossStart() + m1842calculateItemCrossPositionsT6f14c(resolvedFlexItemInfo, resolvedFlexItemInfo.getBaseline(), flexLine.getMaxAboveBaseline(), resolvedFlexItemInfo.getCrossAxisSize(), flexLine.getCrossAxisSize(), resolvedFlexBoxConfig.m2059getAlignItems20X20zU$foundation_layout()));
            if (i4 == i5) {
                return;
            } else {
                i4 += i6;
            }
        }
    }

    /* JADX INFO: renamed from: processFlexLine-7gjidqw, reason: not valid java name */
    private final void m1847processFlexLine7gjidqw(FlexLine flexLine, ArrayList<ResolvedFlexItemInfo> arrayList, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, boolean z, long j, int i2) {
        flexLine.setMainAxisSize(resolveFlexibleLengths(FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfig.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2)), arrayList, resolvedFlexBoxConfig, flexLine.getStartIndex(), flexLine.getEndIndex(), i, Constraints.m8995getMaxWidthimpl(j)));
        if (z) {
            calculateLineCrossAxisSize(arrayList, resolvedFlexBoxConfig, flexLine, i2);
        }
    }

    /* JADX INFO: renamed from: resolveFlexBoxConfig-3p2s80s, reason: not valid java name */
    private final ResolvedFlexBoxConfig m1848resolveFlexBoxConfig3p2s80s(FlexBoxConfig flexBoxConfig, Density density, long j) {
        this.resolvedFlexBoxConfig.m2065prepare0kLqBqw(density, j);
        flexBoxConfig.configure(this.resolvedFlexBoxConfig);
        return this.resolvedFlexBoxConfig;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00ab  */
    private final int resolveFlexibleLengths(boolean z, ArrayList<ResolvedFlexItemInfo> arrayList, ResolvedFlexBoxConfig resolvedFlexBoxConfig, int i, int i2, int i3, int i4) {
        int targetMainSize;
        int targetMainSize2;
        int i5;
        float f;
        int i6;
        ArrayList<ResolvedFlexItemInfo> arrayList2 = arrayList;
        int i7 = i;
        int i8 = i4;
        int i9 = i2 - i7;
        boolean z2 = false;
        if (i9 > 0) {
            targetMainSize = resolvedFlexBoxConfig.mainAxisGap() * (i9 - 1);
        } else {
            targetMainSize = 0;
        }
        if (i8 == Integer.MAX_VALUE) {
            if (i7 < 0 || i7 > arrayList2.size()) {
                eq.c(arrayList2.size(), n7.c(i7, "fromIndex (", ") is out of bounds [0, "));
                return 0;
            }
            if (i2 < 0 || i2 > arrayList2.size()) {
                eq.c(arrayList2.size(), n7.c(i2, "toIndex (", ") is out of bounds [0, "));
                return 0;
            }
            while (i7 < i2) {
                ResolvedFlexItemInfo resolvedFlexItemInfo = arrayList2.get(i7);
                resolvedFlexItemInfo.setTargetMainSize(resolvedFlexItemInfo.getHypotheticalMainSize());
                targetMainSize += resolvedFlexItemInfo.getTargetMainSize();
                i7++;
            }
            return targetMainSize;
        }
        boolean z3 = i3 < i8;
        if (i7 < 0 || i7 > arrayList2.size()) {
            eq.c(arrayList.size(), n7.c(i7, "fromIndex (", ") is out of bounds [0, "));
            return 0;
        }
        if (i2 < 0 || i2 > arrayList2.size()) {
            eq.c(arrayList.size(), n7.c(i2, "toIndex (", ") is out of bounds [0, "));
            return 0;
        }
        int i10 = i7;
        int targetMainSize3 = 0;
        int flexBaseSize = 0;
        int i11 = 0;
        float f2 = 0.0f;
        float grow$foundation_layout = 0.0f;
        float shrink$foundation_layout = 0.0f;
        while (i10 < i2) {
            ResolvedFlexItemInfo resolvedFlexItemInfo2 = arrayList2.get(i10);
            float grow$foundation_layout2 = z3 ? resolvedFlexItemInfo2.getGrow$foundation_layout() : resolvedFlexItemInfo2.getShrink$foundation_layout();
            if (grow$foundation_layout2 != 0.0f) {
                if (!z3) {
                    if (resolvedFlexItemInfo2.getFlexBaseSize() < resolvedFlexItemInfo2.getHypotheticalMainSize()) {
                        resolvedFlexItemInfo2.setTargetMainSize(resolvedFlexItemInfo2.getHypotheticalMainSize());
                        resolvedFlexItemInfo2.setFrozen(true);
                        targetMainSize3 += resolvedFlexItemInfo2.getTargetMainSize();
                    } else {
                        z2 = false;
                    }
                }
                resolvedFlexItemInfo2.setFrozen(z2);
                i11++;
                flexBaseSize += resolvedFlexItemInfo2.getFlexBaseSize();
                f2 += grow$foundation_layout2;
                if (z3) {
                    grow$foundation_layout = resolvedFlexItemInfo2.getGrow$foundation_layout() + grow$foundation_layout;
                } else {
                    shrink$foundation_layout = (resolvedFlexItemInfo2.getShrink$foundation_layout() * resolvedFlexItemInfo2.getFlexBaseSize()) + shrink$foundation_layout;
                }
            } else {
                resolvedFlexItemInfo2.setTargetMainSize(resolvedFlexItemInfo2.getHypotheticalMainSize());
                resolvedFlexItemInfo2.setFrozen(true);
                targetMainSize3 += resolvedFlexItemInfo2.getTargetMainSize();
            }
            i10++;
            z2 = false;
        }
        float f3 = ((i8 - targetMainSize) - targetMainSize3) - flexBaseSize;
        float f4 = 1.0f;
        if (z3) {
            float f5 = i8 - ((targetMainSize + targetMainSize3) + flexBaseSize);
            if (f2 < 1.0f) {
                float f6 = f3 * f2;
                if (Math.abs(f6) < Math.abs(f5)) {
                    f5 = f6;
                }
            }
            if (i7 < 0 || i7 > arrayList2.size()) {
                eq.c(arrayList2.size(), n7.c(i7, "fromIndex (", ") is out of bounds [0, "));
                return 0;
            }
            if (i2 < 0 || i2 > arrayList2.size()) {
                eq.c(arrayList2.size(), n7.c(i2, "toIndex (", ") is out of bounds [0, "));
                return 0;
            }
            targetMainSize2 = 0;
            while (i7 < i2) {
                ResolvedFlexItemInfo resolvedFlexItemInfo3 = arrayList2.get(i7);
                if (!resolvedFlexItemInfo3.isFrozen()) {
                    int iRound = Math.round((grow$foundation_layout > 0.0f ? resolvedFlexItemInfo3.getGrow$foundation_layout() / grow$foundation_layout : 0.0f) * f5);
                    f5 -= iRound;
                    grow$foundation_layout -= resolvedFlexItemInfo3.getGrow$foundation_layout();
                    resolvedFlexItemInfo3.setTargetMainSize(resolvedFlexItemInfo3.getFlexBaseSize() + iRound);
                    targetMainSize2 = resolvedFlexItemInfo3.getTargetMainSize() + targetMainSize2;
                }
                i7++;
            }
        } else {
            boolean z4 = true;
            int i12 = 0;
            int i13 = 0;
            while (z4 && i12 < i9) {
                i12++;
                if (i11 != 0) {
                    float f7 = i8 - ((targetMainSize + targetMainSize3) + flexBaseSize);
                    if (f2 < f4) {
                        float f8 = f3 * f2;
                        if (Math.abs(f8) < Math.abs(f7)) {
                            f7 = f8;
                        }
                    }
                    float fAbs = Math.abs(f7);
                    if (i7 < 0 || i7 > arrayList2.size()) {
                        eq.c(arrayList.size(), n7.c(i7, "fromIndex (", ") is out of bounds [0, "));
                        return 0;
                    }
                    if (i2 < 0 || i2 > arrayList2.size()) {
                        eq.c(arrayList.size(), n7.c(i2, "toIndex (", ") is out of bounds [0, "));
                        return 0;
                    }
                    int i14 = i7;
                    float flexBaseSize2 = fAbs;
                    float shrink$foundation_layout2 = f2;
                    float f9 = shrink$foundation_layout;
                    z4 = false;
                    int flexBaseSize3 = flexBaseSize;
                    int i15 = targetMainSize3;
                    int targetMainSize4 = 0;
                    while (i14 < i2) {
                        ResolvedFlexItemInfo resolvedFlexItemInfo4 = arrayList2.get(i14);
                        if (resolvedFlexItemInfo4.isFrozen()) {
                            i5 = i9;
                            f = f3;
                            i6 = i14;
                        } else {
                            float shrink$foundation_layout3 = resolvedFlexItemInfo4.getShrink$foundation_layout() * resolvedFlexItemInfo4.getFlexBaseSize();
                            int iRound2 = Math.round((f9 > 0.0f ? shrink$foundation_layout3 / f9 : 0.0f) * flexBaseSize2);
                            i5 = i9;
                            int flexBaseSize4 = resolvedFlexItemInfo4.getFlexBaseSize() - iRound2;
                            f = f3;
                            i6 = i14;
                            int minMainAxisSize$foundation_layout = resolvedFlexItemInfo4.getMinMainAxisSize$foundation_layout(z);
                            if (flexBaseSize4 < minMainAxisSize$foundation_layout) {
                                resolvedFlexItemInfo4.setFrozen(true);
                                flexBaseSize2 -= resolvedFlexItemInfo4.getFlexBaseSize() - minMainAxisSize$foundation_layout;
                                f9 -= shrink$foundation_layout3;
                                resolvedFlexItemInfo4.setTargetMainSize(minMainAxisSize$foundation_layout);
                                i11--;
                                i15 += minMainAxisSize$foundation_layout;
                                flexBaseSize3 -= resolvedFlexItemInfo4.getFlexBaseSize();
                                shrink$foundation_layout -= shrink$foundation_layout3;
                                shrink$foundation_layout2 -= resolvedFlexItemInfo4.getShrink$foundation_layout();
                                z4 = true;
                            } else {
                                flexBaseSize2 -= iRound2;
                                f9 -= shrink$foundation_layout3;
                                resolvedFlexItemInfo4.setTargetMainSize(flexBaseSize4);
                                targetMainSize4 += resolvedFlexItemInfo4.getTargetMainSize();
                            }
                        }
                        i14 = i6 + 1;
                        arrayList2 = arrayList;
                        f3 = f;
                        i9 = i5;
                    }
                    arrayList2 = arrayList;
                    i8 = i4;
                    i13 = targetMainSize4;
                    targetMainSize3 = i15;
                    flexBaseSize = flexBaseSize3;
                    f2 = shrink$foundation_layout2;
                    f4 = 1.0f;
                } else {
                    targetMainSize2 = 0;
                }
            }
            targetMainSize2 = i13;
        }
        return targetMainSize + targetMainSize3 + targetMainSize2;
    }

    private final int totalCrossAxisSize(ArrayList<FlexLine> arrayList, boolean z) {
        if (arrayList.isEmpty()) {
            return 0;
        }
        int size = z ? 0 : arrayList.size() - 1;
        return arrayList.get(size).getCrossStart() + arrayList.get(size).getCrossAxisSize();
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int i2;
        ResolvedFlexBoxConfig resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s = m1848resolveFlexBoxConfig3p2s80s(this.flexBoxConfigState.getValue(), intrinsicMeasureScope, ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
        int i3 = 0;
        if (!FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) && !FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) {
            if (list.isEmpty()) {
                return 0;
            }
            int iMainAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
            if (FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) {
                int size = list.size();
                int iMax = 0;
                while (i3 < size) {
                    iMax = Math.max(iMax, list.get(i3).maxIntrinsicHeight(i));
                    i3++;
                }
                return iMax;
            }
            int size2 = list.size();
            int iMaxIntrinsicHeight = 0;
            for (int i4 = 0; i4 < size2; i4++) {
                iMaxIntrinsicHeight += list.get(i4).maxIntrinsicHeight(i);
            }
            int size3 = list.size() - 1;
            return ((size3 >= 0 ? size3 : 0) * iMainAxisGap) + iMaxIntrinsicHeight;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iMainAxisGap2 = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
        int iCrossAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.crossAxisGap();
        int size4 = list.size();
        int i5 = 0;
        int iMax2 = 0;
        int i6 = 0;
        while (i3 < size4) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i3);
            int iMaxIntrinsicWidth = intrinsicMeasurable.maxIntrinsicWidth(Integer.MAX_VALUE);
            int iMaxIntrinsicHeight2 = intrinsicMeasurable.maxIntrinsicHeight(iMaxIntrinsicWidth);
            if ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && i6 != 0 && i6 + iMaxIntrinsicWidth > i) {
                i2 = iMaxIntrinsicWidth + iMainAxisGap2;
                i5 = iMax2 + iCrossAxisGap + i5;
                iMax2 = iMaxIntrinsicHeight2;
            } else {
                i2 = iMaxIntrinsicWidth + iMainAxisGap2 + i6;
                iMax2 = Math.max(iMax2, iMaxIntrinsicHeight2);
            }
            i6 = i2;
            i3++;
        }
        return i5 + iMax2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int i2;
        ResolvedFlexBoxConfig resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s = m1848resolveFlexBoxConfig3p2s80s(this.flexBoxConfigState.getValue(), intrinsicMeasureScope, ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
        int i3 = 0;
        if (FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) {
            if (list.isEmpty()) {
                return 0;
            }
            int iMainAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
            if (FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) {
                int size = list.size();
                int iMax = 0;
                while (i3 < size) {
                    iMax = Math.max(iMax, list.get(i3).maxIntrinsicWidth(i));
                    i3++;
                }
                return iMax;
            }
            int size2 = list.size();
            int iMaxIntrinsicWidth = 0;
            for (int i4 = 0; i4 < size2; i4++) {
                iMaxIntrinsicWidth += list.get(i4).maxIntrinsicWidth(i);
            }
            int size3 = list.size() - 1;
            return ((size3 >= 0 ? size3 : 0) * iMainAxisGap) + iMaxIntrinsicWidth;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iMainAxisGap2 = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
        int iCrossAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.crossAxisGap();
        int size4 = list.size();
        int i5 = 0;
        int iMax2 = 0;
        int i6 = 0;
        while (i3 < size4) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i3);
            int iMaxIntrinsicHeight = intrinsicMeasurable.maxIntrinsicHeight(Integer.MAX_VALUE);
            int iMaxIntrinsicWidth2 = intrinsicMeasurable.maxIntrinsicWidth(iMaxIntrinsicHeight);
            if ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && i6 != 0 && i6 + iMaxIntrinsicHeight > i) {
                i2 = iMaxIntrinsicHeight + iMainAxisGap2;
                i5 = iMax2 + iCrossAxisGap + i5;
                iMax2 = iMaxIntrinsicWidth2;
            } else {
                i2 = iMaxIntrinsicHeight + iMainAxisGap2 + i6;
                iMax2 = Math.max(iMax2, iMaxIntrinsicWidth2);
            }
            i6 = i2;
            i3++;
        }
        return i5 + iMax2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        if (list.isEmpty()) {
            return MeasureScope.layout$default(measureScope, Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j), null, new l(), 4, null);
        }
        ResolvedFlexBoxConfig resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s = m1848resolveFlexBoxConfig3p2s80s(this.flexBoxConfigState.getValue(), measureScope, j);
        return m1844measureFlexBoxw1Onq5I(measureScope, resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s, list, OrientationIndependentConstraints.m2002constructorimpl(j, (FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical), FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2)));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int i2;
        ResolvedFlexBoxConfig resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s = m1848resolveFlexBoxConfig3p2s80s(this.flexBoxConfigState.getValue(), intrinsicMeasureScope, ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
        int i3 = 0;
        if (!FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) && !FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) {
            if (list.isEmpty()) {
                return 0;
            }
            int iMainAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
            if (FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) {
                int size = list.size();
                int iMax = 0;
                while (i3 < size) {
                    iMax = Math.max(iMax, list.get(i3).minIntrinsicHeight(i));
                    i3++;
                }
                return iMax;
            }
            int size2 = list.size();
            int iMinIntrinsicHeight = 0;
            for (int i4 = 0; i4 < size2; i4++) {
                iMinIntrinsicHeight += list.get(i4).minIntrinsicHeight(i);
            }
            int size3 = list.size() - 1;
            return ((size3 >= 0 ? size3 : 0) * iMainAxisGap) + iMinIntrinsicHeight;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iMainAxisGap2 = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
        int iCrossAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.crossAxisGap();
        int size4 = list.size();
        int i5 = 0;
        int iMax2 = 0;
        int i6 = 0;
        while (i3 < size4) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i3);
            int iMinIntrinsicWidth = intrinsicMeasurable.minIntrinsicWidth(Integer.MAX_VALUE);
            int iMinIntrinsicHeight2 = intrinsicMeasurable.minIntrinsicHeight(iMinIntrinsicWidth);
            if ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && i6 != 0 && i6 + iMinIntrinsicWidth > i) {
                i2 = iMinIntrinsicWidth + iMainAxisGap2;
                i5 = iMax2 + iCrossAxisGap + i5;
                iMax2 = iMinIntrinsicHeight2;
            } else {
                i2 = iMinIntrinsicWidth + iMainAxisGap2 + i6;
                iMax2 = Math.max(iMax2, iMinIntrinsicHeight2);
            }
            i6 = i2;
            i3++;
        }
        return i5 + iMax2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i) {
        int i2;
        ResolvedFlexBoxConfig resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s = m1848resolveFlexBoxConfig3p2s80s(this.flexBoxConfigState.getValue(), intrinsicMeasureScope, ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
        int i3 = 0;
        if (FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(0)) || FlexDirection.m1855equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2061getDirectionT4wFHC8$foundation_layout(), FlexDirection.m1853constructorimpl(2))) {
            if (list.isEmpty()) {
                return 0;
            }
            int iMainAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
            if (FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) {
                int size = list.size();
                int iMax = 0;
                while (i3 < size) {
                    iMax = Math.max(iMax, list.get(i3).minIntrinsicWidth(i));
                    i3++;
                }
                return iMax;
            }
            int size2 = list.size();
            int iMinIntrinsicWidth = 0;
            for (int i4 = 0; i4 < size2; i4++) {
                iMinIntrinsicWidth += list.get(i4).minIntrinsicWidth(i);
            }
            int size3 = list.size() - 1;
            return ((size3 >= 0 ? size3 : 0) * iMainAxisGap) + iMinIntrinsicWidth;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int iMainAxisGap2 = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.mainAxisGap();
        int iCrossAxisGap = resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.crossAxisGap();
        int size4 = list.size();
        int i5 = 0;
        int iMax2 = 0;
        int i6 = 0;
        while (i3 < size4) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i3);
            int iMinIntrinsicHeight = intrinsicMeasurable.minIntrinsicHeight(Integer.MAX_VALUE);
            int iMinIntrinsicWidth2 = intrinsicMeasurable.minIntrinsicWidth(iMinIntrinsicHeight);
            if ((FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(1)) || FlexWrap.m1879equalsimpl0(resolvedFlexBoxConfigM1848resolveFlexBoxConfig3p2s80s.m2064getWrap7ziDAWk$foundation_layout(), FlexWrap.m1877constructorimpl(2))) && i6 != 0 && i6 + iMinIntrinsicHeight > i) {
                i2 = iMinIntrinsicHeight + iMainAxisGap2;
                i5 = iMax2 + iCrossAxisGap + i5;
                iMax2 = iMinIntrinsicWidth2;
            } else {
                i2 = iMinIntrinsicHeight + iMainAxisGap2 + i6;
                iMax2 = Math.max(iMax2, iMinIntrinsicWidth2);
            }
            i6 = i2;
            i3++;
        }
        return i5 + iMax2;
    }
}
