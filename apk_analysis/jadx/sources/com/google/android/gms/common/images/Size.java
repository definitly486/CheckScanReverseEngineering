package com.google.android.gms.common.images;

import defpackage.fg;
import defpackage.kh;

/* JADX INFO: loaded from: classes4.dex */
public final class Size {
    public final int a;
    public final int b;

    public Size(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static void a(String str) {
        throw new NumberFormatException(kh.c(new StringBuilder(str.length() + 16), "Invalid Size: \"", str, "\""));
    }

    public static Size parseSize(String str) {
        if (str == null) {
            fg.c("string must not be null");
            return null;
        }
        int iIndexOf = str.indexOf(42);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(120);
        }
        if (iIndexOf < 0) {
            a(str);
            throw null;
        }
        try {
            return new Size(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
        } catch (NumberFormatException unused) {
            a(str);
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (this.a == size.a && this.b == size.b) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.b;
    }

    public int getWidth() {
        return this.a;
    }

    public int hashCode() {
        int i = this.a;
        return this.b ^ ((i >>> 16) | (i << 16));
    }

    public String toString() {
        int i = this.a;
        int length = String.valueOf(i).length();
        int i2 = this.b;
        StringBuilder sb = new StringBuilder(length + 1 + String.valueOf(i2).length());
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
