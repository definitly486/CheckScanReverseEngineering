package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.profile.databinding.ItemRvProfileButtonBinding;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class xl6 extends vd9<yl6, ItemRvProfileButtonBinding> {
    public final ProfilePresenter b;

    public interface a {
        void onLogoutClicked();
    }

    public xl6(ProfilePresenter profilePresenter) {
        super(wl6.c);
        this.b = profilePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof yl6;
    }

    @Override // defpackage.vd9
    public final void h(ViewBinding viewBinding) {
        ItemRvProfileButtonBinding itemRvProfileButtonBinding = (ItemRvProfileButtonBinding) viewBinding;
        itemRvProfileButtonBinding.getClass();
        TextView textView = itemRvProfileButtonBinding.btnLogout;
        textView.getClass();
        textView.setOnClickListener(new lb7(new vc1(this, 2)));
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, yl6 yl6Var) {
        ItemRvProfileButtonBinding itemRvProfileButtonBinding = (ItemRvProfileButtonBinding) viewBinding;
        itemRvProfileButtonBinding.getClass();
        itemRvProfileButtonBinding.btnLogout.setText(yl6Var.a);
    }

    @Override // defpackage.vd9
    public final void k(ViewBinding viewBinding) {
        ItemRvProfileButtonBinding itemRvProfileButtonBinding = (ItemRvProfileButtonBinding) viewBinding;
        itemRvProfileButtonBinding.getClass();
        itemRvProfileButtonBinding.btnLogout.setOnClickListener(null);
    }
}
