package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardView$$State;
import com.warefly.checkscan.presentation.success.view.SuccessView$$State;
import com.warefly.checkscan.presentation.tasks.checkbox.view.CheckboxTaskDetailsView$$State;
import com.warefly.checkscan.presentation.webview.WebViewReplenishment$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class fb1 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ fb1(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CheckboxTaskDetailsView$$State();
            case 1:
                return new SuccessView$$State();
            case 2:
                return new TransferCardView$$State();
            default:
                return new WebViewReplenishment$$State();
        }
    }
}
