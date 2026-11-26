package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ov3 extends m {
    public final nv3 a;
    public final String b;

    public static class a extends n {
        /* JADX WARN: Code duplicated, block: B:16:0x003b  */
        /* JADX WARN: Code duplicated, block: B:55:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:57:0x00e3  */
        /* JADX WARN: Code duplicated, block: B:58:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:64:0x00fa  */
        @Override // defpackage.vj0
        public final bk0 a(dq2 dq2Var, dq2.a aVar) {
            ov3 ov3Var;
            int i;
            StringBuilder sb;
            if (dq2Var.g < 4) {
                CharSequence charSequence = dq2Var.a;
                int i2 = dq2Var.e;
                int iB = tz.b('#', i2, charSequence.length(), charSequence) - i2;
                if (iB == 0 || iB > 6) {
                    ov3Var = null;
                } else {
                    int i3 = i2 + iB;
                    if (i3 >= charSequence.length()) {
                        ov3Var = new ov3(iB, "");
                    } else {
                        char cCharAt = charSequence.charAt(i3);
                        if (cCharAt == ' ' || cCharAt == '\t') {
                            int length = charSequence.length() - 1;
                            while (true) {
                                if (length >= i3) {
                                    char cCharAt2 = charSequence.charAt(length);
                                    if (cCharAt2 != '\t' && cCharAt2 != ' ') {
                                        break;
                                    }
                                    length--;
                                } else {
                                    length = i3 - 1;
                                    break;
                                }
                            }
                            int i4 = length;
                            while (true) {
                                if (i4 < i3) {
                                    i4 = i3 - 1;
                                    break;
                                }
                                if (charSequence.charAt(i4) != '#') {
                                    break;
                                }
                                i4--;
                            }
                            int i5 = i4;
                            while (true) {
                                if (i5 >= i3) {
                                    char cCharAt3 = charSequence.charAt(i5);
                                    if (cCharAt3 != '\t' && cCharAt3 != ' ') {
                                        break;
                                    }
                                    i5--;
                                } else {
                                    i5 = i3 - 1;
                                    break;
                                }
                            }
                            ov3Var = i5 != i4 ? new ov3(iB, charSequence.subSequence(i3, i5 + 1).toString()) : new ov3(iB, charSequence.subSequence(i3, length + 1).toString());
                        } else {
                            ov3Var = null;
                        }
                    }
                }
                if (ov3Var != null) {
                    bk0 bk0Var = new bk0(ov3Var);
                    bk0Var.b = charSequence.length();
                    return bk0Var;
                }
                char cCharAt4 = charSequence.charAt(i2);
                if (cCharAt4 == '-') {
                    if (tz.c(charSequence, tz.b('-', i2 + 1, charSequence.length(), charSequence), charSequence.length()) >= charSequence.length()) {
                        i = 2;
                    } else {
                        i = 0;
                    }
                } else if (cCharAt4 != '=') {
                    i = 0;
                } else if (tz.c(charSequence, tz.b('=', i2 + 1, charSequence.length(), charSequence), charSequence.length()) >= charSequence.length()) {
                    i = 1;
                } else if (tz.c(charSequence, tz.b('-', i2 + 1, charSequence.length(), charSequence), charSequence.length()) >= charSequence.length()) {
                    i = 2;
                } else {
                    i = 0;
                }
                if (i > 0) {
                    uj0 uj0Var = aVar.a;
                    if (uj0Var instanceof e36) {
                        sb = ((e36) uj0Var).b.b;
                        if (sb.length() == 0) {
                            sb = null;
                        }
                    } else {
                        sb = null;
                    }
                    if (sb != null) {
                        bk0 bk0Var2 = new bk0(new ov3(i, sb.toString()));
                        bk0Var2.b = charSequence.length();
                        bk0Var2.d = true;
                        return bk0Var2;
                    }
                }
            }
            return null;
        }
    }

    public ov3(int i, String str) {
        nv3 nv3Var = new nv3();
        this.a = nv3Var;
        nv3Var.f = i;
        this.b = str;
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        return null;
    }

    @Override // defpackage.m, defpackage.uj0
    public final void g(l54 l54Var) {
        l54Var.a(this.b, this.a);
    }
}
