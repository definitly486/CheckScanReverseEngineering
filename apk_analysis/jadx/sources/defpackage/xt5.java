package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class xt5 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        String queryParameter = uri.getQueryParameter("partnerId");
        if (queryParameter != null) {
            return new Deeplink.l(queryParameter);
        }
        return null;
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "brandlink_landing";
    }
}
