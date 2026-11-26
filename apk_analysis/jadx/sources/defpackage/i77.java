package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.tasks.databinding.ItemRvRewardedMultiTaskHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class i77 extends vd9<j77, ItemRvRewardedMultiTaskHeaderBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof j77;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, j77 j77Var) {
        ItemRvRewardedMultiTaskHeaderBinding itemRvRewardedMultiTaskHeaderBinding = (ItemRvRewardedMultiTaskHeaderBinding) viewBinding;
        j77 j77Var2 = j77Var;
        itemRvRewardedMultiTaskHeaderBinding.getClass();
        a.d(itemRvRewardedMultiTaskHeaderBinding.getRoot().getContext()).h(j77Var2.b).L(itemRvRewardedMultiTaskHeaderBinding.ivLogo);
        itemRvRewardedMultiTaskHeaderBinding.tvTitle.setText(j77Var2.a);
    }
}
