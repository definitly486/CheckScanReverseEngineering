package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.stock.presenter.AgreementPresenter;
import com.warefly.checkscan.presentation.stock.view.AgreementDialog;
import com.warefly.checkscan.products.presentation.product.view.ProductFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class sb extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ sb(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                AgreementDialog agreementDialog = (AgreementDialog) obj2;
                AgreementPresenter agreementPresenter = agreementDialog.presenter;
                if (agreementPresenter != null) {
                    agreementPresenter.continueClicked(agreementDialog.d);
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
            default:
                ((View) obj).getClass();
                ((ProductFragment) obj2).o().onBackClicked();
                return j59.a;
        }
    }
}
