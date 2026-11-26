package androidx.navigation;

import android.net.Uri;

/* JADX INFO: loaded from: classes3.dex */
public final class NavUriUtils {
    public static final NavUriUtils INSTANCE = new NavUriUtils();

    private NavUriUtils() {
    }

    public static /* synthetic */ String encode$default(NavUriUtils navUriUtils, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return navUriUtils.encode(str, str2);
    }

    public final String decode(String str) {
        str.getClass();
        String strDecode = Uri.decode(str);
        strDecode.getClass();
        return strDecode;
    }

    public final String encode(String str, String str2) {
        str.getClass();
        String strEncode = Uri.encode(str, str2);
        strEncode.getClass();
        return strEncode;
    }

    public final Uri parse(String str) {
        str.getClass();
        Uri uri = Uri.parse(str);
        uri.getClass();
        return uri;
    }
}
