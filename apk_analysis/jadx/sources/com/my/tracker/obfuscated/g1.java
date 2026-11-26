package com.my.tracker.obfuscated;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import com.my.tracker.ads.AdEvent;
import com.my.tracker.miniapps.MiniAppEvent;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class g1 {
    final AtomicBoolean a = new AtomicBoolean();
    final c3 b;
    final Application c;
    final i0 d;
    final com.my.tracker.obfuscated.a e;
    final n f;
    final b0 g;
    final w1 h;
    final a2 i;
    r1 j;
    protected x1 k;

    public g1(c3 c3Var, Application application) {
        this.b = c3Var;
        this.c = application;
        b3.c("MyTracker created, version: 3.6.0");
        i0 i0VarA = i0.a(c3Var, new a(), application);
        this.d = i0VarA;
        a2 a2VarA = a2.a(i0VarA, c3Var.a(), application);
        this.i = a2VarA;
        this.e = com.my.tracker.obfuscated.a.a(i0VarA, c3Var, a2VarA, application);
        this.f = n.a(c3Var, application);
        this.g = b0.a(i0VarA);
        this.h = w1.a(i0VarA, application);
        this.k = x1.a();
    }

    public void a(List list) {
        if (!this.a.compareAndSet(false, true)) {
            b3.a("MyTracker: tracker has already been initialized");
            return;
        }
        b3.c("MyTracker is initialized with id: " + this.b.g());
        f1.c(this.c);
        e0.a(this.c);
        c3 c3Var = this.b;
        final i0 i0Var = this.d;
        Objects.requireNonNull(i0Var);
        v vVar = new v() { // from class: hv9
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                i0Var.b((Boolean) obj);
            }
        };
        final i0 i0Var2 = this.d;
        Objects.requireNonNull(i0Var2);
        c3Var.a(vVar, new v() { // from class: iv9
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                i0Var2.c((Boolean) obj);
            }
        });
        this.d.d();
        a1.a(this.b, this.d, this.i, this.c);
        t0.a(this.d, this.f, this.c);
        z0.a(this.d, this.f, this.c);
        p2.d().a(this.b, this.c);
        this.e.a();
        this.h.a();
        if (!list.isEmpty()) {
            r1 r1VarA = r1.a(this.d, this.c);
            this.j = r1VarA;
            r1VarA.a(list);
        }
        x1 x1Var = this.k;
        Application application = this.c;
        final i0 i0Var3 = this.d;
        Objects.requireNonNull(i0Var3);
        x1Var.a(application, new v() { // from class: jv9
            @Override // com.my.tracker.obfuscated.v
            public final void a(Object obj) {
                i0Var3.b((String) obj);
            }
        });
    }

    public boolean b() {
        boolean z = this.a.get();
        boolean z2 = !z;
        if (!z) {
            b3.b("MyTracker error: tracker hasn't been initialized");
        }
        return z2;
    }

    public final class a implements i0.b {
        public a() {
        }

        @Override // com.my.tracker.obfuscated.i0.b
        public void a(String str) {
            g1.this.f.b(str);
        }

        @Override // com.my.tracker.obfuscated.i0.b
        public void a() {
            g1.this.e.e();
        }
    }

    public void b(Map map) {
        if (b()) {
            return;
        }
        this.d.d(map);
    }

    public void b(int i, boolean z) {
        if (b()) {
            return;
        }
        p2.e().b(i, z);
    }

    public void b(String str, String str2, Map map) {
        if (b()) {
            return;
        }
        this.d.b(str, str2, map);
    }

    public static g1 a(String str, c3 c3Var, Application application) {
        c3Var.b(str);
        return new g1(c3Var, application);
    }

    public void a() {
        if (b()) {
            return;
        }
        this.d.a();
    }

    public void a(Activity activity) {
        if (b()) {
            return;
        }
        this.e.d(activity);
    }

    public void a(String str, Map map) {
        if (b()) {
            return;
        }
        this.d.a(str, map);
    }

    public void a(String str, String str2, Map map) {
        if (b()) {
            return;
        }
        this.d.a(str, str2, map);
    }

    public void a(Map map) {
        if (b()) {
            return;
        }
        this.d.c(map);
    }

    public void a(int i, Map map) {
        if (b()) {
            return;
        }
        this.d.a(i, map);
    }

    public void a(AdEvent adEvent) {
        if (b()) {
            return;
        }
        this.d.a(adEvent);
    }

    public void a(MiniAppEvent miniAppEvent) {
        if (b()) {
            return;
        }
        this.d.a(miniAppEvent);
    }

    public void a(JSONObject jSONObject, JSONObject jSONObject2, String str, Map map) {
        if (b()) {
            return;
        }
        if (this.b.s()) {
            b3.a("MyTracker: autotrackingPurchase is enabled, you mustn't use trackPurchase(*) method");
        } else {
            this.h.a(jSONObject, jSONObject2, str, map);
        }
    }

    public void a(Object obj, String str, String str2, String str3, Map map) {
        if (b()) {
            return;
        }
        if (this.b.s()) {
            b3.a("MyTracker: autotrackingPurchase is enabled, you mustn't use trackAppGalleryPurchase(*) method");
        } else {
            this.h.a(obj, str, str2, str3, map);
        }
    }

    public void a(int i, Intent intent) {
        if (b()) {
            return;
        }
        if (!this.b.s()) {
            b3.a("MyTracker: autotrackingPurchase is disabled, you should enable it before using onActivityResult(*) method");
        } else {
            this.h.b(i, intent);
        }
    }

    public void a(int i, List list) {
        if (b()) {
            return;
        }
        if (!this.b.s()) {
            b3.a("MyTracker: autotrackingPurchase is disabled, you should enable it before using onPurchasesUpdated(*) method");
        } else {
            this.h.a(i, list);
        }
    }

    public String a(Intent intent) {
        return this.g.a(intent);
    }

    public void a(int i, boolean z) {
        if (b()) {
            return;
        }
        p2.e().a(i, z);
    }

    public void a(int i) {
        if (b()) {
            return;
        }
        p2.e().a(i);
    }
}
