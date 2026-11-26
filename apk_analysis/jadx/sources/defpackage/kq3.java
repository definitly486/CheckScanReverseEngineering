package defpackage;

import com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsView$$State;
import com.warefly.checkscan.presentation.flows.specifyPlace.presenter.SpecifyPlaceFlowView$$State;
import com.warefly.checkscan.presentation.gift.view.GiftView$$State;
import com.warefly.checkscan.products.presentation.flow.view.ProductsFlowView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class kq3 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ kq3(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new GiftView$$State();
            case 1:
                return new ProductsFlowView$$State();
            case 2:
                return new SpecifyPlaceFlowView$$State();
            default:
                return new WithdrawalMethodsView$$State();
        }
    }
}
