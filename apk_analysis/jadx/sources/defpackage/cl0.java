package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.presenter.g;
import com.warefly.checkscan.presentation.chequePage.form.presenter.ChequeInfoFormPresenter;
import com.warefly.checkscan.presentation.chequePage.share.cheque.view.ShareChequeDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class cl0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ cl0(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                ((g) nl3Var).invoke(obj);
                break;
            case 1:
                ((ChequeInfoFormPresenter.a) nl3Var).invoke(obj);
                break;
            default:
                ze4<Object>[] ze4VarArr = ShareChequeDialog.g;
                nl3Var.invoke(obj);
                break;
        }
    }
}
