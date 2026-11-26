package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.profile.databinding.ItemRvProfileInviteCodeBinding;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class nl6 extends vd9<pl6, ItemRvProfileInviteCodeBinding> {
    public final ProfilePresenter b;

    public interface a {
        void onCopyClick(String str);

        void onShareCode();
    }

    public nl6(ProfilePresenter profilePresenter) {
        super(ml6.c);
        this.b = profilePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof pl6;
    }

    @Override // defpackage.vd9
    public final void h(ViewBinding viewBinding) {
        ItemRvProfileInviteCodeBinding itemRvProfileInviteCodeBinding = (ItemRvProfileInviteCodeBinding) viewBinding;
        itemRvProfileInviteCodeBinding.getClass();
        TextView textView = itemRvProfileInviteCodeBinding.btnCopy;
        textView.getClass();
        textView.setOnClickListener(new lb7(new ja3(this, itemRvProfileInviteCodeBinding, 2)));
        LoadingButton loadingButton = itemRvProfileInviteCodeBinding.btnShare;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new ol6(this, 0)));
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, pl6 pl6Var) {
        ItemRvProfileInviteCodeBinding itemRvProfileInviteCodeBinding = (ItemRvProfileInviteCodeBinding) viewBinding;
        pl6 pl6Var2 = pl6Var;
        itemRvProfileInviteCodeBinding.getClass();
        itemRvProfileInviteCodeBinding.tvTitle.setText(pl6Var2.a);
        TextView textView = itemRvProfileInviteCodeBinding.tvInviteCode;
        String str = pl6Var2.b;
        textView.setTag(str);
        itemRvProfileInviteCodeBinding.tvInviteCode.setText(str);
        itemRvProfileInviteCodeBinding.btnCopy.setText(pl6Var2.c);
        LoadingButton loadingButton = itemRvProfileInviteCodeBinding.btnShare;
        String str2 = pl6Var2.d;
        loadingButton.setText(str2);
        LoadingButton loadingButton2 = itemRvProfileInviteCodeBinding.btnShare;
        loadingButton2.getClass();
        loadingButton2.setVisibility(str2 != null ? 0 : 8);
        itemRvProfileInviteCodeBinding.btnShare.setLoading(pl6Var2.e);
    }

    @Override // defpackage.vd9
    public final void k(ViewBinding viewBinding) {
        ItemRvProfileInviteCodeBinding itemRvProfileInviteCodeBinding = (ItemRvProfileInviteCodeBinding) viewBinding;
        itemRvProfileInviteCodeBinding.getClass();
        itemRvProfileInviteCodeBinding.btnCopy.setOnClickListener(null);
        itemRvProfileInviteCodeBinding.tvInviteCode.setOnClickListener(null);
    }
}
