package defpackage;

import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProviderKt;
import androidx.compose.material3.AppBarRowKt;
import androidx.compose.runtime.State;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cp implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ State c;

    public /* synthetic */ cp(State state, int i) {
        this.b = i;
        this.c = state;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        State state = this.c;
        switch (i) {
            case 0:
                return AppBarRowKt.AppBarRow$lambda$1$lambda$0(state);
            default:
                return LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda$lambda$0$0(state);
        }
    }
}
