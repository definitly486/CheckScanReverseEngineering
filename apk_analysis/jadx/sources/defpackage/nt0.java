package defpackage;

import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.paging.LoadState;
import androidx.paging.LoadStateAdapter;
import androidx.paging.LoadType;
import androidx.paging.PagedListAdapter;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class nt0 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nt0(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return BoxWithConstraintsKt.BoxWithConstraints$lambda$0$0((MeasurePolicy) obj4, (dm3) obj3, (SubcomposeMeasureScope) obj, (Constraints) obj2);
            default:
                return PagedListAdapter.withLoadStateHeaderAndFooter$lambda$0((LoadStateAdapter) obj4, (LoadStateAdapter) obj3, (LoadType) obj, (LoadState) obj2);
        }
    }
}
