package defpackage;

import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Placeable;
import androidx.navigation.NavDeepLink;
import androidx.navigation.internal.NavDestinationImpl;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadStateAdapter;
import androidx.paging.PagingDataAdapter;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class rf0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rf0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BasicTextFieldKt.minHeightForSingleLineField$lambda$0$0((Placeable) obj2, (Placeable.PlacementScope) obj);
            case 1:
                return LazyListIntervalContent.item$lambda$0(obj2, ((Integer) obj).intValue());
            case 2:
                return Boolean.valueOf(NavDestinationImpl._set_route_$lambda$1((NavDeepLink) obj2, (String) obj));
            case 3:
                return PagingDataAdapter.withLoadStateHeader$lambda$0((LoadStateAdapter) obj2, (CombinedLoadStates) obj);
            case 4:
                return Recomposer.readObserverOf$lambda$0((ControlledComposition) obj2, obj);
            default:
                return SelectionManager._get_modifier_$lambda$1((SelectionManager) obj2, (LayoutCoordinates) obj);
        }
    }
}
