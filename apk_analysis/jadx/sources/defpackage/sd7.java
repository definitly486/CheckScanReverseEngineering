package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class sd7 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        String queryParameter = uri.getQueryParameter("fromType");
        if (queryParameter == null) {
            queryParameter = "";
        }
        String queryParameter2 = uri.getQueryParameter("fromId");
        String str = queryParameter2 != null ? queryParameter2 : "";
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                long j = ta8.M(str) ? -1L : Long.parseLong(str);
                return new Deeplink.v(queryParameter, j);
            }
            if (!Character.isDigit(str.charAt(i))) {
                break;
            }
            i++;
        }
        return new Deeplink.v(queryParameter, j);
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "scan";
    }
}
