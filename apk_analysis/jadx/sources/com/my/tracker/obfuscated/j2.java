package com.my.tracker.obfuscated;

import defpackage.ad2;
import defpackage.jh;

/* JADX INFO: loaded from: classes4.dex */
public final class j2 implements h2 {
    private final int a;
    private long b;
    private long c;

    public j2(int i, long j, long j2) {
        this.a = i;
        this.b = j;
        this.c = j2;
    }

    @Override // com.my.tracker.obfuscated.h2
    public void a(long j) {
        this.c += j;
    }

    @Override // com.my.tracker.obfuscated.h2, com.my.tracker.obfuscated.i2
    public long b() {
        return this.b;
    }

    @Override // com.my.tracker.obfuscated.h2
    public void c(long j) {
        this.b += j;
    }

    @Override // com.my.tracker.obfuscated.h2
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public j2 m9522clone() {
        try {
            j2 j2Var = (j2) super.clone();
            j2Var.g();
            j2Var.a(this.c);
            j2Var.c(this.b);
            return j2Var;
        } catch (CloneNotSupportedException unused) {
            return new j2(this.a, this.b, this.c);
        }
    }

    @Override // com.my.tracker.obfuscated.h2
    public void g() {
        this.b = 0L;
        this.c = 0L;
    }

    public String toString() {
        String strB;
        String str;
        String strB2 = defpackage.k2.b(this.b + this.c, " ms : ", new StringBuilder("total time = "));
        String str2 = "foreground = " + this.b;
        int i = this.a;
        int i2 = this.a;
        if (i == 0) {
            strB = jh.b(i2, "[App Time   TS] id = ");
            str = "useful background = " + this.c;
        } else {
            strB = jh.b(i2, "[Time Based TS] id = ");
            str = "background = " + this.c;
        }
        StringBuilder sbD = ad2.d(strB, ", ", strB2, str2, ", ");
        sbD.append(str);
        return sbD.toString();
    }

    @Override // com.my.tracker.obfuscated.r2, com.my.tracker.obfuscated.i2
    public int a() {
        return this.a;
    }

    @Override // com.my.tracker.obfuscated.h2, com.my.tracker.obfuscated.i2
    public long c() {
        return this.c;
    }

    public j2(int i) {
        this(i, 0L, 0L);
    }
}
