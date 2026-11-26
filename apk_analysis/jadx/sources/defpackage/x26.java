package defpackage;

import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.RangeSliderState;
import androidx.compose.material3.SliderKt;
import androidx.compose.runtime.Recomposer;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadStateAdapter;
import androidx.paging.PagingDataAdapter;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x26 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ x26(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return PagingDataAdapter.withLoadStateHeaderAndFooter$lambda$0((LoadStateAdapter) obj3, (LoadStateAdapter) obj2, (CombinedLoadStates) obj);
            case 1:
                return Recomposer.effectJob$lambda$0$0$0$0((Recomposer) obj3, (Throwable) obj2, (Throwable) obj);
            case 2:
                return SelectionManager._set_onSelectionChange_$lambda$0((SelectionManager) obj3, (nl3) obj2, (Selection) obj);
            default:
                return Boolean.valueOf(SliderKt.rangeSliderEndThumbSemantics$lambda$58$lambda$57((nm1) obj3, (RangeSliderState) obj2, ((Float) obj).floatValue()));
        }
    }
}
