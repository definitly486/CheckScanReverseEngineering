package defpackage;

import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.pulltorefresh.PullToRefreshKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t96 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ t96(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                mp7 mp7Var = (mp7) obj2;
                int iIntValue = ((Integer) obj).intValue();
                return mp7Var.f(iIntValue) + ": " + mp7Var.d(iIntValue).h();
            default:
                return PullToRefreshKt.CircularArrowProgressIndicator_RPmYEkk$lambda$10$lambda$9((FloatProducer) obj2, (SemanticsPropertyReceiver) obj);
        }
    }
}
