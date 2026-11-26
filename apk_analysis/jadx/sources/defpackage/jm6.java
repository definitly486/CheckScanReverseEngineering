package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.profile.databinding.ItemRvProfilePrivatePolicyBinding;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class jm6 extends vd9<km6, ItemRvProfilePrivatePolicyBinding> {
    public final ProfilePresenter b;

    public interface a {
        void onPrivatePolicyClicked(String str);
    }

    public jm6(ProfilePresenter profilePresenter) {
        super(im6.c);
        this.b = profilePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof km6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, km6 km6Var) {
        ItemRvProfilePrivatePolicyBinding itemRvProfilePrivatePolicyBinding = (ItemRvProfilePrivatePolicyBinding) viewBinding;
        km6 km6Var2 = km6Var;
        itemRvProfilePrivatePolicyBinding.getClass();
        itemRvProfilePrivatePolicyBinding.tvTitle.setText(km6Var2.a);
        TextView root = itemRvProfilePrivatePolicyBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new fi4(this, km6Var2, 1)));
    }
}
