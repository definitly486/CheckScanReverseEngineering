package androidx.compose.material3;

import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.il1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qs0;
import defpackage.ry1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class OverflowMeasurePolicy implements MultiContentMeasurePolicy {
    public static final int $stable = 0;
    private final boolean isVertical;
    private final int maxItemCount;
    private final AppBarOverflowState overflowState;

    public OverflowMeasurePolicy(AppBarOverflowState appBarOverflowState, int i, boolean z) {
        this.overflowState = appBarOverflowState;
        this.maxItemCount = i;
        this.isVertical = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$11(List list, List list2, Placeable.PlacementScope placementScope) {
        int size = list.size();
        int i = 0;
        int height = 0;
        while (i < size) {
            Placeable placeable = (Placeable) list.get(i);
            Placeable.PlacementScope placementScope2 = placementScope;
            Placeable.PlacementScope.placeRelative$default(placementScope2, placeable, 0, height, 0.0f, 4, null);
            height += placeable.getHeight();
            i++;
            placementScope = placementScope2;
        }
        Placeable.PlacementScope placementScope3 = placementScope;
        if (list2 != null) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Placeable.PlacementScope.placeRelative$default(placementScope3, (Placeable) list2.get(i2), 0, height, 0.0f, 4, null);
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$14(List list, List list2, Placeable.PlacementScope placementScope) {
        int size = list.size();
        int i = 0;
        int width = 0;
        while (i < size) {
            Placeable placeable = (Placeable) list.get(i);
            Placeable.PlacementScope placementScope2 = placementScope;
            Placeable.PlacementScope.placeRelative$default(placementScope2, placeable, width, 0, 0.0f, 4, null);
            width += placeable.getWidth();
            i++;
            placementScope = placementScope2;
        }
        Placeable.PlacementScope placementScope3 = placementScope;
        if (list2 != null) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Placeable.PlacementScope.placeRelative$default(placementScope3, (Placeable) list2.get(i2), width, 0, 0.0f, 4, null);
            }
        }
        return j59.a;
    }

    public final int getMaxItemCount() {
        return this.maxItemCount;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0072  */
    /* JADX WARN: Code duplicated, block: B:83:0x01c6  */
    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1910measure3p2s80s(MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        Integer numValueOf;
        int iIntValue;
        int i;
        ArrayList arrayList;
        Integer numValueOf2;
        int iIntValue2;
        Integer numValueOf3;
        int iMax;
        Integer num;
        Integer numValueOf4;
        Integer num2;
        Integer numValueOf5;
        Integer numValueOf6;
        int iIntValue3 = 0;
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        List<? extends Measurable> list2 = list.get(0);
        int i2 = 1;
        List<? extends Measurable> list3 = list.get(1);
        this.overflowState.setTotalItemCount(list2.size());
        if (this.isVertical) {
            if (!list3.isEmpty()) {
                numValueOf6 = Integer.valueOf(list3.get(0).maxIntrinsicHeight(Constraints.m8995getMaxWidthimpl(j)));
                int size = list3.size() - 1;
                if (1 <= size) {
                    int i3 = 1;
                    while (true) {
                        Integer numValueOf7 = Integer.valueOf(list3.get(i3).maxIntrinsicHeight(Constraints.m8995getMaxWidthimpl(j)));
                        if (numValueOf7.compareTo(numValueOf6) > 0) {
                            numValueOf6 = numValueOf7;
                        }
                        if (i3 == size) {
                            break;
                        }
                        i3++;
                    }
                }
            } else {
                numValueOf6 = null;
            }
            if (numValueOf6 != null) {
                iIntValue = numValueOf6.intValue();
            } else {
                iIntValue = 0;
            }
        } else {
            if (!list3.isEmpty()) {
                numValueOf = Integer.valueOf(list3.get(0).maxIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)));
                int size2 = list3.size() - 1;
                if (1 <= size2) {
                    int i4 = 1;
                    while (true) {
                        Integer numValueOf8 = Integer.valueOf(list3.get(i4).maxIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)));
                        if (numValueOf8.compareTo(numValueOf) > 0) {
                            numValueOf = numValueOf8;
                        }
                        if (i4 == size2) {
                            break;
                        }
                        i4++;
                    }
                }
            } else {
                numValueOf = null;
            }
            if (numValueOf != null) {
                iIntValue = numValueOf.intValue();
            } else {
                iIntValue = 0;
            }
        }
        int iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(this.isVertical ? Constraints.m8994getMaxHeightimpl(j) : Constraints.m8995getMaxWidthimpl(j), iIntValue);
        ArrayList arrayList2 = new ArrayList();
        int size3 = list2.size();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i5 >= size3) {
                i = i2;
                break;
            }
            Placeable placeableMo7702measureBRTryo0 = list2.get(i5).mo7702measureBRTryo0(jM8985copyZbe2FdA$default);
            i = i2;
            int i7 = i5 == list2.size() + (-1) ? i : 0;
            if (i7 == 0 && i5 == this.maxItemCount - 1) {
                break;
            }
            int height = this.isVertical ? placeableMo7702measureBRTryo0.getHeight() : placeableMo7702measureBRTryo0.getWidth();
            if (height > iSubtractConstraintSafely && (i7 == 0 || height > iSubtractConstraintSafely + iIntValue)) {
                break;
            }
            arrayList2.add(placeableMo7702measureBRTryo0);
            i6 += height;
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, height);
            i5++;
            i2 = i;
        }
        this.overflowState.setVisibleItemCount(arrayList2.size());
        if (arrayList2.size() != list2.size()) {
            long jM8985copyZbe2FdA$default2 = this.isVertical ? Constraints.m8985copyZbe2FdA$default(jM8985copyZbe2FdA$default, 0, 0, 0, iSubtractConstraintSafely + iIntValue, 7, null) : Constraints.m8985copyZbe2FdA$default(jM8985copyZbe2FdA$default, 0, iSubtractConstraintSafely + iIntValue, 0, 0, 13, null);
            arrayList = new ArrayList(list3.size());
            int size4 = list3.size();
            for (int iB = 0; iB < size4; iB = il1.b(list3.get(iB), jM8985copyZbe2FdA$default2, arrayList, iB, i)) {
            }
        } else {
            arrayList2 = arrayList2;
            arrayList = null;
        }
        int i8 = i;
        if (this.isVertical) {
            if (arrayList == null) {
                iIntValue2 = 0;
            } else {
                if (!arrayList.isEmpty()) {
                    numValueOf5 = Integer.valueOf(((Placeable) arrayList.get(0)).getHeight());
                    int size5 = arrayList.size() - i8;
                    if (i8 <= size5) {
                        int i9 = i8;
                        while (true) {
                            Integer numValueOf9 = Integer.valueOf(((Placeable) arrayList.get(i9)).getHeight());
                            if (numValueOf9.compareTo(numValueOf5) > 0) {
                                numValueOf5 = numValueOf9;
                            }
                            if (i9 == size5) {
                                break;
                            }
                            i9++;
                        }
                    }
                } else {
                    numValueOf5 = null;
                }
                if (numValueOf5 != null) {
                    iIntValue2 = numValueOf5.intValue();
                } else {
                    iIntValue2 = 0;
                }
            }
        } else if (arrayList == null) {
            iIntValue2 = 0;
        } else {
            if (!arrayList.isEmpty()) {
                numValueOf2 = Integer.valueOf(((Placeable) arrayList.get(0)).getWidth());
                int size6 = arrayList.size() - i8;
                if (i8 <= size6) {
                    int i10 = i8;
                    while (true) {
                        Integer numValueOf10 = Integer.valueOf(((Placeable) arrayList.get(i10)).getWidth());
                        if (numValueOf10.compareTo(numValueOf2) > 0) {
                            numValueOf2 = numValueOf10;
                        }
                        if (i10 == size6) {
                            break;
                        }
                        i10++;
                    }
                }
            } else {
                numValueOf2 = null;
            }
            if (numValueOf2 != null) {
                iIntValue2 = numValueOf2.intValue();
            } else {
                iIntValue2 = 0;
            }
        }
        int i11 = i6 + iIntValue2;
        if (this.isVertical) {
            if (arrayList2.isEmpty()) {
                numValueOf4 = null;
            } else {
                numValueOf4 = Integer.valueOf(((Placeable) arrayList2.get(0)).getWidth());
                int size7 = arrayList2.size() - i8;
                if (i8 <= size7) {
                    Integer num3 = numValueOf4;
                    int i12 = i8;
                    while (true) {
                        Integer numValueOf11 = Integer.valueOf(((Placeable) arrayList2.get(i12)).getWidth());
                        if (numValueOf11.compareTo(num3) > 0) {
                            num3 = numValueOf11;
                        }
                        if (i12 == size7) {
                            break;
                        }
                        i12++;
                    }
                    numValueOf4 = num3;
                }
            }
            int iIntValue4 = numValueOf4 != null ? numValueOf4.intValue() : 0;
            if (arrayList != null) {
                if (arrayList.isEmpty()) {
                    num2 = null;
                } else {
                    Integer numValueOf12 = Integer.valueOf(((Placeable) arrayList.get(0)).getWidth());
                    int size8 = arrayList.size() - i8;
                    if (i8 <= size8) {
                        while (true) {
                            Integer numValueOf13 = Integer.valueOf(((Placeable) arrayList.get(i8)).getWidth());
                            if (numValueOf13.compareTo(numValueOf12) > 0) {
                                numValueOf12 = numValueOf13;
                            }
                            if (i8 == size8) {
                                break;
                            }
                            i8++;
                        }
                    }
                    num2 = numValueOf12;
                }
                if (num2 != null) {
                    iIntValue3 = num2.intValue();
                }
            }
            iMax = Math.max(iIntValue4, iIntValue3);
        } else {
            if (arrayList2.isEmpty()) {
                numValueOf3 = null;
            } else {
                numValueOf3 = Integer.valueOf(((Placeable) arrayList2.get(0)).getHeight());
                int size9 = arrayList2.size() - i8;
                if (i8 <= size9) {
                    Integer num4 = numValueOf3;
                    int i13 = i8;
                    while (true) {
                        Integer numValueOf14 = Integer.valueOf(((Placeable) arrayList2.get(i13)).getHeight());
                        if (numValueOf14.compareTo(num4) > 0) {
                            num4 = numValueOf14;
                        }
                        if (i13 == size9) {
                            break;
                        }
                        i13++;
                    }
                    numValueOf3 = num4;
                }
            }
            int iIntValue5 = numValueOf3 != null ? numValueOf3.intValue() : 0;
            if (arrayList != null) {
                if (arrayList.isEmpty()) {
                    num = null;
                } else {
                    Integer numValueOf15 = Integer.valueOf(((Placeable) arrayList.get(0)).getHeight());
                    int size10 = arrayList.size() - i8;
                    if (i8 <= size10) {
                        while (true) {
                            Integer numValueOf16 = Integer.valueOf(((Placeable) arrayList.get(i8)).getHeight());
                            if (numValueOf16.compareTo(numValueOf15) > 0) {
                                numValueOf15 = numValueOf16;
                            }
                            if (i8 == size10) {
                                break;
                            }
                            i8++;
                        }
                    }
                    num = numValueOf15;
                }
                if (num != null) {
                    iIntValue3 = num.intValue();
                }
            }
            iMax = Math.max(iIntValue5, iIntValue3);
        }
        int i14 = 1;
        return this.isVertical ? MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, iMax), ConstraintsKt.m9011constrainHeightK40F9xA(j, i11), null, new qs0(i14, arrayList2, arrayList), 4, null) : MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, i11), ConstraintsKt.m9011constrainHeightK40F9xA(j, iMax), null, new ry1(i14, arrayList2, arrayList), 4, null);
    }

    public /* synthetic */ OverflowMeasurePolicy(AppBarOverflowState appBarOverflowState, int i, boolean z, int i2, jh2 jh2Var) {
        this(appBarOverflowState, i, (i2 & 4) != 0 ? false : z);
    }
}
