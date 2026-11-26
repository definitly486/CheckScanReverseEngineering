package defpackage;

import androidx.compose.material3.pulltorefresh.PullToRefreshKt;
import androidx.window.area.WindowAreaController;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.c93;
import yads.nq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nt6 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ nt6(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return PullToRefreshKt.rememberPullToRefreshState$lambda$3$lambda$2();
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isClassSplitPairRuleBuilderLevel1Valid$lambda$10());
            case 2:
                return WindowAreaController.windowAreaController_delegate$lambda$1();
            case 3:
                return c93.a();
            default:
                return nq0.e();
        }
    }
}
