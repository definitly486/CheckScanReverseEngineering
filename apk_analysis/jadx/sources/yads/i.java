package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i implements Iterator {
    public int b = 2;
    public String c;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String string;
        int i;
        int i2 = this.b;
        if (i2 == 4) {
            defpackage.ud.g();
            return false;
        }
        int iA = xn0.a(i2);
        if (iA == 0) {
            return true;
        }
        if (iA != 2) {
            this.b = 4;
            np5 np5Var = (np5) this;
            int i3 = np5Var.f;
            while (true) {
                int length = np5Var.f;
                if (length == -1) {
                    np5Var.b = 3;
                    string = null;
                    break;
                }
                yy yyVar = np5Var.h.a;
                CharSequence charSequence = np5Var.d;
                int length2 = charSequence.length();
                wx4.b(length, length2);
                while (true) {
                    if (length >= length2) {
                        length = -1;
                        break;
                    }
                    if (yyVar.a(charSequence.charAt(length))) {
                        break;
                    }
                    length++;
                }
                if (length == -1) {
                    length = np5Var.d.length();
                    np5Var.f = -1;
                    i = -1;
                } else {
                    i = length + 1;
                    np5Var.f = i;
                }
                if (i != i3) {
                    if (i3 < length) {
                        zy zyVar = np5Var.e;
                        np5Var.d.charAt(i3);
                        zyVar.getClass();
                    }
                    if (length > i3) {
                        zy zyVar2 = np5Var.e;
                        np5Var.d.charAt(length - 1);
                        zyVar2.getClass();
                    }
                    int i4 = np5Var.g;
                    if (i4 == 1) {
                        length = np5Var.d.length();
                        np5Var.f = -1;
                        if (length > i3) {
                            zy zyVar3 = np5Var.e;
                            np5Var.d.charAt(length - 1);
                            zyVar3.getClass();
                        }
                    } else {
                        np5Var.g = i4 - 1;
                    }
                    string = np5Var.d.subSequence(i3, length).toString();
                    break;
                }
                int i5 = i + 1;
                np5Var.f = i5;
                if (i5 > np5Var.d.length()) {
                    np5Var.f = -1;
                }
            }
            this.c = string;
            if (this.b != 3) {
                this.b = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            defpackage.qz0.e();
            return null;
        }
        this.b = 2;
        String str = this.c;
        this.c = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
