package androidx.compose.material3;

import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.gestures.DraggableAnchorsConfig;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import defpackage.j59;
import defpackage.nl3;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationDrawerKt$DismissibleNavigationDrawer$2$2$1 implements MeasurePolicy {
    final /* synthetic */ MutableState<Boolean> $anchorsInitialized$delegate;
    final /* synthetic */ DrawerState $drawerState;

    public NavigationDrawerKt$DismissibleNavigationDrawer$2$2$1(DrawerState drawerState, MutableState<Boolean> mutableState) {
        this.$drawerState = drawerState;
        this.$anchorsInitialized$delegate = mutableState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(DrawerState drawerState, Placeable placeable, Placeable placeable2, MutableState mutableState, Placeable.PlacementScope placementScope) {
        float fPositionOf = drawerState.getAnchoredDraggableState$material3().getAnchors().positionOf(DrawerValue.Closed);
        final float f = -placeable.getWidth();
        if (!NavigationDrawerKt.DismissibleNavigationDrawer$lambda$27(mutableState) || fPositionOf != f) {
            if (!NavigationDrawerKt.DismissibleNavigationDrawer$lambda$27(mutableState)) {
                NavigationDrawerKt.DismissibleNavigationDrawer$lambda$28(mutableState, true);
            }
            AnchoredDraggableState.updateAnchors$default(drawerState.getAnchoredDraggableState$material3(), AnchoredDraggableKt.DraggableAnchors(new nl3() { // from class: androidx.compose.material3.w2
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return NavigationDrawerKt$DismissibleNavigationDrawer$2$2$1.measure_3p2s80s$lambda$1$lambda$0(f, (DraggableAnchorsConfig) obj);
                }
            }), null, 2, null);
        }
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, w65.b(drawerState.requireOffset$material3()) + placeable.getWidth(), 0, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, w65.b(drawerState.requireOffset$material3()), 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1$lambda$0(float f, DraggableAnchorsConfig draggableAnchorsConfig) {
        draggableAnchorsConfig.at(DrawerValue.Closed, f);
        draggableAnchorsConfig.at(DrawerValue.Open, 0.0f);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        final Placeable placeableMo7702measureBRTryo0 = list.get(0).mo7702measureBRTryo0(j);
        final Placeable placeableMo7702measureBRTryo1 = list.get(1).mo7702measureBRTryo0(j);
        int width = placeableMo7702measureBRTryo1.getWidth();
        int height = placeableMo7702measureBRTryo1.getHeight();
        final DrawerState drawerState = this.$drawerState;
        final MutableState<Boolean> mutableState = this.$anchorsInitialized$delegate;
        return MeasureScope.layout$default(measureScope, width, height, null, new nl3() { // from class: androidx.compose.material3.v2
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationDrawerKt$DismissibleNavigationDrawer$2$2$1.measure_3p2s80s$lambda$1(drawerState, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo1, mutableState, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
