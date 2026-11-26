package defpackage;

import androidx.compose.foundation.layout.ContextualFlowRowOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.material3.SliderDefaults;
import androidx.compose.ui.layout.Placeable;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.navigation.internal.NavControllerImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yz1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yz1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ContextualFlowRowOverflow.Companion.expandIndicator$lambda$0((dm3) obj2, (FlowLayoutOverflowState) obj);
            case 1:
                return Boolean.valueOf(FragmentNavigator.addPendingOps$lambda$16((String) obj2, (b36) obj));
            case 2:
                return Boolean.valueOf(NavControllerImpl.executePopOperations$lambda$15((NavControllerImpl) obj2, (NavDestination) obj));
            default:
                return SliderDefaults.TrackImpl_VvwgllI$lambda$29$lambda$28$lambda$27((Placeable) obj2, (Placeable.PlacementScope) obj);
        }
    }
}
