package yads;

import android.content.Context;
import android.util.Base64;
import java.security.KeyFactory;
import java.security.SecureRandom;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes6.dex */
public final class os5 {
    public final String a(Context context, String str) {
        nn2 nn2Var;
        byte[] bArrA;
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA == null || (nn2Var = fe5VarA.b0) == null) {
            nn2Var = nn2.c;
        }
        String str2 = nn2Var.a;
        c94 c94Var = new c94(str2, nn2Var.b);
        byte[] bytes = str.getBytes(defpackage.ha1.b);
        bytes.getClass();
        try {
            byte[] bArrDecode = Base64.decode(str2, 0);
            if (bArrDecode != null) {
                SecureRandom secureRandom = new SecureRandom();
                byte[] bArr = new byte[16];
                byte[] bArr2 = new byte[16];
                secureRandom.nextBytes(bArr2);
                secureRandom.nextBytes(bArr);
                bArrA = c94Var.a(bytes, bArr2, bArr, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArrDecode)));
            } else {
                bArrA = null;
            }
        } catch (Throwable unused) {
        }
        if (bArrA != null) {
            return xo.a(bArrA);
        }
        return null;
    }
}
