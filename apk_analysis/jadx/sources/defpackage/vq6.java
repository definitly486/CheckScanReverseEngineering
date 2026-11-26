package defpackage;

import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.presentation.tasks.promocode.presenter.PromocodeTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvPromocodeTaskDetailsBadgeBinding;
import kotlin.TypeCastException;

/* JADX INFO: loaded from: classes5.dex */
public final class vq6 extends vd9<wq6, ItemRvPromocodeTaskDetailsBadgeBinding> {
    public final PromocodeTaskDetailsPresenter b;

    public interface a {
        void onBadgeQuestionClicked(String str);
    }

    public vq6(PromocodeTaskDetailsPresenter promocodeTaskDetailsPresenter) {
        super(uq6.c);
        this.b = promocodeTaskDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof wq6;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, wq6 wq6Var) {
        ItemRvPromocodeTaskDetailsBadgeBinding itemRvPromocodeTaskDetailsBadgeBinding = (ItemRvPromocodeTaskDetailsBadgeBinding) viewBinding;
        wq6 wq6Var2 = wq6Var;
        itemRvPromocodeTaskDetailsBadgeBinding.getClass();
        if (wq6Var2.b != null) {
            ImageView imageView = itemRvPromocodeTaskDetailsBadgeBinding.ivQuestion;
            imageView.getClass();
            imageView.setVisibility(0);
            ImageView imageView2 = itemRvPromocodeTaskDetailsBadgeBinding.ivQuestion;
            imageView2.getClass();
            imageView2.setOnClickListener(new lb7(new ax3(this, wq6Var2, 1)));
        }
        ImageView imageView3 = itemRvPromocodeTaskDetailsBadgeBinding.ivBadgeIcon;
        imageView3.getClass();
        ViewGroup.LayoutParams layoutParams = imageView3.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.height = pl2.e(44);
        imageView3.setLayoutParams(layoutParams);
        com.bumptech.glide.a.e(itemRvPromocodeTaskDetailsBadgeBinding.getRoot()).h(wq6Var2.a).L(itemRvPromocodeTaskDetailsBadgeBinding.ivBadgeIcon);
    }
}
