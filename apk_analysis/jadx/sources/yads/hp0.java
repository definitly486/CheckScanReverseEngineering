package yads;

import android.view.View;
import defpackage.cy6;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class hp0 implements cy6 {
    public Object a;
    public final nl3 b;

    public hp0(nl3 nl3Var, Object obj) {
        this.a = obj;
        this.b = nl3Var;
    }

    @Override // defpackage.by6
    public final Object getValue(Object obj, defpackage.ze4 ze4Var) {
        return this.a;
    }

    public final void setValue(Object obj, defpackage.ze4 ze4Var, Object obj2) {
        Object objInvoke;
        View view = (View) obj;
        nl3 nl3Var = this.b;
        if (nl3Var != null && (objInvoke = nl3Var.invoke(obj2)) != null) {
            obj2 = objInvoke;
        }
        if (defpackage.aa4.e(this.a, obj2)) {
            return;
        }
        this.a = obj2;
        view.requestLayout();
    }
}
