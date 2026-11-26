package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.CheckBox;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.presenter.CheckboxTaskStepsDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskStepsCheckboxBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class ub1 extends vd9<fc1, ItemRvCheckboxTaskStepsCheckboxBinding> {
    public final CheckboxTaskStepsDetailsPresenter b;

    public interface a {
        void onCheckboxClicked(fc1 fc1Var);
    }

    public ub1(CheckboxTaskStepsDetailsPresenter checkboxTaskStepsDetailsPresenter) {
        super(tb1.c);
        this.b = checkboxTaskStepsDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof fc1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, fc1 fc1Var) {
        ItemRvCheckboxTaskStepsCheckboxBinding itemRvCheckboxTaskStepsCheckboxBinding = (ItemRvCheckboxTaskStepsCheckboxBinding) viewBinding;
        fc1 fc1Var2 = fc1Var;
        itemRvCheckboxTaskStepsCheckboxBinding.getClass();
        CheckBox checkBox = itemRvCheckboxTaskStepsCheckboxBinding.cbAgreement;
        checkBox.setChecked(fc1Var2.d);
        checkBox.setEnabled(fc1Var2.e);
        int i = sx3.a;
        checkBox.setText(sx3.a(fc1Var2.b));
        checkBox.setMovementMethod(x61.a);
        checkBox.setOnClickListener(new lb7(new vb1(0, this, fc1Var2)));
    }
}
