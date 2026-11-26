package yads;

import defpackage.ta8;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class gh5 {
    /* JADX WARN: Code duplicated, block: B:15:0x0033  */
    /* JADX WARN: Code duplicated, block: B:8:0x0023  */
    public final String a(String str) {
        int i;
        int i2;
        int i3 = 0;
        String[] strArr = (String[]) ta8.Y("8.2.0", new String[]{"."}).toArray(new String[0]);
        if (strArr.length > 0) {
            String str2 = strArr[0];
            int i4 = ya.b;
            if (str2 != null) {
                try {
                    i = Integer.parseInt(str2);
                } catch (NumberFormatException unused) {
                    i = 0;
                }
            } else {
                i = 0;
            }
        } else {
            i = 0;
        }
        if (strArr.length > 1) {
            String str3 = strArr[1];
            int i5 = ya.b;
            if (str3 != null) {
                try {
                    i2 = Integer.parseInt(str3);
                } catch (NumberFormatException unused2) {
                    i2 = 0;
                }
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        if (strArr.length > 2) {
            String str4 = strArr[2];
            int i6 = ya.b;
            if (str4 != null) {
                try {
                    i3 = Integer.parseInt(str4);
                } catch (NumberFormatException unused3) {
                }
            }
        }
        return String.format(Locale.US, str, Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)}, 3));
    }
}
