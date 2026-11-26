package com.my.target;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJVerifierKt;
import defpackage.gga;
import defpackage.h00;
import defpackage.i7a;
import defpackage.kt9;
import defpackage.ln9;
import defpackage.pp9;
import defpackage.y14;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class z2 {
    public static final AtomicBoolean g = new AtomicBoolean(false);
    public static long h = 7200000;
    public final Executor a;
    public final b2 b;
    public final ln9 c;
    public final kt9 d;
    public Handler e = null;
    public final ArrayList f = new ArrayList();

    public z2(Executor executor, b2 b2Var, d1 d1Var, ln9 ln9Var, kt9 kt9Var) {
        this.a = executor;
        this.b = b2Var;
        this.c = ln9Var;
        this.d = kt9Var;
    }

    public final void a(String str, String str2, long j, i7a i7aVar) {
        String host;
        String string;
        String str3 = i7aVar.a.a;
        j2 j2Var = a3.a;
        boolean z = false;
        if (!TextUtils.isEmpty(str2)) {
            synchronized (a3.a(str3)) {
                try {
                    Set set = (Set) a3.b.get(str3);
                    if (set != null && set.contains(str2)) {
                        z = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        boolean z2 = z;
        if (z2) {
            new CopyOnWriteArrayList();
            try {
                host = Uri.parse(str).getHost();
            } catch (Throwable unused) {
                host = null;
            }
            String strValueOf = String.valueOf(str.hashCode());
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("pixelId", strValueOf);
                jSONObject.put("host", host);
                jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, str2);
                jSONObject.put(TJVerifierKt.TJC_TIMESTAMP, System.currentTimeMillis());
                string = jSONObject.toString();
            } catch (JSONException unused2) {
                string = "{}";
            }
            i7aVar.a(9100, "Try to send pixel " + strValueOf, string);
        }
        if (g.get()) {
            this.b.a(str, str2, j, j + h, i7aVar, z2);
            b();
            return;
        }
        d1.a aVarB = d1.b(str, this.c);
        if (z2) {
            a3.b(str, str2, i7aVar, aVarB, false, 0);
        }
        if (aVarB.a()) {
            return;
        }
        String str4 = "responseCode=" + aVarB.c + ", error=" + aVarB.d + ", " + i7aVar.d;
        int i = i7aVar.c;
        pp9 pp9Var = i7aVar.b;
        if (pp9Var != null) {
            pp9Var.b(str4, i, 0, 9000, null);
        } else {
            i7aVar.a.a(str4, i, 0, 9000, null);
        }
    }

    public final void b() {
        if (this.d.a()) {
            ArrayList arrayList = this.f;
            int i = 4;
            if (arrayList.size() < 4) {
                try {
                    b2.a aVarA = this.b.a();
                    while (aVarA.moveToNext() && arrayList.size() < 4) {
                        try {
                            gga ggaVarA = aVarA.a();
                            if (!arrayList.contains(Long.valueOf(ggaVarA.a))) {
                                arrayList.add(Long.valueOf(ggaVarA.a));
                                this.a.execute(new h00(i, this, ggaVarA));
                            }
                        } catch (Throwable th) {
                            try {
                                aVarA.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    aVarA.close();
                } catch (Throwable th3) {
                    y14.u(null, "StatSender error: " + th3);
                }
            }
        }
    }

    public final void c() {
        HashSet hashSet = new HashSet(this.b.b());
        for (Map.Entry entry : a3.d.entrySet()) {
            String str = (String) entry.getKey();
            synchronized (a3.a(str)) {
                try {
                    for (Map.Entry entry2 : ((ConcurrentHashMap) entry.getValue()).entrySet()) {
                        ((c2) entry2.getValue()).d = !hashSet.contains(entry2.getKey());
                    }
                    if (a3.c(str)) {
                        a3.d(str);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
