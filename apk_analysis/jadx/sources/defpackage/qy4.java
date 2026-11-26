package defpackage;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.NewOnlineShopPresenter;
import com.warefly.checkscan.presentation.mailChange.presenter.MailChangePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qy4 implements h6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ BasePresenter b;

    public /* synthetic */ qy4(BasePresenter basePresenter, int i) {
        this.a = i;
        this.b = basePresenter;
    }

    @Override // defpackage.h6
    public final void run() {
        int i = this.a;
        BasePresenter basePresenter = this.b;
        switch (i) {
            case 0:
                MailChangePresenter.changeMail$lambda$1((MailChangePresenter) basePresenter);
                break;
            default:
                NewOnlineShopPresenter.loadAll$lambda$2((NewOnlineShopPresenter) basePresenter);
                break;
        }
    }
}
