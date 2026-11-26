package defpackage;

import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;
import com.warefly.checkscan.presentation.chequePage.presentation.ChequePagePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ue1 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ gh4 c;

    public /* synthetic */ ue1(gh4 gh4Var, int i) {
        this.b = i;
        this.c = gh4Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        gh4 gh4Var = this.c;
        switch (i) {
            case 0:
                ((ChequePagePresenter.v) gh4Var).invoke(obj);
                break;
            default:
                ((PersonalDataFormPresenter.h) gh4Var).invoke(obj);
                break;
        }
    }
}
