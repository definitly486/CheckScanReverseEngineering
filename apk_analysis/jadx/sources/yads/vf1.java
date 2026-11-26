package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vf1 {
    public final List a;
    public final String b;
    public final String c;
    public final fd1 d;

    public vf1(List list, String str, String str2, fd1 fd1Var) {
        this.a = list;
        this.b = str;
        this.c = str2;
        this.d = fd1Var;
    }

    public final boolean a(vf1 vf1Var) {
        if (vf1Var == null) {
            return false;
        }
        List list = this.a;
        List list2 = vf1Var.a;
        if (list.size() == list2.size()) {
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                wf1 wf1Var = (wf1) list2.get(i);
                wf1 wf1Var2 = (wf1) obj;
                if (wf1Var == null) {
                    wf1Var2.getClass();
                } else if (defpackage.aa4.e(wf1Var2.a, wf1Var.a) && wf1Var2.b == wf1Var.b) {
                    i = i2;
                }
            }
            if (defpackage.aa4.e(this.b, vf1Var.b) && defpackage.aa4.e(this.c, vf1Var.c) && this.d == vf1Var.d) {
                return true;
            }
        }
        return false;
    }
}
