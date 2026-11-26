package defpackage;

import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.presentation.tasks.main.presenter.TasksPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvTaskBannerBinding;
import eightbitlab.com.blurview.BlurView;

/* JADX INFO: loaded from: classes5.dex */
public final class tl8 extends vd9<zl8, ItemRvTaskBannerBinding> {
    public final TasksPresenter b;

    public interface a {
        void onBannerClicked(int i, String str);

        void onBannerOrdClicked(b06 b06Var);
    }

    public tl8(TasksPresenter tasksPresenter) {
        super(sl8.c);
        this.b = tasksPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof zl8;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, zl8 zl8Var) {
        ItemRvTaskBannerBinding itemRvTaskBannerBinding = (ItemRvTaskBannerBinding) viewBinding;
        zl8 zl8Var2 = zl8Var;
        itemRvTaskBannerBinding.getClass();
        MaterialCardView root = itemRvTaskBannerBinding.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new ul8(this, zl8Var2)));
        b06 b06Var = zl8Var2.d;
        LayoutAdsBadgeBinding layoutAdsBadgeBinding = itemRvTaskBannerBinding.incldAdsBadge;
        if (b06Var != null) {
            BlurView blurView = layoutAdsBadgeBinding.blurView;
            blurView.getClass();
            blurView.setVisibility(b06Var.b ? 0 : 8);
            BlurView root2 = itemRvTaskBannerBinding.incldAdsBadge.getRoot();
            root2.getClass();
            root2.setOnClickListener(new lb7(new vl8(this, zl8Var2)));
        } else {
            BlurView blurView2 = layoutAdsBadgeBinding.blurView;
            blurView2.getClass();
            blurView2.setVisibility(8);
        }
        ((h37) com.bumptech.glide.a.d(itemRvTaskBannerBinding.getRoot().getContext()).h(zl8Var2.b).r(is7.b(pl2.d(16.0f), ContextCompat.getColor(itemRvTaskBannerBinding.getRoot().getContext(), R.color.almostThereMoon)))).L(itemRvTaskBannerBinding.ivBanner);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvTaskBannerBinding itemRvTaskBannerBinding = (ItemRvTaskBannerBinding) viewBinding;
        itemRvTaskBannerBinding.getClass();
        BlurView blurView = itemRvTaskBannerBinding.incldAdsBadge.blurView;
        blurView.getClass();
        MaterialCardView root = itemRvTaskBannerBinding.getRoot();
        root.getClass();
        zd3.h(blurView, root);
    }
}
