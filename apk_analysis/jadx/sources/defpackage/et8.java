package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class et8 extends m {
    public final dt8 a = new dt8();

    public static class a extends n {
        @Override // defpackage.vj0
        public final bk0 a(dq2 dq2Var, dq2.a aVar) {
            if (dq2Var.g >= 4) {
                return null;
            }
            CharSequence charSequence = dq2Var.a;
            int length = charSequence.length();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = dq2Var.e; i4 < length; i4++) {
                char cCharAt = charSequence.charAt(i4);
                if (cCharAt != '\t' && cCharAt != ' ') {
                    if (cCharAt == '*') {
                        i3++;
                    } else if (cCharAt == '-') {
                        i++;
                    } else {
                        if (cCharAt != '_') {
                            return null;
                        }
                        i2++;
                    }
                }
            }
            if ((i < 3 || i2 != 0 || i3 != 0) && ((i2 < 3 || i != 0 || i3 != 0) && (i3 < 3 || i != 0 || i2 != 0))) {
                return null;
            }
            bk0 bk0Var = new bk0(new et8());
            bk0Var.b = charSequence.length();
            return bk0Var;
        }
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        return null;
    }
}
