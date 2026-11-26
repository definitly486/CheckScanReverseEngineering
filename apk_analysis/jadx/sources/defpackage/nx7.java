package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class nx7 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        String queryParameter = uri.getQueryParameter("redirect");
        if (queryParameter != null) {
            return new Deeplink.w(null, null, queryParameter, 3);
        }
        String queryParameter2 = uri.getQueryParameter("after_event");
        if (queryParameter2 == null) {
            queryParameter2 = "";
        }
        String queryParameter3 = uri.getQueryParameter("invite_code");
        return queryParameter3 != null ? new Deeplink.w(queryParameter3, queryParameter2, null, 4) : new Deeplink.w(null, queryParameter2, null, 5);
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "signup";
    }
}
