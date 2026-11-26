package defpackage;

import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhonePresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.BonusAdmitadNewPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class xk0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xk0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((BonusAdmitadNewPresenter.k.a) obj2).invoke(obj);
                break;
            case 1:
                ((InAppMessageStreamManager) obj2).lambda$createFirebaseInAppMessageStream$6((f73) obj);
                break;
            default:
                ((TransferPhonePresenter.b) obj2).invoke(obj);
                break;
        }
    }
}
