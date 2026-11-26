package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class iz4 {
    public static final hz4 Companion = new hz4();
    public static final defpackage.cl4[] d = {defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.er2(3)), null, null};
    public final kz4 a;
    public final String b;
    public final Integer c;

    public iz4(int i, kz4 kz4Var, String str, Integer num) {
        if (7 != (i & 7)) {
            defpackage.r96.f(gz4.b, i, 7);
            throw null;
        }
        this.a = kz4Var;
        this.b = str;
        this.c = num;
    }

    public iz4(kz4 kz4Var, String str, Integer num) {
        this.a = kz4Var;
        this.b = str;
        this.c = num;
    }
}
