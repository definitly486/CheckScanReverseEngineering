package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class xy5 implements pz3 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final List<ez5> e;
    public final m88 f;
    public final String g;
    public final String h;
    public boolean i;
    public final qy5 j;

    public xy5() {
        throw null;
    }

    public xy5(long j, String str, String str2, String str3, ArrayList arrayList, m88 m88Var, String str4, String str5, qy5 qy5Var) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        m88Var.getClass();
        qy5Var.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = arrayList;
        this.f = m88Var;
        this.g = str4;
        this.h = str5;
        this.i = false;
        this.j = qy5Var;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.e + this.d + this.g + this.h + this.j;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }
}
