package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xj0 extends m {
    public final wj0 a = new wj0();

    public static class a extends n {
        @Override // defpackage.vj0
        public final bk0 a(dq2 dq2Var, dq2.a aVar) {
            char cCharAt;
            int i = dq2Var.e;
            if (!xj0.i(dq2Var, i)) {
                return null;
            }
            int i2 = dq2Var.c + dq2Var.g;
            int i3 = i2 + 1;
            CharSequence charSequence = dq2Var.a;
            int i4 = i + 1;
            if (i4 < charSequence.length() && ((cCharAt = charSequence.charAt(i4)) == '\t' || cCharAt == ' ')) {
                i3 = i2 + 2;
            }
            bk0 bk0Var = new bk0(new xj0());
            bk0Var.c = i3;
            return bk0Var;
        }
    }

    public static boolean i(dq2 dq2Var, int i) {
        CharSequence charSequence = dq2Var.a;
        return dq2Var.g < 4 && i < charSequence.length() && charSequence.charAt(i) == '>';
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        char cCharAt;
        int i = dq2Var.e;
        if (!i(dq2Var, i)) {
            return null;
        }
        int i2 = dq2Var.c + dq2Var.g;
        int i3 = i2 + 1;
        CharSequence charSequence = dq2Var.a;
        int i4 = i + 1;
        if (i4 < charSequence.length() && ((cCharAt = charSequence.charAt(i4)) == '\t' || cCharAt == ' ')) {
            i3 = i2 + 2;
        }
        return new rj0(-1, i3, false);
    }
}
