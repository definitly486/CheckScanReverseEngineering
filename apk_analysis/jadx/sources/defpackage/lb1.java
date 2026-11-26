package defpackage;

import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskStepsButtonBlockBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class lb1 extends vd9<mb1, ItemRvCheckboxTaskStepsButtonBlockBinding> {
    public final CheckboxTaskStepsDetailsPresenter b;

    public interface a {
        void onButtonStepTaskClicked(int i, boolean z);
    }

    public lb1(CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter) {
        super(kb1.c);
        this.b = checkboxTaskStepsDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof mb1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, mb1 mb1Var) {
        ItemRvCheckboxTaskStepsButtonBlockBinding itemRvCheckboxTaskStepsButtonBlockBinding = (ItemRvCheckboxTaskStepsButtonBlockBinding) viewBinding;
        mb1 mb1Var2 = mb1Var;
        itemRvCheckboxTaskStepsButtonBlockBinding.getClass();
        itemRvCheckboxTaskStepsButtonBlockBinding.tvTitle.setText(mb1Var2.a);
        LoadingButton loadingButton = itemRvCheckboxTaskStepsButtonBlockBinding.btnAction;
        mb1.a aVar = mb1Var2.b;
        loadingButton.setText(aVar.a);
        LoadingButton loadingButton2 = itemRvCheckboxTaskStepsButtonBlockBinding.btnAction;
        loadingButton2.getClass();
        loadingButton2.setVisibility(aVar.e ? 0 : 8);
        itemRvCheckboxTaskStepsButtonBlockBinding.btnAction.setLoading(aVar.c);
        itemRvCheckboxTaskStepsButtonBlockBinding.btnAction.setEnabled(aVar.b);
        LoadingButton loadingButton3 = itemRvCheckboxTaskStepsButtonBlockBinding.btnAction;
        loadingButton3.getClass();
        loadingButton3.setOnClickListener(new lb7(new h60(this, mb1Var2, 1)));
        if (mb1Var2.d) {
            com.bumptech.glide.a.d(itemRvCheckboxTaskStepsButtonBlockBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_circle_tick)).L(itemRvCheckboxTaskStepsButtonBlockBinding.ivTick);
            itemRvCheckboxTaskStepsButtonBlockBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvCheckboxTaskStepsButtonBlockBinding.getRoot().getContext(), R.drawable.background_success10_radius_16_outlined));
        } else {
            com.bumptech.glide.a.d(itemRvCheckboxTaskStepsButtonBlockBinding.getRoot().getContext()).f(Integer.valueOf(R.drawable.ic_empty_tick)).L(itemRvCheckboxTaskStepsButtonBlockBinding.ivTick);
            itemRvCheckboxTaskStepsButtonBlockBinding.stepContainer.setBackground(ContextCompat.getDrawable(itemRvCheckboxTaskStepsButtonBlockBinding.getRoot().getContext(), R.drawable.background_primary10_16_outlined));
        }
    }
}
