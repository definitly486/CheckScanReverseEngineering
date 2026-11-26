package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hx1<T> implements fo5<T> {
    public final String a;

    public hx1(String str) {
        str.getClass();
        this.a = str;
    }

    @Override // defpackage.ti3
    public final vi3<T> a() {
        this.a.getClass();
        return new kx1();
    }

    @Override // defpackage.ti3
    public final a46<T> b() {
        List listD;
        String strSubstring;
        String strSubstring2 = this.a;
        int length = strSubstring2.length();
        kx2 kx2Var = kx2.b;
        if (length == 0) {
            listD = kx2Var;
        } else {
            ar4 ar4VarE = u96.e();
            String strSubstring3 = "";
            if (ex0.c(strSubstring2.charAt(0))) {
                int length2 = strSubstring2.length();
                int i = 0;
                while (true) {
                    if (i >= length2) {
                        strSubstring = strSubstring2;
                        break;
                    }
                    if (!ex0.c(strSubstring2.charAt(i))) {
                        strSubstring = strSubstring2.substring(0, i);
                        break;
                    }
                    i++;
                }
                ar4VarE.add(new hq5(u96.h(new ix1(strSubstring))));
                int length3 = strSubstring2.length();
                int i2 = 0;
                while (true) {
                    if (i2 >= length3) {
                        strSubstring2 = "";
                        break;
                    }
                    if (!ex0.c(strSubstring2.charAt(i2))) {
                        strSubstring2 = strSubstring2.substring(i2);
                        break;
                    }
                    i2++;
                }
            }
            if (strSubstring2.length() > 0) {
                if (ex0.c(strSubstring2.charAt(strSubstring2.length() - 1))) {
                    int length4 = strSubstring2.length();
                    while (true) {
                        length4--;
                        if (-1 >= length4) {
                            break;
                        }
                        if (!ex0.c(strSubstring2.charAt(length4))) {
                            strSubstring3 = strSubstring2.substring(0, length4 + 1);
                            break;
                        }
                    }
                    ar4VarE.add(new w86(strSubstring3));
                    for (int length5 = strSubstring2.length() - 1; -1 < length5; length5--) {
                        if (!ex0.c(strSubstring2.charAt(length5))) {
                            strSubstring2 = strSubstring2.substring(length5 + 1);
                            break;
                        }
                    }
                    ar4VarE.add(new hq5(u96.h(new ix1(strSubstring2))));
                } else {
                    ar4VarE.add(new w86(strSubstring2));
                }
            }
            listD = u96.d(ar4VarE);
        }
        return new a46<>(listD, kx2Var);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof hx1) {
            return aa4.e(this.a, ((hx1) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return xp.e(new StringBuilder("ConstantFormatStructure("), this.a, ')');
    }
}
