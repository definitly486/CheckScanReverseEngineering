package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ui3 implements CharSequence {
    public final j15 b;
    public final String c;
    public final String d;

    public ui3(j15 j15Var, String str) {
        j15Var.getClass();
        str.getClass();
        this.b = j15Var;
        this.c = str;
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = (ArrayList) j15Var.c;
        if (arrayList == null) {
            aa4.j("mMask");
            throw null;
        }
        int size = arrayList.size();
        int length = str.length();
        size = size > length ? length : size;
        for (int i = 0; i < size; i++) {
            char cCharAt = str.charAt(i);
            if (arrayList == null) {
                aa4.j("mMask");
                throw null;
            }
            try {
                k15 k15Var = (k15) arrayList.get(i);
                if (!k15Var.a() || !k15Var.b(cCharAt)) {
                    sb.append(cCharAt);
                }
            } catch (IndexOutOfBoundsException unused) {
            }
            sb.append(cCharAt);
        }
        this.d = sb.toString();
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return toString().charAt(i);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return toString().length();
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return toString().subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2 = 0;
        while (true) {
            String str = this.c;
            if (i >= str.length()) {
                break;
            }
            j15 j15Var = this.b;
            ArrayList arrayList = (ArrayList) j15Var.c;
            if (arrayList == null) {
                aa4.j("mMask");
                throw null;
            }
            if (i2 >= arrayList.size()) {
                break;
            }
            ArrayList arrayList2 = (ArrayList) j15Var.c;
            if (arrayList2 == null) {
                aa4.j("mMask");
                throw null;
            }
            k15 k15Var = (k15) arrayList2.get(i2);
            char cCharAt = str.charAt(i);
            if (k15Var.b(cCharAt)) {
                sb.append(k15Var.c(cCharAt));
                i++;
            } else if (k15Var.a()) {
                sb.append(k15Var.c(cCharAt));
            } else {
                i++;
            }
            i2++;
        }
        return sb.toString();
    }
}
