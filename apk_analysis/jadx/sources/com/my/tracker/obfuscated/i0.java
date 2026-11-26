package com.my.tracker.obfuscated;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.my.tracker.MyTrackerConfig;
import com.my.tracker.ads.AdEvent;
import com.my.tracker.miniapps.MiniAppEvent;
import com.my.tracker.obfuscated.f3;
import defpackage.b52;
import defpackage.bj2;
import defpackage.ct2;
import defpackage.do2;
import defpackage.dy9;
import defpackage.e52;
import defpackage.es8;
import defpackage.h01;
import defpackage.kk8;
import defpackage.ll6;
import defpackage.sd9;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class i0 {
    public static final DecimalFormat l;
    final c3 b;
    final Context c;
    final b d;
    j1 h;
    final Map a = new HashMap();
    protected boolean e = false;
    protected f3 f = f3.j;
    protected String g = "";
    private final q i = new q(65536);
    final k1 j = k1.b();
    long k = 0;

    public interface a {
        void b(List list);
    }

    public interface b {
        void a();

        void a(String str);
    }

    public interface c {
        void a(List list);
    }

    static {
        DecimalFormat decimalFormat = new DecimalFormat("0.0#####");
        l = decimalFormat;
        decimalFormat.setDecimalFormatSymbols(DecimalFormatSymbols.getInstance(Locale.ROOT));
    }

    private i0(c3 c3Var, b bVar, Context context) {
        this.b = c3Var;
        this.d = bVar;
        this.c = context.getApplicationContext();
    }

    private boolean a(JSONObject jSONObject, String str, String str2, String str3, Map map, long j) {
        String strValueOf;
        j1 j1Var;
        if (str == null) {
            b3.a("Error: empty data " + str);
            return false;
        }
        try {
            if (TextUtils.isEmpty(new JSONObject(str).optString("productId"))) {
                b3.a("Error: empty productId in data ".concat(str));
                return false;
            }
            String string = null;
            if (jSONObject != null) {
                try {
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    b3.a("Error: can't convert productInfo json to string", th);
                }
            }
            try {
                strValueOf = String.valueOf(jSONObject.optDouble("microsPrice") / 1000000.0d);
            } catch (Throwable th2) {
                b3.a("Error: wrong price in micros in sku details: ", th2);
                strValueOf = null;
            }
            byte[] bArrA = this.j.a(string, str, str2, str3, 0, strValueOf, jSONObject.optString(FirebaseAnalytics.Param.CURRENCY), map);
            return (bArrA == null || (j1Var = this.h) == null || !j1Var.c(bArrA, j)) ? false : true;
        } catch (Throwable th3) {
            b3.b("Error: creating object failed", th3);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        if (a(this.h)) {
            return;
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        if (this.h != null) {
            b3.b("EventTracker error: tracker has already been initialized");
            return;
        }
        h1 h1VarA = h1.a(this.b.g(), this.c);
        if (h1VarA == null) {
            return;
        }
        j1 j1VarA = j1.a(h1VarA);
        this.h = j1VarA;
        if (a(j1VarA)) {
            return;
        }
        this.k = t1.a(this.c).l();
        this.b.m().a(new v() { // from class: ey9
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                this.a.a((f3) obj);
            }
        }, new v() { // from class: fy9
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                this.a.c((f3) obj);
            }
        });
        b();
    }

    public void b(j1 j1Var) {
        String strQ = this.b.q();
        MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
        try {
            com.my.tracker.obfuscated.b bVarD = j1Var.d();
            try {
                if (bVarD != null) {
                    while (bVarD.b()) {
                        long jA = bVarD.a();
                        byte[] bArrI = bVarD.i();
                        this.i.a();
                        this.i.b(bArrI);
                        w0.b bVarA = a(strQ, okHttpClientProviderN, this.i);
                        if (bVarA == null || !bVarA.c()) {
                            break;
                            break;
                        }
                        String str = (String) bVarA.b();
                        if (!TextUtils.isEmpty(str)) {
                            this.d.a(str);
                        }
                        j1Var.a(jA);
                    }
                } else {
                    b3.a("EventTracker error: iterator is null");
                    if (bVarD == null) {
                        return;
                    }
                }
                bVarD.close();
            } catch (Throwable th) {
                if (bVarD != null) {
                    try {
                        bVarD.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            b3.b("EventTracker error: ", th3);
        }
    }

    public void c() {
        if (a(this.h)) {
            return;
        }
        this.d.a();
        if (!w0.a(this.c)) {
            b3.a("MyTrackerRepository: no network connection");
            return;
        }
        String strA = a(this.e, this.f, this.g, this.h);
        if (strA != null) {
            this.d.a(strA);
        }
        b(this.h);
    }

    public void d(Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: rx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(mapA, jA);
            }
        });
    }

    public void g() {
        final long jA = z2.a();
        a(new Runnable() { // from class: my9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(jA);
            }
        });
    }

    public void d() {
        a(new es8(this, 1));
    }

    public void d(final String str) {
        final long jA = z2.a();
        a(new Runnable() { // from class: px9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(str, jA);
            }
        });
    }

    public void d(List list) {
        a(new e52(1, this, list));
    }

    public static boolean c(String str) {
        if (str == null || str.length() <= 255) {
            return false;
        }
        b3.b("EventTracker error: length of the string " + str + " is more than 255, event ignored");
        return true;
    }

    public void c(Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: iy9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(mapA, jA);
            }
        });
    }

    public void c(List list) {
        a(new ct2(2, this, list));
    }

    public void c(final float f) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new Runnable() { // from class: zx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.c(jCurrentTimeMillis, f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(long j, float f) {
        if (a(this.h) || a(29, j)) {
            return;
        }
        long jB = z2.b(j);
        byte[] bArrC = this.j.c((long) (f * 1000.0f));
        if (bArrC != null) {
            this.h.p(bArrC, jB);
        }
    }

    public void c(Boolean bool) {
        a(new dy9(0, this, bool));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final f3 f3Var) {
        a(new Runnable() { // from class: ay9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(f3Var);
            }
        });
    }

    public static boolean b(Map map) {
        if (map == null) {
            return false;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (c((String) entry.getKey()) || c((String) entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    public void b(final String str, final String str2, Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: wx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(mapA, str, str2, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Map map, String str, String str2, long j) {
        byte[] bArrB;
        if (a(this.h) || b(map) || (bArrB = this.j.b(this.e, str, str2, map)) == null || !this.h.r(bArrB, j)) {
            return;
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Map map, long j) {
        byte[] bArrB;
        if (a(this.h) || b(map) || (bArrB = this.j.b(map)) == null || !this.h.k(bArrB, j)) {
            return;
        }
        b();
    }

    public void b(final String str, final String str2, final long j, final long j2) {
        final long jA = z2.a();
        a(new Runnable() { // from class: ly9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(str, str2, j, j2, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, String str2, long j, long j2, long j3) {
        byte[] bArrB;
        if (a(this.h) || (bArrB = this.j.b(str, str2, j, j2)) == null || !this.h.h(bArrB, j3)) {
            return;
        }
        b();
    }

    public static i0 a(c3 c3Var, b bVar, Context context) {
        return new i0(c3Var, bVar, context);
    }

    public static boolean a(j1 j1Var) {
        if (j1Var != null) {
            return false;
        }
        b3.b("EventTracker error: repository is null");
        return true;
    }

    private static Map a(Map map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        return new HashMap(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(List list) {
        if (a(this.h)) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s0 s0Var = (s0) it.next();
            i0 i0Var = this;
            i0Var.a(s0Var.e(), s0Var.d(), s0Var.a(), (Map) null, s0Var.f());
            i0Var.h.b(s0Var);
            this = i0Var;
        }
        this.b();
    }

    private static void a(Runnable runnable) {
        m.a(runnable);
    }

    private static int a(v1 v1Var, j1 j1Var, c3.a aVar, boolean z, f3 f3Var, String str, k1 k1Var, String str2, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, Context context) {
        if (!j1Var.j()) {
            return 3;
        }
        long jI = j1Var.i();
        b2 b2VarB = j1Var.b();
        d2 d2VarC = j1Var.c();
        return k1Var.a(v1Var, aVar, z, f3Var, str, k0.a().a(aVar.m, aVar.g, aVar.e, z, str2, okHttpClientProvider, context), jI, j1Var.f(), b2VarB, d2VarC);
    }

    public void b(final float f, final float f2, final float f3) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new Runnable() { // from class: ox9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(jCurrentTimeMillis, f, f2, f3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(f3 f3Var) {
        this.f = f3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j, float f, float f2, float f3) {
        if (a(this.h) || a(26, j)) {
            return;
        }
        long jB = z2.b(j);
        byte[] bArrB = this.j.b((long) (f * 1000.0f), (long) (f2 * 1000.0f), (long) (f3 * 1000.0f));
        if (bArrB != null) {
            this.h.n(bArrB, jB);
        }
    }

    public void a() {
        a(new ll6(this, 2));
    }

    public void a(final String str, Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: xx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(str, mapA, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Map map, long j) {
        byte[] bArrA;
        if (a(this.h) || c(str) || b(map) || (bArrA = this.j.a(str, map)) == null || !this.h.d(bArrA, j)) {
            return;
        }
        b();
    }

    public void b(final float f) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new Runnable() { // from class: vx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(jCurrentTimeMillis, f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j, float f) {
        if (a(this.h) || a(28, j)) {
            return;
        }
        long jB = z2.b(j);
        byte[] bArrB = this.j.b((long) (f * 1000.0f));
        if (bArrB != null) {
            this.h.o(bArrB, jB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j) {
        if (a(this.h)) {
            return;
        }
        boolean zA = this.h.a(j, t1.a(this.c).n());
        if (this.h.b(j)) {
            zA = true;
        }
        if (zA) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(c cVar) {
        if (a(this.h)) {
            cVar.a(Collections.EMPTY_LIST);
        } else {
            cVar.a(this.h.g());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(a aVar) {
        if (a(this.h)) {
            aVar.b(Collections.EMPTY_LIST);
        } else {
            aVar.b(this.h.e());
        }
    }

    public void a(final String str, final String str2, Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: mx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(mapA, str, str2, jA);
            }
        });
    }

    public void b(Boolean bool) {
        this.e = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Map map, String str, String str2, long j) {
        byte[] bArrA;
        if (a(this.h) || b(map) || (bArrA = this.j.a(this.e, str, str2, map)) == null || !this.h.m(bArrA, j)) {
            return;
        }
        b();
    }

    public void b(String str) {
        a(new b52(2, this, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(f3 f3Var) {
        b3.a("onUserInfoStateChanged: customUserIds=" + Arrays.toString(f3Var.g));
        if (l.a(this.f.g, f3Var.g) != 0 && !a(this.h)) {
            b(this.e, this.f, this.g, this.h);
        }
        this.f = f3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Map map, long j) {
        byte[] bArrA;
        if (a(this.h) || b(map) || (bArrA = this.j.a(map)) == null || !this.h.j(bArrA, j)) {
            return;
        }
        b();
    }

    public void b(boolean z, f3 f3Var, String str, j1 j1Var) {
        b3.a("createAndStorePartialPacket: start");
        c3.a aVarO = this.b.o();
        String strH = this.b.h();
        MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
        this.i.a();
        int iA = a(this.i, j1Var, aVarO, z, f3Var, str, this.j, strH, okHttpClientProviderN, this.c);
        b3.a("createAndStorePartialPacket: writeResult=" + iA);
        if (iA == 1) {
            j1Var.a();
            j1Var.a(this.i.c());
        } else if (iA == 2) {
            j1Var.a();
        }
        this.i.d();
    }

    public void a(final int i, Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: nx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(mapA, i, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Map map, int i, long j) {
        byte[] bArrA;
        if (a(this.h) || b(map) || (bArrA = this.j.a(i, map)) == null || !this.h.k(bArrA, j)) {
            return;
        }
        b();
    }

    public void b() {
        int iF;
        if (a(this.h)) {
            return;
        }
        if (this.h.h() != 0 || ((iF = this.b.f()) > 0 && z2.a() - this.k <= iF)) {
            c();
        }
    }

    public void a(long j, String str, s1.a aVar) {
        a(new h01(this, j, str, aVar, z2.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, String str, s1.a aVar, long j2) {
        byte[] bArrA;
        if (a(this.h) || (bArrA = this.j.a(j, str, aVar)) == null || !this.h.i(bArrA, j2)) {
            return;
        }
        t1.a(this.c).c(j2);
        this.k = j2;
        b();
    }

    public void a(String str, String str2, Runnable runnable) {
        a(new kk8(this, str, str2, z2.a(), runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, long j, Runnable runnable) {
        if (a(this.h)) {
            return;
        }
        byte[] bArrB = this.j.b(str, str2);
        if (bArrB != null && this.h.q(bArrB, j)) {
            b();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(final String str, final String str2, final long j, final long j2) {
        final long jA = z2.a();
        a(new Runnable() { // from class: hy9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(str, str2, j, j2, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, long j, long j2, long j3) {
        byte[] bArrA;
        if (a(this.h) || (bArrA = this.j.a(str, str2, j, j2)) == null || !this.h.a(bArrA, j3)) {
            return;
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, long j) {
        byte[] bArrA;
        if (a(this.h) || (bArrA = this.j.a(str)) == null || !this.h.b(bArrA, j)) {
            return;
        }
        b();
    }

    public void a(final String str, final String str2, final String str3, final String str4, final String str5) {
        final long jA = z2.a();
        a(new Runnable() { // from class: cy9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(str, str2, str3, str4, str5, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, String str3, String str4, String str5, long j) {
        byte[] bArrA;
        if (a(this.h) || (bArrA = this.j.a(str, str2, str3, str4, str5)) == null || !this.h.s(bArrA, j)) {
            return;
        }
        t1.a(this.c).c(j);
        this.k = j;
        b();
    }

    public void a(final JSONObject jSONObject, final JSONObject jSONObject2, final String str, Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: ky9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(mapA, jSONObject, jSONObject2, str, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Map map, JSONObject jSONObject, JSONObject jSONObject2, String str, long j) {
        if (a(this.h) || b(map) || !a(jSONObject, jSONObject2, str, map, j)) {
            return;
        }
        b();
    }

    public void a(final JSONObject jSONObject, final String str, final String str2, final String str3, Map map) {
        final long jA = z2.a();
        final Map mapA = a(map);
        a(new Runnable() { // from class: by9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(mapA, jSONObject, str, str2, str3, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Map map, JSONObject jSONObject, String str, String str2, String str3, long j) {
        if (a(this.h) || b(map) || !a(jSONObject, str, str2, str3, map, j)) {
            return;
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        String string;
        if (a(this.h)) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            try {
                string = fVar.e().toString();
            } catch (Throwable th) {
                b3.a("Error: purchase data: ", th);
                string = null;
            }
            i0 i0Var = this;
            i0Var.a(fVar.d(), string, fVar.a(), fVar.f(), (Map) null, fVar.h());
            i0Var.h.b(fVar);
            this = i0Var;
        }
        this.b();
    }

    public void a(final String str, final String str2) {
        final long jA = z2.a();
        a(new Runnable() { // from class: yx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(str, str2, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, long j) {
        byte[] bArrA;
        if (a(this.h) || (bArrA = this.j.a(str, str2)) == null || !this.h.e(bArrA, j)) {
            return;
        }
        b();
    }

    public void a(final int i, final byte[] bArr, final boolean z, final boolean z2, final Runnable runnable) {
        final long jA = z2.a();
        a(new Runnable() { // from class: sx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(i, bArr, z, z2, jA, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, byte[] bArr, boolean z, boolean z2, long j, Runnable runnable) {
        if (!a(this.h) && this.h.a(i, bArr, z, z2, j)) {
            b();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public void a(final AdEvent adEvent) {
        final long jA = z2.a();
        a(new Runnable() { // from class: jy9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(adEvent, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AdEvent adEvent, long j) {
        byte[] bArrA;
        if (a(this.h) || (bArrA = this.j.a(adEvent, l.format(adEvent.revenue))) == null || !this.h.a(adEvent.a, bArrA, j)) {
            return;
        }
        b();
    }

    public void a(final MiniAppEvent miniAppEvent) {
        final long jA = z2.a();
        a(new Runnable() { // from class: tx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(miniAppEvent, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MiniAppEvent miniAppEvent, long j) {
        String str;
        Map<String, String> map;
        if (a(this.h) || c(miniAppEvent.name) || b(miniAppEvent.eventParams)) {
            return;
        }
        int i = miniAppEvent.a;
        String str2 = (i == 24 || i == 22 || i == 23) ? miniAppEvent.customUserId : null;
        if (i == 24) {
            str = miniAppEvent.name;
            map = miniAppEvent.eventParams;
        } else {
            str = null;
            map = null;
        }
        byte[] bArrA = this.j.a(i, str2, miniAppEvent.miniAppId, str, miniAppEvent.platformUserId, i == 20 ? miniAppEvent.query : null, map);
        if (bArrA == null || !this.h.b(i, bArrA, j)) {
            return;
        }
        b();
    }

    public void a(final float f) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new Runnable() { // from class: gy9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(jCurrentTimeMillis, f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, float f) {
        if (a(this.h) || a(25, j)) {
            return;
        }
        long jB = z2.b(j);
        byte[] bArrA = this.j.a((long) (f * 1000.0f));
        if (bArrA != null) {
            this.h.l(bArrA, jB);
        }
    }

    public void a(final float f, final float f2, final float f3) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        a(new Runnable() { // from class: qx9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(jCurrentTimeMillis, f, f2, f3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, float f, float f2, float f3) {
        if (a(this.h) || a(27, j)) {
            return;
        }
        long jB = z2.b(j);
        byte[] bArrA = this.j.a((long) (f * 1000.0f), (long) (f2 * 1000.0f), (long) (f3 * 1000.0f));
        if (bArrA != null) {
            this.h.g(bArrA, jB);
        }
    }

    public void a(List list, c cVar) {
        a(new bj2(this, cVar, list, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(c cVar, List list) {
        if (a(this.h)) {
            cVar.a(Collections.EMPTY_LIST);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.h.a((s0) it.next());
        }
        cVar.a(list);
    }

    public void a(final List list, final a aVar) {
        a(new Runnable() { // from class: ux9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(aVar, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, List list) {
        if (a(this.h)) {
            aVar.b(Collections.EMPTY_LIST);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.h.a((f) it.next());
        }
        aVar.b(list);
    }

    public void a(c cVar) {
        a(new do2(2, this, cVar));
    }

    public void a(a aVar) {
        a(new sd9(1, this, aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool) {
        b3.a("updateKidMode: newKidMode=" + bool);
        if (bool.booleanValue() == this.e) {
            return;
        }
        if (!a(this.h)) {
            b(this.e, this.f, this.g, this.h);
        }
        this.e = bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        b3.a("setRemoteConfig: remoteConfig=" + str);
        if (this.g.equals(str)) {
            return;
        }
        if (!a(this.h)) {
            b(this.e, this.f, this.g, this.h);
        }
        this.g = str;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0053  */
    private String a(boolean z, f3 f3Var, String str, j1 j1Var) {
        String str2;
        w0.b bVarA;
        c3.a aVarO = this.b.o();
        String strQ = this.b.q();
        String strH = this.b.h();
        MyTrackerConfig.OkHttpClientProvider okHttpClientProviderN = this.b.n();
        this.i.a();
        if (a(this.i, j1Var, aVarO, z, f3Var, str, this.j, strH, okHttpClientProviderN, this.c) == 1 && (bVarA = a(strQ, okHttpClientProviderN, this.i)) != null) {
            if (bVarA.c()) {
                b3.a("Events were sent successfully");
                j1Var.a();
            }
            str2 = (String) bVarA.b();
            if (TextUtils.isEmpty(str2)) {
                str2 = null;
            }
        } else {
            str2 = null;
        }
        this.i.d();
        return str2;
    }

    private w0.b a(String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, q qVar) {
        if (this.j.a(qVar, z2.a())) {
            return w0.a(new r(qVar), okHttpClientProvider, true).a(str);
        }
        return null;
    }

    private boolean a(JSONObject jSONObject, JSONObject jSONObject2, String str, Map map, long j) {
        String string;
        String string2;
        String str2;
        j1 j1Var;
        String strOptString = null;
        try {
            string = jSONObject2.toString();
        } catch (Throwable th) {
            b3.a("Error: can't convert purchaseData json to string", th);
            string = null;
        }
        if (jSONObject != null) {
            try {
                string2 = jSONObject.toString();
            } catch (Throwable th2) {
                b3.a("Error: can't convert skuDetails json to string", th2);
                string2 = null;
            }
        } else {
            string2 = null;
        }
        try {
            str2 = l.format(Double.parseDouble(jSONObject.optString("price_amount_micros")) / 1000000.0d);
        } catch (Throwable th3) {
            b3.a("Error: wrong price in micros in sku details: ", th3);
            str2 = null;
        }
        try {
            strOptString = jSONObject.optString("price_currency_code");
        } catch (Throwable th4) {
            b3.a("Error: wrong currency in sku details: ", th4);
        }
        byte[] bArrA = this.j.a(str, string, string2, str2, strOptString, map);
        return (bArrA == null || (j1Var = this.h) == null || !j1Var.f(bArrA, j)) ? false : true;
    }

    public boolean a(int i, long j) {
        Long l2 = (Long) this.a.get(Integer.valueOf(i));
        if (l2 != null && j - l2.longValue() < 800) {
            b3.a("EventTracker: event with type " + i + " was throttled");
            return true;
        }
        this.a.put(Integer.valueOf(i), Long.valueOf(j));
        return false;
    }
}
