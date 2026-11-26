package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.multiTaskDetails.presenter.MultiTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvMultiTaskButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class of5 extends vd9<pf5, ItemRvMultiTaskButtonBinding> {
    public final MultiTaskDetailsPresenter b;

    public interface a {
        void onClaimMultiTaskClicked();
    }

    public of5(MultiTaskDetailsPresenter multiTaskDetailsPresenter) {
        super(nf5.c);
        this.b = multiTaskDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof pf5;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, pf5 pf5Var) {
        ItemRvMultiTaskButtonBinding itemRvMultiTaskButtonBinding = (ItemRvMultiTaskButtonBinding) viewBinding;
        pf5 pf5Var2 = pf5Var;
        itemRvMultiTaskButtonBinding.getClass();
        itemRvMultiTaskButtonBinding.btnClaimReward.setText(pf5Var2.a);
        itemRvMultiTaskButtonBinding.btnClaimReward.setLoading(pf5Var2.d);
        itemRvMultiTaskButtonBinding.btnClaimReward.setEnabled(pf5Var2.b);
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvMultiTaskButtonBinding itemRvMultiTaskButtonBinding = (ItemRvMultiTaskButtonBinding) viewBinding;
        itemRvMultiTaskButtonBinding.getClass();
        LoadingButton loadingButton = itemRvMultiTaskButtonBinding.btnClaimReward;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new xh1(this, 1)));
    }
}
