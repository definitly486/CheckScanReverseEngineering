package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class w1 {
    final Context a;
    final r0 b;
    final e c;

    private w1(i0 i0Var, Context context) {
        this.b = r0.a(i0Var, context);
        this.c = e.a(i0Var, t1.a(context), context);
        this.a = context.getApplicationContext();
    }

    public void a() {
        this.b.a();
        e eVar = this.c;
        if (eVar == null) {
            b3.a("PurchaseHandler: can't init appGalleryPurchaseHandler, appGallery purchases dependency not implemented");
        } else {
            eVar.a();
        }
    }

    public void b(int i, Intent intent) {
        String installingPackageName;
        PackageManager packageManager = this.a.getPackageManager();
        try {
            String packageName = this.a.getPackageName();
            installingPackageName = Build.VERSION.SDK_INT >= 30 ? packageManager.getInstallSourceInfo(packageName).getInstallingPackageName() : packageManager.getInstallerPackageName(packageName);
        } catch (Throwable th) {
            b3.a("PurchaseHandler: can't detect installer package –" + th.getMessage());
            installingPackageName = "";
        }
        b3.a("PurchaseHandler: installer package is " + installingPackageName);
        installingPackageName.getClass();
        if (installingPackageName.equals("com.huawei.appmarket")) {
            b3.a("PurchaseHandler: appGalleryMarket detected");
            a(i, intent);
        } else if (installingPackageName.equals("com.android.vending")) {
            b3.a("PurchaseHandler: googleStore detected");
            this.b.a(i, intent);
        } else {
            b3.a("PurchaseHandler: store not detected");
            this.b.a(i, intent);
            a(i, intent);
        }
    }

    public static w1 a(i0 i0Var, Context context) {
        return new w1(i0Var, context);
    }

    public void a(JSONObject jSONObject, JSONObject jSONObject2, String str, Map map) {
        this.b.a(jSONObject, jSONObject2, str, map);
    }

    public void a(int i, Intent intent) {
        e eVar = this.c;
        if (eVar == null) {
            b3.a("PurchaseHandler: can't do appGalleryPurchaseHandler.onActivityResult(), appGallery purchases dependency not implemented");
        } else {
            eVar.a(i, intent);
        }
    }

    public void a(int i, List list) {
        this.b.a(i, list);
    }

    public void a(Object obj, String str, String str2, String str3, Map map) {
        e eVar = this.c;
        if (eVar == null) {
            b3.a("PurchaseHandler: can't trackAppGalleryPurchase, appGallery purchases dependency not implemented");
        } else {
            eVar.b(obj, str, str2, str3, map);
        }
    }
}
