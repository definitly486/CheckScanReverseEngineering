package yads;

import android.util.Base64;

/* JADX INFO: loaded from: classes6.dex */
public final class gn4 {
    public final String a(a95 a95Var) {
        byte[] bArr = a95Var.b.a;
        if (bArr == null) {
            return null;
        }
        String strB = v83.b(a95Var.c, oa3.AD_BASE64_ENCODING);
        if (!(strB == null ? true : Boolean.parseBoolean(strB))) {
            return new String(bArr, defpackage.ha1.b);
        }
        try {
            return new String(Base64.decode(bArr, 0), defpackage.ha1.b);
        } catch (Exception unused) {
            return new String(bArr, defpackage.ha1.b);
        }
    }
}
