package defpackage;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.BonusAdmitadNewPresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.view.BonusAdmitadNewView;
import com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class dl0 implements h6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ BasePresenter b;

    public /* synthetic */ dl0(BasePresenter basePresenter, int i) {
        this.a = i;
        this.b = basePresenter;
    }

    @Override // defpackage.h6
    public final void run() {
        int i = this.a;
        BasePresenter basePresenter = this.b;
        switch (i) {
            case 0:
                BonusAdmitadNewPresenter bonusAdmitadNewPresenter = (BonusAdmitadNewPresenter) basePresenter;
                BonusAdmitadNewView bonusAdmitadNewView = (BonusAdmitadNewView) bonusAdmitadNewPresenter.getViewState();
                if (bonusAdmitadNewView != null) {
                    bonusAdmitadNewView.showLoading(false);
                }
                bonusAdmitadNewPresenter.blocksLoadingState.put(ck0.OnlineShopInfo, Boolean.FALSE);
                break;
            default:
                ChequeInfoFormPresenter.onPostInfoClicked$lambda$5$lambda$4$lambda$3((ChequeInfoFormPresenter) basePresenter);
                break;
        }
    }
}
