package defpackage;

import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.databinding.ItemRvLandingUnselectedTextFieldBinding;
import com.warefly.checkscan.presentation.landing.presenter.LandingPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class uk4 extends vd9<vk4, ItemRvLandingUnselectedTextFieldBinding> {
    public final LandingPresenter b;

    public uk4(LandingPresenter landingPresenter) {
        super(sk4.c);
        this.b = landingPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof vk4;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, vk4 vk4Var) {
        ItemRvLandingUnselectedTextFieldBinding itemRvLandingUnselectedTextFieldBinding = (ItemRvLandingUnselectedTextFieldBinding) viewBinding;
        vk4 vk4Var2 = vk4Var;
        itemRvLandingUnselectedTextFieldBinding.getClass();
        TextInputEditText textInputEditText = itemRvLandingUnselectedTextFieldBinding.etText;
        textInputEditText.getClass();
        textInputEditText.setOnClickListener(new lb7(new tk4(this, vk4Var2, 0)));
        itemRvLandingUnselectedTextFieldBinding.tlText.setHint(vk4Var2.c);
        itemRvLandingUnselectedTextFieldBinding.etText.setText(vk4Var2.d);
    }
}
