package defpackage;

import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.profile.databinding.ItemRvProfileDeleteButtonBinding;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class cl6 extends vd9<dl6, ItemRvProfileDeleteButtonBinding> {
    public final ProfilePresenter b;

    public interface a {
        void onDeleteAccountClicked();
    }

    public cl6(ProfilePresenter profilePresenter) {
        super(bl6.c);
        this.b = profilePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof dl6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, dl6 dl6Var) {
        ItemRvProfileDeleteButtonBinding itemRvProfileDeleteButtonBinding = (ItemRvProfileDeleteButtonBinding) viewBinding;
        itemRvProfileDeleteButtonBinding.getClass();
        itemRvProfileDeleteButtonBinding.btnDelete.setText(dl6Var.a);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvProfileDeleteButtonBinding itemRvProfileDeleteButtonBinding = (ItemRvProfileDeleteButtonBinding) viewBinding;
        itemRvProfileDeleteButtonBinding.getClass();
        TextView textView = itemRvProfileDeleteButtonBinding.btnDelete;
        textView.getClass();
        textView.setOnClickListener(new lb7(new bn(this, 2)));
    }
}
