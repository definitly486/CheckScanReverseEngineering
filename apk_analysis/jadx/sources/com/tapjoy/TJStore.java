package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public final class TJStore {
    public static final TJStore INSTANCE = new TJStore();
    public static String a;
    public static boolean b;

    static {
        Context context = TapjoyConnectCore.getInstance().getContext();
        if (context != null) {
            a(context);
        }
    }

    public static void a(Context context) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("market://details"));
            Intent.createChooser(intent, "Google Play store in US");
            b = intent.resolveActivity(context.getPackageManager()) != null;
        } catch (Exception e) {
            TapjoyLog.w("Error trying to detect store intent on device: " + e.getMessage());
        }
    }

    public final String getStore() {
        return a;
    }

    public final boolean getStoreView() {
        return b;
    }

    public final void setStore(String str) {
        a = str;
    }

    public final void setStoreView(boolean z) {
        b = z;
    }
}
