package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.CheckBox;
import com.warefly.checkscan.databinding.ItemRvLandingCheckboxBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class gi4 extends vd9<hi4, ItemRvLandingCheckboxBinding> {
    public final LandingPresenter b;

    public gi4(LandingPresenter landingPresenter) {
        super(ei4.c);
        this.b = landingPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof hi4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, hi4 hi4Var) {
        ItemRvLandingCheckboxBinding itemRvLandingCheckboxBinding = (ItemRvLandingCheckboxBinding) viewBinding;
        hi4 hi4Var2 = hi4Var;
        itemRvLandingCheckboxBinding.getClass();
        CheckBox checkBox = itemRvLandingCheckboxBinding.cb;
        checkBox.setChecked(hi4Var2.d);
        checkBox.setText(hi4Var2.b);
        checkBox.setOnClickListener(new lb7(new fi4(this, hi4Var2, 0)));
        checkBox.setEnabled(hi4Var2.e);
    }
}
