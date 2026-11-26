package com.warefly.checkscan.presentation.mailChange.view;

import android.text.Editable;
import android.text.TextWatcher;
import defpackage.j59;
import defpackage.t11;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements TextWatcher {
    public final /* synthetic */ MailChangeFragment b;

    public a(MailChangeFragment mailChangeFragment) {
        this.b = mailChangeFragment;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        String string;
        ze4<Object>[] ze4VarArr = MailChangeFragment.k;
        MailChangeFragment mailChangeFragment = this.b;
        t11 t11Var = new t11(mailChangeFragment, 2);
        try {
            Editable text = mailChangeFragment.n().etMailChange.getText();
            if (text == null || (string = text.toString()) == null) {
                return;
            }
            t11Var.invoke(string);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }
}
