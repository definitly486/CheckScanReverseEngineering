package defpackage;

import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.profile.databinding.ItemRvProfileOptionBinding;
import com.warefly.checkscan.profile.presentation.main.presenter.ProfilePresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class vl6 extends vd9<rl6, ItemRvProfileOptionBinding> {
    public final ProfilePresenter b;

    public vl6(ProfilePresenter profilePresenter) {
        super(tl6.c);
        this.b = profilePresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof rl6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, rl6 rl6Var) {
        ItemRvProfileOptionBinding itemRvProfileOptionBinding = (ItemRvProfileOptionBinding) viewBinding;
        rl6 rl6Var2 = rl6Var;
        itemRvProfileOptionBinding.getClass();
        itemRvProfileOptionBinding.tvItemSettingsTitle.setText(itemRvProfileOptionBinding.getRoot().getContext().getString(rl6Var2.a));
        a.e(itemRvProfileOptionBinding.includeDelimiterArrow.ivItemSettingsIc).g(rl6Var2.b).L(itemRvProfileOptionBinding.includeDelimiterArrow.ivItemSettingsIc);
        ImageView imageView = itemRvProfileOptionBinding.ivBadge;
        imageView.getClass();
        imageView.setVisibility(8);
        ConstraintLayout root = itemRvProfileOptionBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new ul6(rl6Var2, this)));
    }
}
