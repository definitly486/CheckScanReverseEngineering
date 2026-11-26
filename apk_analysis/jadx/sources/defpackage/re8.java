package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class re8 implements TextWatcher {
    public final /* synthetic */ SupportFormFragment b;

    public re8(SupportFormFragment supportFormFragment) {
        this.b = supportFormFragment;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.b.o().onEmailChanged(charSequence.toString());
    }
}
