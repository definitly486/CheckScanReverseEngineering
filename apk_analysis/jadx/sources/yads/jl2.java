package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class jl2 extends r75 {
    public static final Object v = new Object();
    public final il2 s;
    public final fl2 t;
    public final qd3 u;

    public jl2(String str, Context context, fl2 fl2Var, gl2 gl2Var) {
        il2 il2Var = new il2(context.getApplicationContext());
        super(0, str, gl2Var);
        this.s = il2Var;
        this.t = fl2Var;
        this.u = new qd3();
        this.o = new am0(1000, 2.0f, 2);
        this.j = false;
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        z85 z85Var;
        synchronized (v) {
            try {
                qd3 qd3Var = this.u;
                byte[] bArr = en4Var.b;
                qd3Var.getClass();
                z85Var = new z85(new kl2(this.s.a(en4Var.b), qd3.a(bArr)), pa3.a(en4Var));
            } catch (Exception e) {
                z85Var = new z85(new rs4(e));
            } catch (OutOfMemoryError e2) {
                int length = en4Var.b.length;
                boolean z = li6.a;
                z85Var = new z85(new rs4(e2));
            }
        }
        return z85Var;
    }

    @Override // yads.r75
    public final void a(Object obj) {
        this.t.invoke((kl2) obj);
    }
}
