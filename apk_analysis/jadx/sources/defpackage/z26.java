package defpackage;

import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhonePresenter;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class z26 implements h6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ z26(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.h6
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((a) obj).d = false;
                break;
            default:
                TransferPhonePresenter.loadInfo$lambda$7((TransferPhonePresenter) obj);
                break;
        }
    }
}
