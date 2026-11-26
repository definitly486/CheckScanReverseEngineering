package yads;

import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public final class gq4 {
    public static h96 a(y86 y86Var) {
        iq3 iq3Var = y86Var.b;
        if (iq3Var == null || !defpackage.aa4.e(iq3Var.b, "omid")) {
            throw new a96(y86Var, z86.c);
        }
        try {
            URL url = new URL(iq3Var.c);
            String str = y86Var.a;
            String str2 = y86Var.c;
            if (str2 == null || str2.length() == 0) {
                return new h96(null, url, null);
            }
            if (TextUtils.isEmpty(str)) {
                defpackage.fg.c("VendorKey is null or empty");
                return null;
            }
            if (!TextUtils.isEmpty(str2)) {
                return new h96(str, url, str2);
            }
            defpackage.fg.c("VerificationParameters is null or empty");
            return null;
        } catch (MalformedURLException unused) {
            throw new a96(y86Var, z86.d);
        }
    }
}
