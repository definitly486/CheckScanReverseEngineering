package androidx.compose.material3;

import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.gestures.DraggableAnchorsConfig;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationDrawerKt$ModalNavigationDrawer$2$6$1 implements MeasurePolicy {
    final /* synthetic */ MutableState<Boolean> $anchorsInitialized$delegate;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ float $maxValue;
    final /* synthetic */ MutableFloatState $minValue$delegate;

    public NavigationDrawerKt$ModalNavigationDrawer$2$6$1(DrawerState drawerState, MutableState<Boolean> mutableState, MutableFloatState mutableFloatState, float f) {
        this.$drawerState = drawerState;
        this.$anchorsInitialized$delegate = mutableState;
        this.$minValue$delegate = mutableFloatState;
        this.$maxValue = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$5(DrawerState drawerState, int i, List list, MutableState mutableState, final MutableFloatState mutableFloatState, final float f, Placeable.PlacementScope placementScope) {
        float fPositionOf = drawerState.getAnchoredDraggableState$material3().getAnchors().positionOf(DrawerValue.Closed);
        float f2 = -i;
        if (!NavigationDrawerKt.ModalNavigationDrawer_FHprtrg$lambda$5(mutableState) || fPositionOf != f2) {
            if (!NavigationDrawerKt.ModalNavigationDrawer_FHprtrg$lambda$5(mutableState)) {
                NavigationDrawerKt.ModalNavigationDrawer_FHprtrg$lambda$6(mutableState, true);
            }
            mutableFloatState.setFloatValue(f2);
            AnchoredDraggableState.updateAnchors$default(drawerState.getAnchoredDraggableState$material3(), AnchoredDraggableKt.DraggableAnchors(new nl3() { // from class: androidx.compose.material3.a3
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return NavigationDrawerKt$ModalNavigationDrawer$2$6$1.measure_3p2s80s$lambda$5$lambda$3(f, mutableFloatState, (DraggableAnchorsConfig) obj);
                }
            }), null, 2, null);
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list.get(i2), 0, 0, 0.0f, 4, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$5$lambda$3(float f, MutableFloatState mutableFloatState, DraggableAnchorsConfig draggableAnchorsConfig) {
        draggableAnchorsConfig.at(DrawerValue.Closed, mutableFloatState.getFloatValue());
        draggableAnchorsConfig.at(DrawerValue.Open, f);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int i;
        Integer numValueOf;
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int iB = 0;
        while (true) {
            i = 1;
            if (iB >= size) {
                break;
            }
            iB = il1.b(list.get(iB), jM8985copyZbe2FdA$default, arrayList, iB, 1);
        }
        Integer num = null;
        if (!arrayList.isEmpty()) {
            numValueOf = Integer.valueOf(((Placeable) arrayList.get(0)).getWidth());
            int size2 = arrayList.size() - 1;
            if (1 <= size2) {
                int i2 = 1;
                while (true) {
                    Integer numValueOf2 = Integer.valueOf(((Placeable) arrayList.get(i2)).getWidth());
                    if (numValueOf2.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf2;
                    }
                    if (i2 == size2) {
                        break;
                    }
                    i2++;
                }
            }
        } else {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
        if (!arrayList.isEmpty()) {
            Integer numValueOf3 = Integer.valueOf(((Placeable) arrayList.get(0)).getHeight());
            int size3 = arrayList.size() - 1;
            if (1 <= size3) {
                while (true) {
                    Integer numValueOf4 = Integer.valueOf(((Placeable) arrayList.get(i)).getHeight());
                    if (numValueOf4.compareTo(numValueOf3) > 0) {
                        numValueOf3 = numValueOf4;
                    }
                    if (i == size3) {
                        break;
                    }
                    i++;
                }
            }
            num = numValueOf3;
        }
        int iIntValue2 = num != null ? num.intValue() : 0;
        final DrawerState drawerState = this.$drawerState;
        final MutableState<Boolean> mutableState = this.$anchorsInitialized$delegate;
        final int i3 = iIntValue;
        final MutableFloatState mutableFloatState = this.$minValue$delegate;
        final float f = this.$maxValue;
        return MeasureScope.layout$default(measureScope, i3, iIntValue2, null, new nl3() { // from class: androidx.compose.material3.z2
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationDrawerKt$ModalNavigationDrawer$2$6$1.measure_3p2s80s$lambda$5(drawerState, i3, arrayList, mutableState, mutableFloatState, f, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
