package yads;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes6.dex */
public final class vs5 extends r75 {
    public final Object s;
    public y85 t;

    public vs5(String str, y85 y85Var, x85 x85Var) {
        super(0, str, x85Var);
        this.s = new Object();
        this.t = y85Var;
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        String str;
        try {
            str = new String(en4Var.b, pa3.a(en4Var.c));
        } catch (UnsupportedEncodingException unused) {
            str = new String(en4Var.b);
        }
        return new z85(str, pa3.a(en4Var));
    }

    @Override // yads.r75
    public final void a() {
        super.a();
        synchronized (this.s) {
            this.t = null;
        }
    }

    @Override // yads.r75
    public final void a(Object obj) {
        y85 y85Var;
        String str = (String) obj;
        synchronized (this.s) {
            y85Var = this.t;
        }
        if (y85Var != null) {
            y85Var.a(str);
        }
    }
}
