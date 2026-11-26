package defpackage;

import androidx.viewbinding.ViewBinding;
import com.bumptech.glide.a;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskStepsHeaderBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class cc1 extends vd9<dc1, ItemRvCheckboxTaskStepsHeaderBinding> {
    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof dc1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, dc1 dc1Var) {
        ItemRvCheckboxTaskStepsHeaderBinding itemRvCheckboxTaskStepsHeaderBinding = (ItemRvCheckboxTaskStepsHeaderBinding) viewBinding;
        dc1 dc1Var2 = dc1Var;
        itemRvCheckboxTaskStepsHeaderBinding.getClass();
        a.d(itemRvCheckboxTaskStepsHeaderBinding.getRoot().getContext()).h(dc1Var2.b).L(itemRvCheckboxTaskStepsHeaderBinding.ivLogo);
        itemRvCheckboxTaskStepsHeaderBinding.tvTitle.setText(dc1Var2.a);
    }
}
