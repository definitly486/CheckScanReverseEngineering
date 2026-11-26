package defpackage;

import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.CheckBox;
import com.warefly.checkscan.presentation.tasks.checkbox.presenter.CheckboxTaskDetailsPresenter;
import com.warefly.checkscan.tasks.databinding.ItemRvCheckboxTaskCheckboxBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class za1 extends vd9<gc1, ItemRvCheckboxTaskCheckboxBinding> {
    public final CheckboxTaskDetailsPresenter b;

    public interface a {
        void onCheckboxClicked(gc1 gc1Var);
    }

    public za1(CheckboxTaskDetailsPresenter checkboxTaskDetailsPresenter) {
        super(ya1.c);
        this.b = checkboxTaskDetailsPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof gc1;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, gc1 gc1Var) {
        ItemRvCheckboxTaskCheckboxBinding itemRvCheckboxTaskCheckboxBinding = (ItemRvCheckboxTaskCheckboxBinding) viewBinding;
        gc1 gc1Var2 = gc1Var;
        itemRvCheckboxTaskCheckboxBinding.getClass();
        CheckBox checkBox = itemRvCheckboxTaskCheckboxBinding.cbAgreement;
        checkBox.setChecked(gc1Var2.d);
        checkBox.setEnabled(gc1Var2.e);
        int i = sx3.a;
        checkBox.setText(sx3.a(gc1Var2.b));
        checkBox.setMovementMethod(x61.a);
        checkBox.setOnClickListener(new lb7(new ab1(0, this, gc1Var2)));
    }
}
