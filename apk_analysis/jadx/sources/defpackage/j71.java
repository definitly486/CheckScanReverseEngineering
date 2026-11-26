package defpackage;

import com.warefly.checkscan.personalform.presentation.form.view.PersonalDataFormView$$State;
import com.warefly.checkscan.presentation.bonuses.onlineShops.categoriesDialog.presenter.CategoriesView$$State;
import com.warefly.checkscan.presentation.flows.desktop.view.TabContainerView$$State;
import com.warefly.checkscan.presentation.qrHand.view.QrHandView$$State;
import com.warefly.checkscan.products.presentation.main.view.MainProductsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class j71 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ j71(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CategoriesView$$State();
            case 1:
                return new MainProductsView$$State();
            case 2:
                return new PersonalDataFormView$$State();
            case 3:
                return new QrHandView$$State();
            default:
                return new TabContainerView$$State();
        }
    }
}
