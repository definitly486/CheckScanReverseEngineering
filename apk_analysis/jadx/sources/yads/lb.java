package yads;

import android.text.TextUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class lb {
    public final zo1 a;
    public final ml2 b;
    public kb c;
    public sr4 d;
    public jb e;
    public boolean f;

    public lb(zo1 zo1Var, ml2 ml2Var) {
        this.a = zo1Var;
        this.b = ml2Var;
    }

    public static final boolean a(lb lbVar) {
        jb jbVar = lbVar.e;
        if (jbVar == null || TextUtils.isEmpty(lbVar.a.getText())) {
            return true;
        }
        if (lbVar.f) {
            sr4 sr4Var = lbVar.d;
            if (sr4Var != null) {
                lbVar.a.getViewTreeObserver().removeOnPreDrawListener(sr4Var);
            }
            lbVar.d = null;
            lbVar.f = false;
            return true;
        }
        int lineCount = lbVar.a.getLineCount();
        int iIntValue = jbVar.a;
        Integer num = lineCount > jbVar.b + iIntValue ? null : Integer.MAX_VALUE;
        if (num != null) {
            iIntValue = num.intValue();
        }
        if (iIntValue != lbVar.a.getMaxLines()) {
            lbVar.a.setMaxLines(iIntValue);
            lbVar.f = true;
            return false;
        }
        sr4 sr4Var2 = lbVar.d;
        if (sr4Var2 != null) {
            lbVar.a.getViewTreeObserver().removeOnPreDrawListener(sr4Var2);
        }
        lbVar.d = null;
        return true;
    }

    public final void b() {
        kb kbVar = this.c;
        if (kbVar != null) {
            this.a.removeOnAttachStateChangeListener(kbVar);
        }
        this.c = null;
        sr4 sr4Var = this.d;
        if (sr4Var != null) {
            this.a.getViewTreeObserver().removeOnPreDrawListener(sr4Var);
        }
        this.d = null;
    }

    public final void a() {
        if (this.d != null) {
            return;
        }
        sr4 sr4VarA = pq4.a(this.b, new defpackage.uj(this, 8));
        this.a.getViewTreeObserver().addOnPreDrawListener(sr4VarA);
        this.d = sr4VarA;
    }

    public final void a(jb jbVar) {
        if (defpackage.aa4.e(this.e, jbVar)) {
            return;
        }
        this.e = jbVar;
        if (ViewCompat.isAttachedToWindow(this.a)) {
            a();
        }
        if (this.c != null) {
            return;
        }
        kb kbVar = new kb(this);
        this.a.addOnAttachStateChangeListener(kbVar);
        this.c = kbVar;
    }
}
