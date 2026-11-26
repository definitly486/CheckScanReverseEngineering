package yads;

import defpackage.j59;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class kz0 extends rd2 {
    public final String a;
    public final ArrayList b = new ArrayList();

    public kz0(String str) {
        this.a = str;
    }

    public final cn1 a(vq0 vq0Var) {
        db1 db1VarQ = vq0Var.q();
        if (db1VarQ == null) {
            return null;
        }
        for (cb1 cb1Var : db1VarQ.c) {
            b(cb1Var.a, vq0Var.m(), m32.a(cb1Var));
        }
        if (this.b.isEmpty()) {
            o01.a(vq0Var, new RuntimeException(defpackage.me0.c("Error resolving container. Elements that respond to id '", this.a, "' are not found.")));
            return null;
        }
        if (this.b.size() <= 1) {
            return (cn1) defpackage.qn1.T(this.b);
        }
        o01.a(vq0Var, new RuntimeException(defpackage.me0.c("Error resolving container. Found multiple elements that respond to id '", this.a, "'.")));
        return null;
    }

    @Override // yads.rd2
    public final j59 a(br0 br0Var, tt ttVar, n32 n32Var) {
        if (defpackage.aa4.e(br0Var.a().a(), this.a)) {
            this.b.add(new cn1(br0Var, ttVar.b));
        }
        return j59.a;
    }
}
