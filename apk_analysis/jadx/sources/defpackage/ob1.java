package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskStepsButtonBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ob1 extends vd9<pb1, ItemRvCheckboxTaskStepsButtonBinding> {
    public final CheckboxTaskStepsDetailsPresenter b;

    public interface a {
        void onClaimClicked(boolean z);
    }

    public ob1(CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter) {
        super(nb1.c);
        this.b = checkboxTaskStepsDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof pb1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, pb1 pb1Var) {
        ItemRvCheckboxTaskStepsButtonBinding itemRvCheckboxTaskStepsButtonBinding = (ItemRvCheckboxTaskStepsButtonBinding) viewBinding;
        pb1 pb1Var2 = pb1Var;
        itemRvCheckboxTaskStepsButtonBinding.getClass();
        itemRvCheckboxTaskStepsButtonBinding.btnAction.setText(pb1Var2.a);
        itemRvCheckboxTaskStepsButtonBinding.btnAction.setLoading(pb1Var2.c);
        itemRvCheckboxTaskStepsButtonBinding.btnAction.setEnabled(pb1Var2.b);
        LoadingButton loadingButton = itemRvCheckboxTaskStepsButtonBinding.btnAction;
        loadingButton.getClass();
        loadingButton.setOnClickListener(new lb7(new i60(this, pb1Var2, 1)));
    }
}
