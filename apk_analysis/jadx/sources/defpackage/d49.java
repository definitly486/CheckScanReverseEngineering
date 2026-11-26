package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class d49 {
    public static final Object c = new Object();
    public final th5 a;
    public final oh8 b;

    public d49(th5 th5Var, oh8 oh8Var) {
        this.a = th5Var;
        this.b = oh8Var;
    }

    public final void a() {
        synchronized (c) {
            while (true) {
                try {
                    ef9 ef9VarA = this.b.a();
                    if (ef9VarA.equals(ef9.a.a)) {
                        j59 j59Var = j59.a;
                    } else if (ef9VarA instanceof ef9.b) {
                        th5 th5Var = this.a;
                        ArrayList<m72> arrayList = ((ef9.b) ef9VarA).a;
                        nz3 nz3Var = (nz3) th5Var.b;
                        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
                        for (m72 m72Var : arrayList) {
                            m72Var.getClass();
                            String str = m72Var.a;
                            byte[] bytes = w8a.a(m72Var.b).getBytes(ha1.b);
                            bytes.getClass();
                            arrayList2.add(new ab4(str, bytes));
                        }
                        nz3Var.a(arrayList2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
