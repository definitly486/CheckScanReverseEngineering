package defpackage;

import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.warefly.checkscan.presentation.balance.transferCashback.card.presenter.TransferCardPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class k34 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k34(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((InAppMessageStreamManager) obj2).lambda$createFirebaseInAppMessageStream$18((f73) obj);
                break;
            default:
                ((TransferCardPresenter.c) obj2).invoke(obj);
                break;
        }
    }
}
