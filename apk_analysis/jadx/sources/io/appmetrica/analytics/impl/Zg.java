package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Zg extends Ug {
    public final SafePackageManager b;

    public Zg(C0989i5 c0989i5) {
        this(c0989i5, new SafePackageManager());
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        HashSet hashSet;
        C0989i5 c0989i5 = this.a;
        if (c0989i5.t.c() && c0989i5.y()) {
            C1024jf c1024jf = c0989i5.c;
            String strE = this.a.c.e();
            if (TextUtils.isEmpty(strE)) {
                hashSet = null;
            } else {
                try {
                    hashSet = new HashSet();
                    JSONArray jSONArray = new JSONArray(strE);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        hashSet.add(new C0890ea(jSONArray.getJSONObject(i)));
                    }
                } catch (Throwable unused) {
                    hashSet = null;
                }
            }
            try {
                ArrayList<C0890ea> arrayListB = b();
                if (CollectionUtils.areCollectionsEqual(hashSet, arrayListB)) {
                    c0989i5.v();
                } else {
                    JSONArray jSONArray2 = new JSONArray();
                    for (C0890ea c0890ea : arrayListB) {
                        c0890ea.getClass();
                        JSONObject jSONObjectPut = new JSONObject().put("name", c0890ea.a).put("required", c0890ea.c);
                        int i2 = c0890ea.b;
                        if (i2 != -1) {
                            jSONObjectPut.put("version", i2);
                        }
                        jSONArray2.put(jSONObjectPut);
                    }
                    C0783a6 c0783a6A = C0783a6.a(c0783a6, new JSONObject().put("features", jSONArray2).toString());
                    C1353w9 c1353w9 = c0989i5.n;
                    c1353w9.a(c0783a6A, C1030jl.a(c1353w9.c.b(c0783a6A), c0783a6A.i));
                    int i3 = c1353w9.j;
                    c1353w9.l = i3;
                    c1353w9.a.a(i3);
                    c1024jf.i(jSONArray2.toString());
                }
            } catch (Throwable unused2) {
            }
        }
        return false;
    }

    public final ArrayList b() {
        FeatureInfo[] featureInfoArr;
        try {
            C0989i5 c0989i5 = this.a;
            SafePackageManager safePackageManager = this.b;
            Context context = c0989i5.a;
            PackageInfo packageInfo = safePackageManager.getPackageInfo(context, context.getPackageName(), 16384);
            ArrayList arrayList = new ArrayList();
            AbstractC0865da c0813ba = AndroidUtils.isApiAchieved(24) ? new C0813ba() : new C0839ca();
            if (packageInfo != null && (featureInfoArr = packageInfo.reqFeatures) != null) {
                for (FeatureInfo featureInfo : featureInfoArr) {
                    arrayList.add(c0813ba.a(featureInfo));
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Zg(C0989i5 c0989i5, SafePackageManager safePackageManager) {
        super(c0989i5);
        this.b = safePackageManager;
    }
}
