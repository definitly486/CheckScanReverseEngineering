package yads;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class wp5 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    public wp5(int i, int i2, int i3, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
    }

    public static wp5 a(String str) {
        if (!str.startsWith("Format:")) {
            defpackage.mi2.b();
            return null;
        }
        String[] strArrSplit = TextUtils.split(str.substring(7), StringUtils.COMMA);
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < strArrSplit.length; i5++) {
            String strA = oj.a(strArrSplit[i5].trim());
            strA.getClass();
            switch (strA) {
                case "end":
                    i2 = i5;
                    break;
                case "text":
                    i4 = i5;
                    break;
                case "start":
                    i = i5;
                    break;
                case "style":
                    i3 = i5;
                    break;
            }
        }
        if (i == -1 || i2 == -1 || i4 == -1) {
            return null;
        }
        return new wp5(i, i2, i3, i4, strArrSplit.length);
    }
}
