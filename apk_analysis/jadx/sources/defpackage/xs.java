package defpackage;

import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.foundation.lazy.LazyListMeasureKt;
import androidx.compose.foundation.lazy.LazyListMeasuredItemProvider;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.Placeable;
import androidx.navigation.NavGraphNavigator;
import androidx.paging.AsyncPagingDataDiffer;
import androidx.paging.CombinedLoadStates;
import yads.c62;
import yads.m62;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xs implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xs(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AsyncPagingDataDiffer.internalLoadStateListener$lambda$0((AsyncPagingDataDiffer) obj2, (CombinedLoadStates) obj);
            case 1:
                return BasicTextFieldKt.BasicTextField$lambda$12$0((TextFieldSelectionState) obj2, (DisposableEffectScope) obj);
            case 2:
                return FlowLayoutKt.placeHelper_BmaY500$lambda$2((MutableVector) obj2, (Placeable.PlacementScope) obj);
            case 3:
                return LazyListMeasureKt.measureLazyList_pIk1_oM$lambda$7((LazyListMeasuredItemProvider) obj2, ((Integer) obj).intValue());
            case 4:
                return Boolean.valueOf(NavGraphNavigator.navigate$lambda$6((r07) obj2, (String) obj));
            default:
                return c62.b((m62) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
