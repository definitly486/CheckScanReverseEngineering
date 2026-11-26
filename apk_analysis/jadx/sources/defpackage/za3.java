package defpackage;

import com.google.firebase.inappmessaging.FirebaseInAppMessaging;
import com.google.firebase.inappmessaging.model.TriggeredInAppMessage;
import com.warefly.checkscan.presentation.balance.transferCashback.phone.presenter.TransferPhonePresenter;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class za3 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ za3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((FirebaseInAppMessaging) obj2).triggerInAppMessage((TriggeredInAppMessage) obj);
                break;
            default:
                ((TransferPhonePresenter.d) obj2).invoke(obj);
                break;
        }
    }
}
