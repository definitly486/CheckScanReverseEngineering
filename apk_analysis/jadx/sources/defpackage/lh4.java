package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.CheckBox;
import com.warefly.checkscan.databinding.ItemRvLandingAgreementBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class lh4 extends vd9<mh4, ItemRvLandingAgreementBinding> {
    public final v05 b;
    public final LandingPresenter c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lh4(v05 v05Var, LandingPresenter landingPresenter) {
        super(kh4.c);
        v05Var.getClass();
        this.b = v05Var;
        this.c = landingPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof mh4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, mh4 mh4Var) {
        ItemRvLandingAgreementBinding itemRvLandingAgreementBinding = (ItemRvLandingAgreementBinding) viewBinding;
        mh4 mh4Var2 = mh4Var;
        itemRvLandingAgreementBinding.getClass();
        CheckBox checkBox = itemRvLandingAgreementBinding.cbAgreement;
        checkBox.setChecked(mh4Var2.d);
        this.b.a(checkBox, mh4Var2.c);
        checkBox.setOnClickListener(new lb7(new ja3(this, mh4Var2, 1)));
        checkBox.setEnabled(mh4Var2.e);
    }
}
