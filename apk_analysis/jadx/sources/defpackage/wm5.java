package defpackage;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.presenter.RedirectDialogPresenter;
import com.warefly.checkscan.presentation.newBankCards.presenter.NewBankCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class wm5 implements h6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ BasePresenter b;

    public /* synthetic */ wm5(BasePresenter basePresenter, int i) {
        this.a = i;
        this.b = basePresenter;
    }

    @Override // defpackage.h6
    public final void run() {
        int i = this.a;
        BasePresenter basePresenter = this.b;
        switch (i) {
            case 0:
                NewBankCardPresenter.onFirstViewAttach$lambda$1((NewBankCardPresenter) basePresenter);
                break;
            default:
                RedirectDialogPresenter.openAdaptiveLink$lambda$1((RedirectDialogPresenter) basePresenter);
                break;
        }
    }
}
