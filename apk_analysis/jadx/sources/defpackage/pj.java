package defpackage;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes3.dex */
public final class pj implements tf4<b99> {
    @Override // defpackage.tf4
    public final String a(b99 b99Var, zz5 zz5Var) {
        b99 b99Var2 = b99Var;
        if (!aa4.e(b99Var2.c, "android.resource")) {
            return null;
        }
        Configuration configuration = zz5Var.a.getResources().getConfiguration();
        Bitmap.Config[] configArr = sb9.a;
        return b99Var2 + StringUtils.PROCESS_POSTFIX_DELIMITER + (configuration.uiMode & 48);
    }
}
