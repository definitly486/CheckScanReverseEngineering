package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;

/* JADX INFO: loaded from: classes.dex */
public final class x76 implements TextWatcher {
    public final /* synthetic */ PhoneSignUpFragment b;

    public x76(PhoneSignUpFragment phoneSignUpFragment) {
        this.b = phoneSignUpFragment;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.b.o().onInviteCodeChanged(charSequence.toString());
    }
}
