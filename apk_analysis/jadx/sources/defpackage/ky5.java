package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class ky5 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        String string;
        uri.getClass();
        String queryParameter = uri.getQueryParameter("url");
        if (queryParameter == null) {
            queryParameter = "";
        }
        String str = queryParameter;
        boolean z = Boolean.parseBoolean(uri.getQueryParameter("yandex"));
        boolean z2 = Boolean.parseBoolean(uri.getQueryParameter("webview"));
        boolean z3 = Boolean.parseBoolean(uri.getQueryParameter("in_safari"));
        boolean zE = aa4.e(uri.getQueryParameter("sdk"), "unity");
        String queryParameter2 = uri.getQueryParameter("androidPlacement");
        return new Deeplink.n(str, z, z2, z3, zE, (queryParameter2 == null || (string = ta8.f0(queryParameter2).toString()) == null || string.length() <= 0) ? null : string);
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "open_url";
    }
}
