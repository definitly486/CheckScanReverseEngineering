package defpackage;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.ItemRvSbpTransferAmountInputBinding;
import com.warefly.checkscan.presentation.balance.transferCashback.sbp.presenter.TransferSBPPresenter;
import java.text.NumberFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class h09 extends vd9<j09, ItemRvSbpTransferAmountInputBinding> {
    public final TransferSBPPresenter b;
    public bd c;

    public interface a {
        void onAmountChanged(Double d);
    }

    public h09(TransferSBPPresenter transferSBPPresenter) {
        super(g09.c);
        this.b = transferSBPPresenter;
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof j09;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, j09 j09Var) {
        final ItemRvSbpTransferAmountInputBinding itemRvSbpTransferAmountInputBinding = (ItemRvSbpTransferAmountInputBinding) viewBinding;
        j09 j09Var2 = j09Var;
        itemRvSbpTransferAmountInputBinding.getClass();
        itemRvSbpTransferAmountInputBinding.tvTitle.setText(itemRvSbpTransferAmountInputBinding.getRoot().getContext().getString(R.string.sbp_sum_hint));
        itemRvSbpTransferAmountInputBinding.etField.setImeOptions(6);
        boolean z = j09Var2.e;
        TextInputLayout textInputLayout = itemRvSbpTransferAmountInputBinding.tilField;
        if (z) {
            textInputLayout.setError(j09Var2.f);
            itemRvSbpTransferAmountInputBinding.tilField.setErrorEnabled(true);
        } else {
            textInputLayout.setError(null);
            itemRvSbpTransferAmountInputBinding.tilField.setErrorEnabled(false);
        }
        TextInputEditText textInputEditText = itemRvSbpTransferAmountInputBinding.etField;
        if (textInputEditText.hasFocus()) {
            return;
        }
        String str = NumberFormat.getNumberInstance(new Locale("ru", "RU")).format(j09Var2.a);
        str.getClass();
        textInputEditText.setText(str);
        textInputEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: f09
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z2) {
                h09 h09Var = this.b;
                ItemRvSbpTransferAmountInputBinding itemRvSbpTransferAmountInputBinding2 = itemRvSbpTransferAmountInputBinding;
                if (!z2) {
                    itemRvSbpTransferAmountInputBinding2.etField.removeTextChangedListener(h09Var.c);
                    return;
                }
                bd bdVar = h09Var.c;
                if (bdVar == null) {
                    TextInputEditText textInputEditText2 = itemRvSbpTransferAmountInputBinding2.etField;
                    textInputEditText2.getClass();
                    bdVar = new bd(textInputEditText2, new i09(h09Var));
                    h09Var.c = bdVar;
                }
                itemRvSbpTransferAmountInputBinding2.etField.addTextChangedListener(bdVar);
            }
        });
    }
}
