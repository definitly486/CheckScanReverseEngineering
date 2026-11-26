package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.my.tracker.MyTrackerConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class k {
    private static final j a = new j(Collections.EMPTY_LIST);

    private static List b(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PackageInfo packageInfo = (PackageInfo) it.next();
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if ((applicationInfo.flags & 1) == 0) {
                arrayList.add(new j.a(applicationInfo.packageName, z2.b(packageInfo.firstInstallTime)));
            }
        }
        return arrayList;
    }

    public j a(MyTrackerConfig.InstalledPackagesProvider installedPackagesProvider, Context context) {
        List<PackageInfo> installedPackages;
        if (installedPackagesProvider == null) {
            return a;
        }
        try {
            installedPackages = installedPackagesProvider.getInstalledPackages();
        } catch (Throwable unused) {
            b3.b("MyTracker error: exception at InstalledPackagesProvider::getInstalledPackages()");
            installedPackages = null;
        }
        if (installedPackages == null || installedPackages.isEmpty()) {
            return a;
        }
        List listB = b(installedPackages);
        if (listB.isEmpty()) {
            return a;
        }
        String strA = a(listB);
        String strG = t1.a(context).g();
        String strA2 = f0.a(strA);
        if (strG.equals(strA2)) {
            b3.a("AppsDataProvider: Apps hash did not changed");
            return a;
        }
        b3.a("AppsDataProvider: Apps hash changed");
        t1.a(context).h(strA2);
        return new j(listB);
    }

    private static String a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((j.a) it.next()).a);
        }
        return TextUtils.join(StringUtils.COMMA, arrayList);
    }
}
