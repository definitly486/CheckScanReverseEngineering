package yads;

import com.yandex.mobile.ads.common.AdTheme;

/* JADX INFO: loaded from: classes6.dex */
public final class k85 {
    public static i85 a(AdTheme adTheme) {
        int i = j85.a[adTheme.ordinal()];
        if (i == 1) {
            return i85.DARK;
        }
        if (i == 2) {
            return i85.LIGHT;
        }
        defpackage.me0.e();
        return null;
    }
}
