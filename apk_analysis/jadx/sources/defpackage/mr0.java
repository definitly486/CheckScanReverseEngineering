package defpackage;

import android.text.InputFilter;
import android.view.View;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.bonuses.databinding.ItemRvBalancePromocodeBlockBinding;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;

/* JADX INFO: loaded from: classes.dex */
public final class mr0 extends vd9<jr0, ItemRvBalancePromocodeBlockBinding> {
    public final BonusesMainNewPresenter b;
    public nr0 c;

    public interface a {
        void onPromocodeButtonActivate(String str);

        void onPromocodeTextChanged(String str);

        void sendPromocodeStartInteraction();
    }

    public mr0(BonusesMainNewPresenter bonusesMainNewPresenter) {
        super(lr0.c);
        this.b = bonusesMainNewPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof jr0;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, jr0 jr0Var) {
        final ItemRvBalancePromocodeBlockBinding itemRvBalancePromocodeBlockBinding = (ItemRvBalancePromocodeBlockBinding) viewBinding;
        jr0 jr0Var2 = jr0Var;
        itemRvBalancePromocodeBlockBinding.getClass();
        itemRvBalancePromocodeBlockBinding.tvTitle.setText(jr0Var2.a);
        String str = jr0Var2.c;
        if (str != null) {
            itemRvBalancePromocodeBlockBinding.etField.setHint(str);
        }
        String str2 = jr0Var2.b;
        if (str2 != null) {
            itemRvBalancePromocodeBlockBinding.btnActivate.setText(str2);
        }
        TextInputEditText textInputEditText = itemRvBalancePromocodeBlockBinding.etField;
        if (textInputEditText.hasFocus()) {
            return;
        }
        textInputEditText.setInputType(1);
        textInputEditText.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(20)});
        textInputEditText.setText(jr0Var2.d);
        textInputEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: kr0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                mr0 mr0Var = this.b;
                ItemRvBalancePromocodeBlockBinding itemRvBalancePromocodeBlockBinding2 = itemRvBalancePromocodeBlockBinding;
                if (!z) {
                    itemRvBalancePromocodeBlockBinding2.etField.removeTextChangedListener(mr0Var.c);
                    return;
                }
                mr0Var.b.sendPromocodeStartInteraction();
                nr0 nr0Var = mr0Var.c;
                if (nr0Var == null) {
                    nr0Var = new nr0(mr0Var);
                    mr0Var.c = nr0Var;
                }
                itemRvBalancePromocodeBlockBinding2.etField.addTextChangedListener(nr0Var);
            }
        });
    }

    @Override // defpackage.vd9
    public final void j(ViewBinding viewBinding) {
        ItemRvBalancePromocodeBlockBinding itemRvBalancePromocodeBlockBinding = (ItemRvBalancePromocodeBlockBinding) viewBinding;
        itemRvBalancePromocodeBlockBinding.getClass();
        TextView textView = itemRvBalancePromocodeBlockBinding.btnActivate;
        textView.getClass();
        textView.setOnClickListener(new lb7(new or0(this, itemRvBalancePromocodeBlockBinding, 0)));
    }
}
