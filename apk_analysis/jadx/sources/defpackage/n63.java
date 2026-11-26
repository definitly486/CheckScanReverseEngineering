package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n63 extends m {
    public final m63 a;
    public String b;
    public final StringBuilder c;

    public static class a extends n {
        /* JADX WARN: Code duplicated, block: B:27:0x0046  */
        @Override // defpackage.vj0
        public final bk0 a(dq2 dq2Var, dq2.a aVar) {
            n63 n63Var;
            int i = dq2Var.g;
            if (i >= 4) {
                return null;
            }
            int i2 = dq2Var.e;
            CharSequence charSequence = dq2Var.a;
            int length = charSequence.length();
            int i3 = 0;
            int i4 = 0;
            for (int i5 = i2; i5 < length; i5++) {
                char cCharAt = charSequence.charAt(i5);
                if (cCharAt == '`') {
                    i3++;
                } else {
                    if (cCharAt != '~') {
                        break;
                    }
                    i4++;
                }
            }
            if (i3 >= 3 && i4 == 0) {
                int i6 = i2 + i3;
                int length2 = charSequence.length();
                while (true) {
                    if (i6 >= length2) {
                        i6 = -1;
                        break;
                    }
                    if (charSequence.charAt(i6) == '`') {
                        break;
                    }
                    i6++;
                }
                if (i6 != -1) {
                    n63Var = null;
                } else {
                    n63Var = new n63(i3, i, '`');
                }
            } else if (i4 < 3 || i3 != 0) {
                n63Var = null;
            } else {
                n63Var = new n63(i4, i, '~');
            }
            if (n63Var == null) {
                return null;
            }
            bk0 bk0Var = new bk0(n63Var);
            bk0Var.b = i2 + n63Var.a.g;
            return bk0Var;
        }
    }

    public n63(int i, int i2, char c) {
        m63 m63Var = new m63();
        this.a = m63Var;
        this.c = new StringBuilder();
        m63Var.f = c;
        m63Var.g = i;
        m63Var.h = i2;
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.m, defpackage.uj0
    public final void e(CharSequence charSequence) {
        if (this.b == null) {
            this.b = charSequence.toString();
            return;
        }
        StringBuilder sb = this.c;
        sb.append(charSequence);
        sb.append('\n');
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        int i = dq2Var.e;
        int i2 = dq2Var.b;
        CharSequence charSequence = dq2Var.a;
        int i3 = dq2Var.g;
        m63 m63Var = this.a;
        if (i3 < 4) {
            char c = m63Var.f;
            int i4 = m63Var.g;
            int iB = tz.b(c, i, charSequence.length(), charSequence) - i;
            if (iB >= i4 && tz.c(charSequence, i + iB, charSequence.length()) == charSequence.length()) {
                return new rj0(-1, -1, true);
            }
        }
        int length = charSequence.length();
        for (int i5 = m63Var.h; i5 > 0 && i2 < length && charSequence.charAt(i2) == ' '; i5--) {
            i2++;
        }
        return rj0.a(i2);
    }

    @Override // defpackage.m, defpackage.uj0
    public final void h() {
        String strA = w03.a(this.b.trim());
        m63 m63Var = this.a;
        m63Var.i = strA;
        m63Var.j = this.c.toString();
    }
}
