package yads;

import android.text.Editable;
import android.text.TextWatcher;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class ik1 implements TextWatcher {
    public final /* synthetic */ ArrayList a;
    public final /* synthetic */ jk1 b;
    public final /* synthetic */ bn1 c;
    public final /* synthetic */ vq0 d;
    public final /* synthetic */ fs2 e;

    public ik1(ArrayList arrayList, jk1 jk1Var, bn1 bn1Var, vq0 vq0Var, fs2 fs2Var) {
        this.a = arrayList;
        this.b = jk1Var;
        this.c = bn1Var;
        this.d = vq0Var;
        this.e = fs2Var;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (editable != null) {
            for (j66 j66Var : this.a) {
                jk1 jk1Var = this.b;
                String strValueOf = String.valueOf(this.c.getText());
                bn1 bn1Var = this.c;
                vq0 vq0Var = this.d;
                fs2 fs2Var = this.e;
                jk1Var.getClass();
                boolean zA = j66Var.a.a(strValueOf);
                l76.a(vq0Var, j66Var.b, String.valueOf(zA), fs2Var);
                jk1Var.a(j66Var, vq0Var, bn1Var, zA);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
