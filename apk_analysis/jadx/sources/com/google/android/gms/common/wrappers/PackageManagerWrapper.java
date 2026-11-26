package com.google.android.gms.common.wrappers;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.core.util.Pair;
import com.google.android.gms.common.util.PlatformVersion;

/* JADX INFO: loaded from: classes4.dex */
public class PackageManagerWrapper {
    public final Context a;

    public PackageManagerWrapper(Context context) {
        this.a = context;
    }

    public int checkCallingOrSelfPermission(String str) {
        return this.a.checkCallingOrSelfPermission(str);
    }

    public int checkPermission(String str, String str2) {
        return this.a.getPackageManager().checkPermission(str, str2);
    }

    public ApplicationInfo getApplicationInfo(String str, int i) {
        return this.a.getPackageManager().getApplicationInfo(str, i);
    }

    public CharSequence getApplicationLabel(String str) {
        Context context = this.a;
        return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(str, 0));
    }

    public Pair<CharSequence, Drawable> getApplicationLabelAndIcon(String str) throws PackageManager.NameNotFoundException {
        Context context = this.a;
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 0);
        return Pair.create(context.getPackageManager().getApplicationLabel(applicationInfo), context.getPackageManager().getApplicationIcon(applicationInfo));
    }

    public PackageInfo getPackageInfo(String str, int i) {
        return this.a.getPackageManager().getPackageInfo(str, i);
    }

    public String[] getPackagesForUid(int i) {
        return this.a.getPackageManager().getPackagesForUid(i);
    }

    public boolean isCallerInstantApp() {
        String nameForUid;
        int callingUid = Binder.getCallingUid();
        int iMyUid = Process.myUid();
        Context context = this.a;
        if (callingUid == iMyUid) {
            return InstantApps.isInstantApp(context);
        }
        if (!PlatformVersion.isAtLeastO() || (nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return context.getPackageManager().isInstantApp(nameForUid);
    }

    public final boolean zza(int i, String str) {
        try {
            AppOpsManager appOpsManager = (AppOpsManager) this.a.getSystemService("appops");
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(i, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
