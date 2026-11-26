package defpackage;

import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.maskededittext.MaskedInputEditText;
import com.warefly.checkscan.personalform.databinding.ItemPersonalDataFormTextFieldBinding;
import com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class r66 extends vd9<t66, ItemPersonalDataFormTextFieldBinding> {
    public final PersonalDataFormPresenter b;
    public final LinkedHashMap c;

    public interface a {
        void onTextFieldChanged(String str, String str2, String str3);
    }

    public r66(PersonalDataFormPresenter personalDataFormPresenter) {
        super(q66.c);
        this.b = personalDataFormPresenter;
        this.c = new LinkedHashMap();
    }

    @Override // defpackage.vd9
    public final boolean g(Object obj) {
        obj.getClass();
        return obj instanceof t66;
    }

    @Override // defpackage.vd9
    public final void i(ViewBinding viewBinding, t66 t66Var) {
        final ItemPersonalDataFormTextFieldBinding itemPersonalDataFormTextFieldBinding = (ItemPersonalDataFormTextFieldBinding) viewBinding;
        final t66 t66Var2 = t66Var;
        itemPersonalDataFormTextFieldBinding.getClass();
        itemPersonalDataFormTextFieldBinding.tvTitle.setText(t66Var2.getTitle());
        boolean zJ = t66Var2.j();
        TextInputLayout textInputLayout = itemPersonalDataFormTextFieldBinding.tilField;
        if (zJ) {
            String strC = t66Var2.c();
            if (strC == null) {
                strC = itemPersonalDataFormTextFieldBinding.getRoot().getContext().getString(R.string.personal_form_field_default_error);
            }
            textInputLayout.setError(strC);
            itemPersonalDataFormTextFieldBinding.tilField.setErrorEnabled(true);
        } else {
            textInputLayout.setError(null);
            itemPersonalDataFormTextFieldBinding.tilField.setErrorEnabled(false);
        }
        MaskedInputEditText maskedInputEditText = itemPersonalDataFormTextFieldBinding.etField;
        if (maskedInputEditText.hasFocus()) {
            return;
        }
        if (t66Var2 instanceof n56) {
            maskedInputEditText.setInputType(2);
            maskedInputEditText.setMask("##.##.####");
            maskedInputEditText.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(10)});
        }
        maskedInputEditText.setHint(t66Var2.getHint());
        maskedInputEditText.setText(t66Var2.getValue());
        maskedInputEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: p66
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                r66 r66Var = this.b;
                LinkedHashMap linkedHashMap = r66Var.c;
                t66 t66Var3 = t66Var2;
                ItemPersonalDataFormTextFieldBinding itemPersonalDataFormTextFieldBinding2 = itemPersonalDataFormTextFieldBinding;
                if (!z) {
                    itemPersonalDataFormTextFieldBinding2.etField.removeTextChangedListener((TextWatcher) linkedHashMap.get(t66Var3.getKey()));
                    return;
                }
                if (linkedHashMap.get(t66Var3.getKey()) == null) {
                    linkedHashMap.put(t66Var3.getKey(), new s66(r66Var, t66Var3));
                }
                itemPersonalDataFormTextFieldBinding2.etField.addTextChangedListener((TextWatcher) linkedHashMap.get(t66Var3.getKey()));
            }
        });
    }
}
