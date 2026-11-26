package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class zq4 extends m {
    public final yq4 a;
    public boolean b;
    public int c;

    public static class a extends n {
        /* JADX WARN: Code duplicated, block: B:50:0x00b9  */
        /* JADX WARN: Code duplicated, block: B:9:0x0025  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Switch 'out' block B:41:0x0095 for B:26:0x0059 already processed. Defaulting to fallback option. */
        @Override // defpackage.vj0
        public final bk0 a(dq2 dq2Var, dq2.a aVar) {
            StringBuilder sb;
            bk0 bk0Var;
            char cCharAt;
            c cVar;
            boolean z;
            b bVar;
            int i;
            char cCharAt2;
            uj0 uj0Var = aVar.a;
            int i2 = dq2Var.g;
            if (i2 >= 4) {
                return null;
            }
            int i3 = dq2Var.e;
            int i4 = dq2Var.c + i2;
            if (uj0Var instanceof e36) {
                sb = ((e36) uj0Var).b.b;
                if (sb.length() == 0) {
                    sb = null;
                }
            } else {
                sb = null;
            }
            boolean z2 = sb != null;
            CharSequence charSequence = dq2Var.a;
            char cCharAt3 = charSequence.charAt(i3);
            if (cCharAt3 == '*' || cCharAt3 == '+' || cCharAt3 == '-') {
                bk0Var = null;
                int i5 = i3 + 1;
                if (i5 >= charSequence.length() || (cCharAt = charSequence.charAt(i5)) == '\t' || cCharAt == ' ') {
                    fv0 fv0Var = new fv0();
                    fv0Var.g = cCharAt3;
                    cVar = new c(fv0Var, i5);
                } else {
                    cVar = bk0Var;
                }
            } else {
                int length = charSequence.length();
                int i6 = i3;
                int i7 = 0;
                while (true) {
                    if (i6 < length) {
                        char cCharAt4 = charSequence.charAt(i6);
                        bk0Var = null;
                        if (cCharAt4 != ')' && cCharAt4 != '.') {
                            switch (cCharAt4) {
                                case '0':
                                case '1':
                                case '2':
                                case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                                case '4':
                                case '5':
                                case '6':
                                case ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                                case '8':
                                case '9':
                                    i7++;
                                    if (i7 <= 9) {
                                        i6++;
                                    }
                                    break;
                                default:
                                    break;
                            }
                        } else if (i7 >= 1 && ((i = i6 + 1) >= charSequence.length() || (cCharAt2 = charSequence.charAt(i)) == '\t' || cCharAt2 == ' ')) {
                            String string = charSequence.subSequence(i3, i6).toString();
                            d06 d06Var = new d06();
                            d06Var.g = Integer.parseInt(string);
                            d06Var.h = cCharAt4;
                            cVar = new c(d06Var, i);
                        }
                    } else {
                        bk0Var = null;
                    }
                    cVar = bk0Var;
                }
            }
            if (cVar == 0) {
                bVar = bk0Var;
            } else {
                yq4 yq4Var = cVar.a;
                int i8 = cVar.b;
                int i9 = (i8 - i3) + i4;
                int length2 = charSequence.length();
                int i10 = i9;
                while (true) {
                    if (i8 >= length2) {
                        z = false;
                    } else {
                        char cCharAt5 = charSequence.charAt(i8);
                        if (cCharAt5 == '\t') {
                            i10 = (4 - (i10 % 4)) + i10;
                        } else if (cCharAt5 == ' ') {
                            i10++;
                        } else {
                            z = true;
                        }
                        i8++;
                    }
                }
                if (!z2 || ((!(yq4Var instanceof d06) || ((d06) yq4Var).g == 1) && z)) {
                    if (!z || i10 - i9 > 4) {
                        i10 = i9 + 1;
                    }
                    bVar = new b(yq4Var, i10);
                } else {
                    bVar = bk0Var;
                }
            }
            if (bVar == 0) {
                return bk0Var;
            }
            yq4 yq4Var2 = bVar.a;
            int i11 = bVar.b;
            ir4 ir4Var = new ir4(i11 - dq2Var.c);
            if (uj0Var instanceof zq4) {
                yq4 yq4Var3 = ((zq4) uj0Var).a;
                if (((yq4Var3 instanceof fv0) && (yq4Var2 instanceof fv0)) ? Character.valueOf(((fv0) yq4Var3).g).equals(Character.valueOf(((fv0) yq4Var2).g)) : ((yq4Var3 instanceof d06) && (yq4Var2 instanceof d06)) ? Character.valueOf(((d06) yq4Var3).h).equals(Character.valueOf(((d06) yq4Var2).h)) : false) {
                    bk0 bk0Var2 = new bk0(ir4Var);
                    bk0Var2.c = i11;
                    return bk0Var2;
                }
            }
            zq4 zq4Var = new zq4(yq4Var2);
            yq4Var2.f = true;
            bk0 bk0Var3 = new bk0(zq4Var, ir4Var);
            bk0Var3.c = i11;
            return bk0Var3;
        }
    }

    public static class b {
        public final yq4 a;
        public final int b;

        public b(yq4 yq4Var, int i) {
            this.a = yq4Var;
            this.b = i;
        }
    }

    public static class c {
        public final yq4 a;
        public final int b;

        public c(yq4 yq4Var, int i) {
            this.a = yq4Var;
            this.b = i;
        }
    }

    public zq4(yq4 yq4Var) {
        this.a = yq4Var;
    }

    @Override // defpackage.m, defpackage.uj0
    public final boolean a() {
        return true;
    }

    @Override // defpackage.m, defpackage.uj0
    public final boolean c(pj0 pj0Var) {
        if (!(pj0Var instanceof dr4)) {
            return false;
        }
        if (this.b && this.c == 1) {
            this.a.f = false;
            this.b = false;
        }
        return true;
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        if (dq2Var.h) {
            this.b = true;
            this.c = 0;
        } else if (this.b) {
            this.c++;
        }
        return rj0.a(dq2Var.b);
    }
}
