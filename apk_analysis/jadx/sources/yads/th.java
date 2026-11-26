package yads;

import android.view.View;
import defpackage.cy6;

/* JADX INFO: loaded from: classes6.dex */
public final class th implements cy6 {
    public Object a = 0;

    @Override // defpackage.by6
    public final Object getValue(Object obj, defpackage.ze4 ze4Var) {
        return this.a;
    }

    public final void setValue(Object obj, defpackage.ze4 ze4Var, Object obj2) {
        View view = (View) obj;
        if (defpackage.aa4.e(this.a, obj2)) {
            return;
        }
        this.a = obj2;
        view.invalidate();
    }
}
