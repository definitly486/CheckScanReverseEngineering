package yads;

import android.os.Build;
import android.webkit.WebView;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class ck6 {
    public final v05 a = new v05();

    public final void a() {
        String strA = this.a.a();
        String strA0 = strA != null ? ta8.a0(strA, StringUtils.PROCESS_POSTFIX_DELIMITER, "") : null;
        if (strA0 == null || strA0.length() <= 0) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                WebView.setDataDirectorySuffix(strA0);
            }
        } catch (Throwable unused) {
        }
    }
}
