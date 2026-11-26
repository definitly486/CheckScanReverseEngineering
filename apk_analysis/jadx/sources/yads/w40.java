package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class w40 implements pn0 {
    public final pn0[] a;

    public w40(pn0... pn0VarArr) {
        this.a = pn0VarArr;
    }

    @Override // yads.pn0
    public final boolean a(Context context) {
        for (pn0 pn0Var : this.a) {
            if (!pn0Var.a(context)) {
                return false;
            }
        }
        return true;
    }
}
