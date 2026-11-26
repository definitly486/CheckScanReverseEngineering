package defpackage;

import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardOptionsPresenter;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class e90 implements xl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ e90(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.xl3
    public final Object apply(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return BankCardOptionsPresenter.showBankCardOptionsInfo$lambda$1(nl3Var, obj);
            default:
                return (List) nl3Var.invoke(obj);
        }
    }
}
