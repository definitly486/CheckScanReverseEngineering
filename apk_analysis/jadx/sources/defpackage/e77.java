package defpackage;

import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.presentation.tasks.rewardedMultiTask.presenter.RewardedMultiTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvRewardedMultiTaskDetailsBadgeBinding;
import kotlin.TypeCastException;

/* JADX INFO: loaded from: classes5.dex */
public final class e77 extends vd9<f77, ItemRvRewardedMultiTaskDetailsBadgeBinding> {
    public final RewardedMultiTaskDetailsPresenter b;

    /* JADX INFO: loaded from: classes.dex */
    public interface a {
        void onBadgeQuestionClicked(String str);
    }

    public e77(RewardedMultiTaskDetailsPresenter rewardedMultiTaskDetailsPresenter) {
        super(d77.c);
        this.b = rewardedMultiTaskDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof f77;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, f77 f77Var) {
        ItemRvRewardedMultiTaskDetailsBadgeBinding itemRvRewardedMultiTaskDetailsBadgeBinding = (ItemRvRewardedMultiTaskDetailsBadgeBinding) viewBinding;
        f77 f77Var2 = f77Var;
        itemRvRewardedMultiTaskDetailsBadgeBinding.getClass();
        if (f77Var2.b != null) {
            ImageView imageView = itemRvRewardedMultiTaskDetailsBadgeBinding.ivQuestion;
            imageView.getClass();
            imageView.setVisibility(0);
            ImageView imageView2 = itemRvRewardedMultiTaskDetailsBadgeBinding.ivQuestion;
            imageView2.getClass();
            imageView2.setOnClickListener(new lb7(new or0(this, f77Var2, 1)));
        }
        ImageView imageView3 = itemRvRewardedMultiTaskDetailsBadgeBinding.ivBadgeIcon;
        imageView3.getClass();
        ViewGroup.LayoutParams layoutParams = imageView3.getLayoutParams();
        if (layoutParams == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        }
        layoutParams.height = pl2.e(32);
        imageView3.setLayoutParams(layoutParams);
        com.bumptech.glide.a.e(itemRvRewardedMultiTaskDetailsBadgeBinding.getRoot()).h(f77Var2.a).L(itemRvRewardedMultiTaskDetailsBadgeBinding.ivBadgeIcon);
    }
}
