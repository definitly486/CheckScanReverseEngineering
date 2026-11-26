package yads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o75 {
    public final vz2 a;
    public final oe3 b;
    public final long c;
    public final List d;
    public final y35 e;

    public o75(vz2 vz2Var, oe3 oe3Var, ei5 ei5Var, ArrayList arrayList) {
        if (oe3Var.isEmpty()) {
            defpackage.mi2.b();
            throw null;
        }
        this.a = vz2Var;
        this.b = oe3.a(oe3Var);
        this.d = arrayList == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(arrayList);
        this.e = ei5Var.a(this);
        this.c = u56.a(ei5Var.c, 1000000L, ei5Var.b);
    }

    public abstract String c();

    public abstract qc0 d();

    public abstract y35 e();
}
