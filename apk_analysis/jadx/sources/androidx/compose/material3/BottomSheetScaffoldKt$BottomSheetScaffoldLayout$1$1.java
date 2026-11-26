package androidx.compose.material3;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.il1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.w65;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1 implements MultiContentMeasurePolicy {
    final /* synthetic */ ll3<Float> $sheetOffset;
    final /* synthetic */ SheetState $sheetState;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SheetValue.values().length];
            try {
                iArr[SheetValue.PartiallyExpanded.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SheetValue.Expanded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SheetValue.Hidden.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1(SheetState sheetState, ll3<Float> ll3Var) {
        this.$sheetState = sheetState;
        this.$sheetOffset = ll3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$12(List list, int i, List list2, SheetState sheetState, ll3 ll3Var, int i2, List list3, List list4, int i3, Placeable.PlacementScope placementScope) {
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        int iB;
        if (!list.isEmpty()) {
            numValueOf = Integer.valueOf(((Placeable) list.get(0)).getWidth());
            int size = list.size() - 1;
            if (1 <= size) {
                int i4 = 1;
                while (true) {
                    Integer numValueOf4 = Integer.valueOf(((Placeable) list.get(i4)).getWidth());
                    if (numValueOf4.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf4;
                    }
                    if (i4 == size) {
                        break;
                    }
                    i4++;
                }
            }
        } else {
            numValueOf = null;
        }
        int iMax = Math.max(0, (i - (numValueOf != null ? numValueOf.intValue() : 0)) / 2);
        if (!list2.isEmpty()) {
            numValueOf2 = Integer.valueOf(((Placeable) list2.get(0)).getWidth());
            int size2 = list2.size() - 1;
            if (1 <= size2) {
                int i5 = 1;
                while (true) {
                    Integer numValueOf5 = Integer.valueOf(((Placeable) list2.get(i5)).getWidth());
                    if (numValueOf5.compareTo(numValueOf2) > 0) {
                        numValueOf2 = numValueOf5;
                    }
                    if (i5 == size2) {
                        break;
                    }
                    i5++;
                }
            }
        } else {
            numValueOf2 = null;
        }
        int iIntValue = numValueOf2 != null ? numValueOf2.intValue() : 0;
        if (!list2.isEmpty()) {
            numValueOf3 = Integer.valueOf(((Placeable) list2.get(0)).getHeight());
            int size3 = list2.size() - 1;
            if (1 <= size3) {
                int i6 = 1;
                while (true) {
                    Integer numValueOf6 = Integer.valueOf(((Placeable) list2.get(i6)).getHeight());
                    if (numValueOf6.compareTo(numValueOf3) > 0) {
                        numValueOf3 = numValueOf6;
                    }
                    if (i6 == size3) {
                        break;
                    }
                    i6++;
                }
            }
        } else {
            numValueOf3 = null;
        }
        int iIntValue2 = numValueOf3 != null ? numValueOf3.intValue() : 0;
        int i7 = (i - iIntValue) / 2;
        int i8 = WhenMappings.$EnumSwitchMapping$0[sheetState.getCurrentValue().ordinal()];
        if (i8 == 1) {
            iB = w65.b(((Number) ll3Var.invoke()).floatValue()) - iIntValue2;
        } else {
            if (i8 != 2 && i8 != 3) {
                me0.e();
                return null;
            }
            iB = i2 - iIntValue2;
        }
        int size4 = list3.size();
        for (int i9 = 0; i9 < size4; i9++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list3.get(i9), 0, i3, 0.0f, 4, null);
        }
        int size5 = list4.size();
        for (int i10 = 0; i10 < size5; i10++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list4.get(i10), 0, 0, 0.0f, 4, null);
        }
        int size6 = list.size();
        for (int i11 = 0; i11 < size6; i11++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list.get(i11), iMax, 0, 0.0f, 4, null);
        }
        int size7 = list2.size();
        for (int i12 = 0; i12 < size7; i12++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list2.get(i12), i7, iB, 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1910measure3p2s80s(MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        Integer numValueOf;
        List<? extends Measurable> list2 = list.get(0);
        List<? extends Measurable> list3 = list.get(1);
        List<? extends Measurable> list4 = list.get(2);
        List<? extends Measurable> list5 = list.get(3);
        final int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        final ArrayList arrayList = new ArrayList(list4.size());
        int size = list4.size();
        int iB = 0;
        while (iB < size) {
            iB = il1.b(list4.get(iB), jM8985copyZbe2FdA$default, arrayList, iB, 1);
            iM8994getMaxHeightimpl = iM8994getMaxHeightimpl;
        }
        final int i = iM8994getMaxHeightimpl;
        final ArrayList arrayList2 = new ArrayList(list2.size());
        int size2 = list2.size();
        for (int iB2 = 0; iB2 < size2; iB2 = il1.b(list2.get(iB2), jM8985copyZbe2FdA$default, arrayList2, iB2, 1)) {
        }
        if (!arrayList2.isEmpty()) {
            numValueOf = Integer.valueOf(((Placeable) arrayList2.get(0)).getHeight());
            int size3 = arrayList2.size() - 1;
            if (1 <= size3) {
                int i2 = 1;
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((Placeable) arrayList2.get(i2)).getHeight());
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size3) {
                        break;
                    }
                    i2++;
                }
            }
        } else {
            numValueOf = null;
        }
        final int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
        long jM8985copyZbe2FdA$default2 = Constraints.m8985copyZbe2FdA$default(jM8985copyZbe2FdA$default, 0, 0, 0, i - iIntValue, 7, null);
        final ArrayList arrayList3 = new ArrayList(list3.size());
        int size4 = list3.size();
        for (int iB3 = 0; iB3 < size4; iB3 = il1.b(list3.get(iB3), jM8985copyZbe2FdA$default2, arrayList3, iB3, 1)) {
        }
        final ArrayList arrayList4 = new ArrayList(list5.size());
        int size5 = list5.size();
        for (int iB4 = 0; iB4 < size5; iB4 = il1.b(list5.get(iB4), jM8985copyZbe2FdA$default, arrayList4, iB4, 1)) {
        }
        final SheetState sheetState = this.$sheetState;
        final ll3<Float> ll3Var = this.$sheetOffset;
        return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, i, null, new nl3() { // from class: androidx.compose.material3.h
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1.measure_3p2s80s$lambda$12(arrayList, iM8995getMaxWidthimpl, arrayList4, sheetState, ll3Var, i, arrayList3, arrayList2, iIntValue, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
