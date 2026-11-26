package defpackage;

import com.warefly.checkscan.presentation.verificationCardPhone.presenter.VerificationCardPhonePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class op implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ op(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((qp) gh4Var).invoke(obj);
                break;
            default:
                ((VerificationCardPhonePresenter.c) gh4Var).invoke(obj);
                break;
        }
    }
}
