package defpackage;

import com.warefly.checkscan.presentation.flows.tasks.view.TasksFlowView$$State;
import com.warefly.checkscan.presentation.queue.afterScanSplash.view.LoadingSplashView$$State;
import com.warefly.checkscan.products.presentation.shop.view.ShopView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class ls4 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ ls4(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new LoadingSplashView$$State();
            case 1:
                return new ShopView$$State();
            default:
                return new TasksFlowView$$State();
        }
    }
}
