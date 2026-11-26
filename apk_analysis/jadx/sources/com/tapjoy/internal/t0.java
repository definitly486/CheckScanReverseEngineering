package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class t0 {
    public final String[] a = new String[512];

    public final String a(char[] cArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 = (i3 * 31) + cArr[i4];
        }
        int i5 = ((i3 >>> 20) ^ (i3 >>> 12)) ^ i3;
        String[] strArr = this.a;
        int length = (i5 ^ ((i5 >>> 7) ^ (i5 >>> 4))) & (strArr.length - 1);
        String str = strArr[length];
        if (str != null && str.length() == i2) {
            for (int i6 = 0; i6 < i2; i6++) {
                if (cArr[i + i6] == str.charAt(i6)) {
                }
            }
            return str;
        }
        String str2 = new String(cArr, i, i2);
        this.a[length] = str2;
        return str2;
    }
}
