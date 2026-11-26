package yads;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class dn1 {
    public static int a(Uri uri) {
        String queryParameter = uri.getQueryParameter("step");
        if (queryParameter == null) {
            return 1;
        }
        try {
            return Integer.parseInt(queryParameter);
        } catch (NumberFormatException unused) {
            return 1;
        }
    }
}
