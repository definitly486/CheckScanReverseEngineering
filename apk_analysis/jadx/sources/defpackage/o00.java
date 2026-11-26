package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class o00 extends p54 {
    public static final Pattern e = z05.n;

    @Override // defpackage.p54
    public final zn5 b() {
        this.d++;
        if (c() == '\n') {
            pu3 pu3Var = new pu3();
            this.d++;
            return pu3Var;
        }
        if (this.d < this.c.length()) {
            String str = this.c;
            int i = this.d;
            if (e.matcher(str.substring(i, i + 1)).matches()) {
                String str2 = this.c;
                int i2 = this.d;
                this.a.getClass();
                dq8 dq8Var = new dq8(str2.substring(i2, i2 + 1));
                this.d++;
                return dq8Var;
            }
        }
        return f("\\");
    }

    @Override // defpackage.p54
    public final char d() {
        return '\\';
    }
}
