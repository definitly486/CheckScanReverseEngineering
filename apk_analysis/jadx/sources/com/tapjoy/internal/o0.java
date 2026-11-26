package com.tapjoy.internal;

import android.app.usage.NetworkStats;
import android.app.usage.NetworkStatsManager;
import android.app.usage.StorageStats;
import android.app.usage.StorageStatsManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.compose.material3.internal.CalendarModelKt;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJVerifierKt;
import com.tapjoy.TapjoyLog;
import defpackage.b36;
import defpackage.me0;
import defpackage.mx2;
import defpackage.ra8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class o0 {
    public final List a;

    public o0(List list) {
        list.getClass();
        this.a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Context context, p0 p0Var, LinkedHashMap linkedHashMap) throws JSONException {
        long j;
        Object obj;
        p0 p0Var2 = p0Var;
        b36 b36VarA = a(p0Var2.c, p0Var2.d, p0Var2.h);
        long jLongValue = ((Number) b36VarA.b).longValue();
        long jLongValue2 = ((Number) b36VarA.c).longValue();
        t tVar = p0Var2.f;
        ArrayList arrayList = new ArrayList();
        int iOrdinal = tVar.ordinal();
        if (iOrdinal == 0) {
            j = CalendarModelKt.MillisecondsIn24Hours;
        } else if (iOrdinal == 1) {
            j = 604800000;
        } else if (iOrdinal == 2) {
            j = 2592000000L;
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                me0.e();
                return;
            }
            j = CalendarModelKt.MillisecondsIn24Hours;
        } else {
            j = 31536000000L;
        }
        long j2 = jLongValue;
        while (j2 < jLongValue2) {
            long jMin = Math.min(j2 + j, jLongValue2);
            arrayList.add(new b36(Long.valueOf(j2), Long.valueOf(jMin)));
            j2 = jMin;
        }
        TapjoyLog.d("NETWORK_STATS: Size: " + arrayList.size() + " intervalMode: " + p0Var2.f + " startTime: " + jLongValue + " endTime: " + jLongValue2);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            b36 b36Var = (b36) obj2;
            long jLongValue3 = ((Number) b36Var.b).longValue();
            long jLongValue4 = ((Number) b36Var.c).longValue();
            for (Map.Entry entry : a(context, jLongValue3, jLongValue4).entrySet()) {
                String str = (String) entry.getKey();
                d dVar = (d) entry.getValue();
                if (!a(str, p0Var2.g)) {
                    Object obj3 = linkedHashMap.get(str);
                    if (obj3 == null) {
                        obj = obj3;
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("package_name", str);
                        linkedHashMap.put(str, jSONObject);
                        obj = jSONObject;
                    }
                    obj = obj3;
                    JSONObject jSONObject2 = (JSONObject) obj;
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("network_stats");
                    if (jSONArrayOptJSONArray == null) {
                        jSONArrayOptJSONArray = new JSONArray();
                        jSONObject2.put("network_stats", jSONArrayOptJSONArray);
                    }
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("uid", dVar.a);
                    jSONObject3.put("received_bytes", dVar.b);
                    jSONObject3.put("sent_bytes", dVar.c);
                    jSONObject3.put("received_packets", dVar.d);
                    jSONObject3.put("sent_packets", dVar.e);
                    jSONObject3.put("start_timestamp", jLongValue3);
                    jSONObject3.put("end_timestamp", jLongValue4);
                    jSONObject3.put(RemoteConfigConstants.ResponseFieldKey.STATE, dVar.f);
                    jSONObject3.put("roaming", dVar.g);
                    jSONObject3.put("tag", dVar.h);
                    jSONArrayOptJSONArray.put(jSONObject3);
                }
                p0Var2 = p0Var;
                linkedHashMap = linkedHashMap;
            }
            p0Var2 = p0Var;
        }
    }

    public static void b(Context context, p0 p0Var, LinkedHashMap linkedHashMap) throws JSONException {
        LinkedHashMap linkedHashMapB = b(context);
        TapjoyLog.d("STORAGE_STATS: Size: " + linkedHashMapB.size());
        for (Map.Entry entry : linkedHashMapB.entrySet()) {
            String str = (String) entry.getKey();
            StorageStats storageStats = (StorageStats) entry.getValue();
            if (!a(str, p0Var.g)) {
                Object obj = linkedHashMap.get(str);
                Object obj2 = obj;
                if (obj == null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("package_name", str);
                    linkedHashMap.put(str, jSONObject);
                    obj2 = jSONObject;
                }
                JSONObject jSONObject2 = (JSONObject) obj2;
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("storage_stats");
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                    jSONObject2.put("storage_stats", jSONArrayOptJSONArray);
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("app_size", storageStats.getAppBytes());
                jSONObject3.put("data_size", storageStats.getDataBytes());
                jSONObject3.put("cache_size", storageStats.getCacheBytes());
                if (Build.VERSION.SDK_INT >= 35) {
                    long appBytesByDataType = storageStats.getAppBytesByDataType(3);
                    long appBytesByDataType2 = storageStats.getAppBytesByDataType(5);
                    jSONObject3.put("apk_size", appBytesByDataType);
                    jSONObject3.put("lib_size", appBytesByDataType2);
                } else {
                    jSONObject3.put("apk_size", 0);
                    jSONObject3.put("lib_size", 0);
                }
                jSONArrayOptJSONArray.put(jSONObject3);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Context context, p0 p0Var, LinkedHashMap linkedHashMap) throws JSONException {
        b36 b36VarA = a(p0Var.c, p0Var.d, p0Var.h);
        long jLongValue = ((Number) b36VarA.b).longValue();
        long jLongValue2 = ((Number) b36VarA.c).longValue();
        context.getClass();
        Object systemService = context.getSystemService("usagestats");
        systemService.getClass();
        UsageEvents usageEventsQueryEvents = ((UsageStatsManager) systemService).queryEvents(jLongValue, jLongValue2);
        ArrayList arrayList = new ArrayList();
        while (usageEventsQueryEvents.hasNextEvent()) {
            UsageEvents.Event event = new UsageEvents.Event();
            usageEventsQueryEvents.getNextEvent(event);
            arrayList.add(event);
        }
        TapjoyLog.d("USAGE_EVENTS: Size: " + arrayList.size() + " intervalMode: " + p0Var.f + " startTime: " + jLongValue + " endTime: " + jLongValue2);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            UsageEvents.Event event2 = (UsageEvents.Event) obj;
            if (!a(event2.getPackageName(), p0Var.g)) {
                String packageName = event2.getPackageName();
                packageName.getClass();
                Object obj2 = linkedHashMap.get(packageName);
                Object obj3 = obj2;
                if (obj2 == null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("package_name", packageName);
                    linkedHashMap.put(packageName, jSONObject);
                    obj3 = jSONObject;
                }
                JSONObject jSONObject2 = (JSONObject) obj3;
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("usage_events");
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                    jSONObject2.put("usage_events", jSONArrayOptJSONArray);
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("event_type", event2.getEventType());
                jSONObject3.put(TJVerifierKt.TJC_TIMESTAMP, event2.getTimeStamp());
                if (event2.getConfiguration() != null) {
                    jSONObject3.put("configuration", event2.getConfiguration().toString());
                } else {
                    jSONObject3.put("configuration", JSONObject.NULL);
                }
                if (event2.getClassName() != null) {
                    jSONObject3.put("class_name", event2.getClassName());
                } else {
                    jSONObject3.put("class_name", JSONObject.NULL);
                }
                if (event2.getShortcutId() != null) {
                    jSONObject3.put("shortcut_id", event2.getShortcutId());
                } else {
                    jSONObject3.put("shortcut_id", JSONObject.NULL);
                }
                jSONArrayOptJSONArray.put(jSONObject3);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(Context context, p0 p0Var, LinkedHashMap linkedHashMap) throws JSONException {
        int i;
        b36 b36VarA = a(p0Var.c, p0Var.d, p0Var.h);
        long jLongValue = ((Number) b36VarA.b).longValue();
        long jLongValue2 = ((Number) b36VarA.c).longValue();
        int iOrdinal = p0Var.f.ordinal();
        if (iOrdinal != 0) {
            i = 1;
            if (iOrdinal != 1) {
                i = 2;
                if (iOrdinal != 2) {
                    i = 3;
                    if (iOrdinal != 3) {
                        i = 4;
                        if (iOrdinal != 4) {
                            me0.e();
                            return;
                        }
                    }
                }
            }
        } else {
            i = 0;
        }
        int i2 = i;
        context.getClass();
        Object systemService = context.getSystemService("usagestats");
        systemService.getClass();
        List<UsageStats> listQueryUsageStats = ((UsageStatsManager) systemService).queryUsageStats(i2, jLongValue, jLongValue2);
        listQueryUsageStats.getClass();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj : listQueryUsageStats) {
            String packageName = ((UsageStats) obj).getPackageName();
            packageName.getClass();
            Object arrayList = linkedHashMap2.get(packageName);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap2.put(packageName, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        TapjoyLog.d("USAGE_STATS: Size: " + linkedHashMap2.size() + " intervalMode: " + p0Var.f + " startTime: " + jLongValue + " endTime: " + jLongValue2);
        Iterator it = linkedHashMap2.values().iterator();
        while (it.hasNext()) {
            for (UsageStats usageStats : (List) it.next()) {
                if (!a(usageStats.getPackageName(), p0Var.g)) {
                    String packageName2 = usageStats.getPackageName();
                    packageName2.getClass();
                    Object obj2 = linkedHashMap.get(packageName2);
                    Object obj3 = obj2;
                    if (obj2 == null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("package_name", packageName2);
                        linkedHashMap.put(packageName2, jSONObject);
                        obj3 = jSONObject;
                    }
                    JSONObject jSONObject2 = (JSONObject) obj3;
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("usage_stats");
                    if (jSONArrayOptJSONArray == null) {
                        jSONArrayOptJSONArray = new JSONArray();
                        jSONObject2.put("usage_stats", jSONArrayOptJSONArray);
                    }
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("total_time_in_foreground", usageStats.getTotalTimeInForeground());
                    jSONObject3.put("first_timestamp", usageStats.getFirstTimeStamp());
                    jSONObject3.put("last_time_used", usageStats.getLastTimeUsed());
                    jSONObject3.put("last_timestamp", usageStats.getLastTimeStamp());
                    int i3 = Build.VERSION.SDK_INT;
                    long lastTimeVisible = i3 >= 29 ? usageStats.getLastTimeVisible() : 0L;
                    long totalTimeVisible = i3 >= 29 ? usageStats.getTotalTimeVisible() : 0L;
                    jSONObject3.put("last_time_visible", lastTimeVisible);
                    jSONObject3.put("total_time_visible", totalTimeVisible);
                    jSONArrayOptJSONArray.put(jSONObject3);
                }
            }
        }
    }

    public static LinkedHashMap b(Context context) {
        context.getClass();
        Object systemService = context.getSystemService("storagestats");
        systemService.getClass();
        StorageStatsManager storageStatsManager = (StorageStatsManager) systemService;
        List<ApplicationInfo> installedApplications = context.getPackageManager().getInstalledApplications(128);
        installedApplications.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (ApplicationInfo applicationInfo : installedApplications) {
            try {
                StorageStats storageStatsQueryStatsForUid = storageStatsManager.queryStatsForUid(applicationInfo.storageUuid, applicationInfo.uid);
                storageStatsQueryStatsForUid.getClass();
                linkedHashMap.put(applicationInfo.packageName, storageStatsQueryStatsForUid);
            } catch (Exception e) {
                TapjoyLog.w("Unable to get storage stats for " + applicationInfo.packageName + ": " + e.getMessage());
            }
        }
        return linkedHashMap;
    }

    public static Map a(Context context, long j, long j2) {
        context.getClass();
        Object systemService = context.getSystemService("netstats");
        systemService.getClass();
        NetworkStatsManager networkStatsManager = (NetworkStatsManager) systemService;
        PackageManager packageManager = context.getPackageManager();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        NetworkStats.Bucket bucket = new NetworkStats.Bucket();
        try {
            NetworkStats networkStatsQuerySummary = networkStatsManager.querySummary(1, "", j, j2);
            while (networkStatsQuerySummary.hasNextBucket()) {
                networkStatsQuerySummary.getNextBucket(bucket);
                int uid = bucket.getUid();
                Integer numValueOf = Integer.valueOf(uid);
                Object obj = linkedHashMap2.get(numValueOf);
                if (obj == null) {
                    d dVar = new d(uid, 0L, 0L, 0L, 0L, 0, 0, 0);
                    linkedHashMap2.put(numValueOf, dVar);
                    obj = dVar;
                }
                d dVar2 = (d) obj;
                linkedHashMap2.put(Integer.valueOf(uid), new d(dVar2.a, dVar2.b + bucket.getRxBytes(), dVar2.c + bucket.getTxBytes(), dVar2.d + bucket.getRxPackets(), dVar2.e + bucket.getTxPackets(), bucket.getState(), bucket.getRoaming(), bucket.getTag()));
            }
            networkStatsQuerySummary.close();
            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                int iIntValue = ((Number) entry.getKey()).intValue();
                d dVar3 = (d) entry.getValue();
                if (dVar3.b > 0 || dVar3.c > 0) {
                    try {
                        String[] packagesForUid = packageManager.getPackagesForUid(iIntValue);
                        if (packagesForUid != null) {
                            for (String str : packagesForUid) {
                                linkedHashMap.put(str, dVar3);
                            }
                        }
                    } catch (Exception e) {
                        TapjoyLog.w("Unable to get package names for UID " + iIntValue + ": " + e.getMessage());
                    }
                }
            }
            return linkedHashMap;
        } catch (Exception e2) {
            TapjoyLog.w("Unable to query network stats: " + e2.getMessage());
            return mx2.b;
        }
    }

    public static b36 a(Long l, Long l2, Long l3) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jMax = jCurrentTimeMillis - CalendarModelKt.MillisecondsIn24Hours;
        if (l != null) {
            jMax = l.longValue();
        }
        if (l3 != null && l3.longValue() > 0) {
            jMax = Math.max(l3.longValue(), jMax);
        }
        Long lValueOf = Long.valueOf(jMax);
        if (l2 != null) {
            jCurrentTimeMillis = l2.longValue();
        }
        return new b36(lValueOf, Long.valueOf(jCurrentTimeMillis));
    }

    public static boolean a(String str, List list) {
        if (str != null && str.length() != 0 && !list.isEmpty() && !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (ra8.C(str, (String) it.next(), false)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final LinkedHashMap a(Context context) throws JSONException {
        context.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (p0 p0Var : this.a) {
            int iOrdinal = p0Var.b.ordinal();
            if (iOrdinal == 0) {
                d(context, p0Var, linkedHashMap);
            } else if (iOrdinal == 1) {
                c(context, p0Var, linkedHashMap);
            } else if (iOrdinal == 2) {
                a(context, p0Var, linkedHashMap);
            } else if (iOrdinal == 3) {
                b(context, p0Var, linkedHashMap);
            } else {
                me0.e();
                return null;
            }
        }
        return linkedHashMap;
    }
}
