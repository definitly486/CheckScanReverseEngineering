package yads;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ft {
    public static final defpackage.xb4 a = zq3.a;

    public static void a(zu3 zu3Var, dt dtVar) {
        List<h74> list;
        ArrayList<la> arrayList = dtVar.b;
        HashSet hashSet = new HashSet(arrayList.size());
        for (la laVar : arrayList) {
            String str = laVar.b;
            String str2 = laVar.d;
            hashSet.add(str);
            ((av3) zu3Var).a(a(str), str2);
        }
        av3 av3Var = (av3) zu3Var;
        Set<String> set = defpackage.ox2.b;
        Set<String> setA = av3Var.a("BiddingSettingsAdUnitIdsSet", set);
        if (setA == null) {
            setA = set;
        }
        for (String str3 : setA) {
            if (!hashSet.contains(str3)) {
                av3Var.d(a(str3));
            }
        }
        av3Var.a("BiddingSettingsAdUnitIdsSet", hashSet);
        o74 o74Var = dtVar.c;
        long j = o74Var != null ? o74Var.b : 0L;
        if (o74Var == null || (list = o74Var.c) == null) {
            list = defpackage.kx2.b;
        }
        HashSet hashSet2 = new HashSet(list.size());
        for (h74 h74Var : list) {
            hashSet2.add(h74Var.b);
            String strB = b(h74Var.b);
            defpackage.xb4 xb4Var = a;
            xb4Var.getClass();
            av3Var.a(strB, xb4Var.b(h74.CREATOR.serializer(), h74Var));
        }
        Set setA2 = av3Var.a("MediationPrefetchSettingsAdUnitIdsSet", set);
        if (setA2 != null) {
            set = setA2;
        }
        for (String str4 : set) {
            if (!hashSet2.contains(str4)) {
                av3Var.d(b(str4));
            }
        }
        av3Var.a("MediationPrefetchSettingsAdUnitIdsSet", hashSet2);
        av3Var.a("MediationPrefetchLoadTimeoutMillis", j);
    }

    public static void b(zu3 zu3Var) {
        av3 av3Var = (av3) zu3Var;
        Set set = defpackage.ox2.b;
        Set setA = av3Var.a("BiddingSettingsAdUnitIdsSet", set);
        if (setA == null) {
            setA = set;
        }
        Set setA2 = av3Var.a("MediationPrefetchSettingsAdUnitIdsSet", set);
        if (setA2 != null) {
            set = setA2;
        }
        Iterator it = setA.iterator();
        while (it.hasNext()) {
            av3Var.d(a((String) it.next()));
        }
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            av3Var.d(b((String) it2.next()));
        }
        av3Var.d("BiddingSettingsAdUnitIdsSet");
        av3Var.d("MediationPrefetchSettingsAdUnitIdsSet");
    }

    public static String b(String str) {
        return defpackage.bj.c("MediationPrefetchSettingsAdUnitIdsInfo_", str);
    }

    public static dt a(zu3 zu3Var) {
        av3 av3Var = (av3) zu3Var;
        Set set = defpackage.ox2.b;
        Set setA = av3Var.a("BiddingSettingsAdUnitIdsSet", set);
        if (setA == null) {
            setA = set;
        }
        Set setA2 = av3Var.a("MediationPrefetchSettingsAdUnitIdsSet", set);
        if (setA2 != null) {
            set = setA2;
        }
        et etVar = new et();
        ArrayList arrayList = new ArrayList(setA.size());
        Iterator it = setA.iterator();
        while (it.hasNext()) {
            String strC = av3Var.c(a((String) it.next()));
            if (strC != null && strC.length() != 0) {
                try {
                    la laVarA = etVar.a(new JSONObject(strC));
                    if (laVarA != null) {
                        arrayList.add(laVarA);
                    }
                } catch (JSONException unused) {
                }
            }
        }
        long jB = av3Var.b("MediationPrefetchLoadTimeoutMillis");
        ArrayList arrayList2 = new ArrayList(set.size());
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            String strC2 = av3Var.c(b((String) it2.next()));
            if (strC2 != null) {
                defpackage.xb4 xb4Var = a;
                xb4Var.getClass();
                h74 h74Var = (h74) xb4Var.a(defpackage.ev0.a(h74.CREATOR.serializer()), strC2);
                if (h74Var != null) {
                    arrayList2.add(h74Var);
                }
            }
        }
        o74 o74Var = new o74(jB, arrayList2);
        if (arrayList.isEmpty() && set.isEmpty()) {
            return null;
        }
        return new dt(arrayList, o74Var);
    }

    public static String a(String str) {
        return defpackage.bj.c("BiddingSettingsAdUnitIdsInfo_", str);
    }
}
