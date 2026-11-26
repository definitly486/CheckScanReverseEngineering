package com.tapjoy.internal;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.IBinder;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.tapjoy.internal.AppUsageForegroundService;
import defpackage.j59;
import defpackage.kn1;
import defpackage.ll3;
import defpackage.lq;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class AppUsageForegroundService extends Service {
    public static volatile boolean b;
    public final o a = new o();

    public static String a(AppUsageForegroundService appUsageForegroundService, String str) {
        try {
            ApplicationInfo applicationInfo = appUsageForegroundService.getPackageManager().getApplicationInfo(appUsageForegroundService.getPackageName(), 128);
            applicationInfo.getClass();
            Bundle bundle = applicationInfo.metaData;
            String string = bundle != null ? bundle.getString(str) : null;
            if (string != null && string.length() != 0) {
                return string;
            }
            int i = bundle != null ? bundle.getInt(str, 0) : 0;
            if (i != 0) {
                return appUsageForegroundService.getString(i);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        int i;
        super.onCreate();
        b = true;
        String strA = a(this, "com.tapjoy.NOTIFICATION_CHANNEL_NAME");
        if (strA == null) {
            strA = "App Usage";
        }
        NotificationChannel notificationChannel = new NotificationChannel("tapjoy_app_usage", strA, 3);
        Object systemService = getSystemService("notification");
        systemService.getClass();
        ((NotificationManager) systemService).createNotificationChannel(notificationChannel);
        try {
            ApplicationInfo applicationInfo = getPackageManager().getApplicationInfo(getPackageName(), 128);
            applicationInfo.getClass();
            Bundle bundle = applicationInfo.metaData;
            i = bundle != null ? bundle.getInt("com.tapjoy.NOTIFICATION_ICON", 0) : 0;
            if (i == 0 && (i = applicationInfo.icon) == 0) {
                i = -1;
            }
        } catch (Throwable unused) {
        }
        String strA2 = a(this, "com.tapjoy.NOTIFICATION_TITLE");
        String str = strA2 != null ? strA2 : "App Usage";
        String strA3 = a(this, "com.tapjoy.NOTIFICATION_TEXT");
        if (strA3 == null) {
            strA3 = "Collecting usage data in background";
        }
        Notification notificationBuild = new NotificationCompat.Builder(this, "tapjoy_app_usage").setContentTitle(str).setContentText(strA3).setSmallIcon(i).build();
        notificationBuild.getClass();
        startForeground(TypedValues.TYPE_TARGET, notificationBuild);
    }

    @Override // android.app.Service
    public final void onDestroy() {
        b = false;
        o oVar = this.a;
        Collection collectionValues = oVar.a.values();
        collectionValues.getClass();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            ((ScheduledFuture) it.next()).cancel(true);
        }
        oVar.a.clear();
        oVar.b.clear();
        oVar.c.shutdownNow();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return super.onStartCommand(intent, i, i2);
        }
        List list = r0.a;
        List list2 = r0.a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            Integer num = ((p0) next).e;
            Integer numValueOf = Integer.valueOf(num != null ? num.intValue() : 900);
            Object arrayList = linkedHashMap.get(numValueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(numValueOf, arrayList);
            }
            ((List) arrayList).add(next);
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            int iIntValue = ((Number) ((Map.Entry) it2.next()).getKey()).intValue();
            Set setKeySet = linkedHashMap.keySet();
            ArrayList arrayList2 = new ArrayList(kn1.q(setKeySet, 10));
            Iterator it3 = setKeySet.iterator();
            while (it3.hasNext()) {
                arrayList2.add(String.valueOf(((Number) it3.next()).intValue()));
            }
            Set setY0 = qn1.y0(arrayList2);
            o oVar = this.a;
            oVar.getClass();
            Set setKeySet2 = oVar.a.keySet();
            setKeySet2.getClass();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : setKeySet2) {
                if (!setY0.contains((String) obj)) {
                    arrayList3.add(obj);
                }
            }
            int size = arrayList3.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj2 = arrayList3.get(i3);
                i3++;
                String str = (String) obj2;
                str.getClass();
                ScheduledFuture scheduledFuture = (ScheduledFuture) oVar.a.get(str);
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(true);
                }
                oVar.a.remove(str);
                oVar.b.remove(str);
            }
            a(iIntValue > 0 ? iIntValue : 900, String.valueOf(iIntValue));
        }
        return 1;
    }

    public static final List a(int i) {
        List list = r0.a;
        List list2 = r0.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            Integer num = ((p0) obj).e;
            if ((num != null ? num.intValue() : 900) == i) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final j59 a(AppUsageForegroundService appUsageForegroundService, List list) {
        list.getClass();
        if (!list.isEmpty()) {
            b1 b1Var = new b1(list);
            Context applicationContext = appUsageForegroundService.getApplicationContext();
            applicationContext.getClass();
            b1Var.a(applicationContext);
        }
        return j59.a;
    }

    public final void a(final int i, String str) {
        this.a.a(str, ((long) i) * 1000, new ll3() { // from class: kq
            @Override // defpackage.ll3
            public final Object invoke() {
                return AppUsageForegroundService.a(i);
            }
        }, new lq(this, 0));
    }
}
