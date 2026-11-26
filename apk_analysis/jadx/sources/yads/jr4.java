package yads;

import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jr4 {
    public static lr4 a(String str, int i, int i2, int i3, int i4, DisplayMetrics displayMetrics) {
        if (!(str == null ? true : str.equals("clamp")) && defpackage.aa4.e(str, "ring")) {
            return new kr4(i, i2, i3, i4, displayMetrics);
        }
        return new ir4(i, i2, i3, i4, displayMetrics);
    }
}
