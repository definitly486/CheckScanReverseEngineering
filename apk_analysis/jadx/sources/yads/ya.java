package yads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import defpackage.ta8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ya {
    public static final long a = (long) (Math.floor(Math.random() * 4.294967295E9d) + 1.0d);
    public static final /* synthetic */ int b = 0;

    public static Bitmap a(String str) {
        try {
            String strSubstring = str.substring(ta8.K(str, StringUtils.COMMA, 0, false, 6) + 1);
            if (strSubstring.length() <= 0) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(strSubstring, 0);
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean a(nz nzVar) {
        return nzVar == null || nzVar.a();
    }

    public static final boolean a(Context context) {
        try {
            return ak6.a(context) != null;
        } catch (Throwable unused) {
            return false;
        }
    }
}
