package androidx.privacysandbox.ads.adservices.internal;

import android.content.Context;
import android.util.Log;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class BackCompatManager {
    public static final BackCompatManager INSTANCE = new BackCompatManager();

    private BackCompatManager() {
    }

    public final <T> T getManager(Context context, String str, nl3<? super Context, ? extends T> nl3Var) {
        context.getClass();
        str.getClass();
        nl3Var.getClass();
        try {
            return nl3Var.invoke(context);
        } catch (NoClassDefFoundError unused) {
            Log.d(str, "Unable to find adservices code, check manifest for uses-library tag, versionS=" + AdServicesInfo.INSTANCE.extServicesVersionS());
            return null;
        }
    }
}
