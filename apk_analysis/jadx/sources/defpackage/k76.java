package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangePresenter;
import com.warefly.checkscan.presentation.phoneChange.view.PhoneChangeFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class k76 implements TextWatcher {
    public final /* synthetic */ PhoneChangeFragment b;

    public k76(PhoneChangeFragment phoneChangeFragment) {
        this.b = phoneChangeFragment;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ze4<Object>[] ze4VarArr = PhoneChangeFragment.j;
        PhoneChangeFragment phoneChangeFragment = this.b;
        Editable text = phoneChangeFragment.n().etNumberPhone.getText();
        String string = text != null ? text.toString() : null;
        if (string != null) {
            if (!ra8.C(string, "+7", false)) {
                EditText editText = phoneChangeFragment.n().etNumberPhone;
                editText.setText("+7");
                editText.setSelection(2);
            }
            PhoneChangePresenter phoneChangePresenter = phoneChangeFragment.phoneChangePresenter;
            if (phoneChangePresenter != null) {
                phoneChangePresenter.onPhoneChanged(string);
            } else {
                aa4.j("phoneChangePresenter");
                throw null;
            }
        }
    }
}
