package yads;

import android.widget.EditText;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class w66 extends RecyclerView.ViewHolder {
    public final n76 a;
    public final i76 b;

    public w66(n76 n76Var, i76 i76Var) {
        super(n76Var);
        this.a = n76Var;
        this.b = i76Var;
    }

    public static String b(e76 e76Var) {
        return e76Var.b().length() > 0 ? defpackage.cg.d(e76Var.b(), "/", e76Var.a()) : e76Var.a();
    }

    public final void a(e76 e76Var) {
        n76 n76Var = this.a;
        n76Var.a.setText(b(e76Var));
        n76Var.b.setText(e76Var.c);
        n76Var.c.setText(e76Var.d);
        EditText editText = n76Var.c;
        String str = e76Var.c;
        editText.setInputType(defpackage.aa4.e(str, "number") ? true : defpackage.aa4.e(str, TypedValues.Custom.S_INT) ? 2 : 1);
        n76Var.d = new defpackage.vw2(1, this, e76Var);
    }

    public static final j59 a(w66 w66Var, e76 e76Var, String str) {
        w66Var.b.invoke(e76Var.a, e76Var.b, str);
        return j59.a;
    }
}
