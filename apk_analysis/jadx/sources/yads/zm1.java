package yads;

import android.text.Editable;
import android.text.TextWatcher;
import defpackage.nl3;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class zm1 implements TextWatcher {
    public final /* synthetic */ bn1 a;

    public zm1(bn1 bn1Var) {
        this.a = bn1Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        Iterator it = this.a.i.iterator();
        while (it.hasNext()) {
            ((nl3) it.next()).invoke(editable);
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
