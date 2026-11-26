package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.Intent;
import androidx.compose.material3.internal.CalendarModelKt;
import defpackage.rr0;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class e implements i0.a, d.b {
    final i0 a;
    final t1 b;
    final d c;

    private e(i0 i0Var, t1 t1Var, d.a aVar) {
        this.a = i0Var;
        this.b = t1Var;
        this.c = aVar.a(this);
    }

    public static e a(i0 i0Var, t1 t1Var, Context context) {
        d.a aVarA = d.a(context.getApplicationContext());
        if (aVarA != null) {
            return new e(i0Var, t1Var, aVarA);
        }
        b3.a("AppGalleryPurchaseHandler: can't support appGallery purchases ");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.b.b() < CalendarModelKt.MillisecondsIn24Hours) {
            b3.a("AppGalleryPurchaseHandler: not yet time for tracking");
        } else {
            this.c.a();
            this.b.a(jCurrentTimeMillis);
        }
    }

    @Override // com.my.tracker.obfuscated.d.b
    public void c(List list) {
        if (list.isEmpty()) {
            b3.a("AppGalleryPurchaseHandler: can't trackAppGalleryRawPurchases, appGalleryRawPurchases is empty");
        } else {
            this.a.c(list);
        }
    }

    public void c() {
        m.a(new rr0(this, 4));
    }

    public void a() {
        this.a.a(this);
        c();
    }

    public void a(int i, Intent intent) {
        if (i != -1) {
            b3.a("AppGalleryPurchaseHandler: result code isn't equal to RESULT_OK");
        } else if (intent == null) {
            b3.a("AppGalleryPurchaseHandler: empty intent has been received");
        } else {
            this.c.a(intent);
        }
    }

    @Override // com.my.tracker.obfuscated.d.b
    public void a(List list) {
        if (list.isEmpty()) {
            b3.a("AppGalleryPurchaseHandler: can't addAppGalleryRawPurchases, appGalleryRawPurchases is empty");
        } else {
            this.a.a(list, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj, String str, String str2, String str3, Map map) {
        JSONObject jSONObjectA = d.a(obj);
        if (jSONObjectA == null) {
            b3.a("AppGalleryPurchaseHandler: error parse productInfo object");
        } else {
            this.a.a(jSONObjectA, str, str2, str3, map);
        }
    }

    @Override // com.my.tracker.obfuscated.i0.a
    public void b(List list) {
        if (list.isEmpty()) {
            b3.a("AppGalleryPurchaseHandler: empty subs raw purchases list");
        } else {
            this.c.a(list);
        }
    }

    public void b(final Object obj, final String str, final String str2, final String str3, final Map map) {
        m.a(new Runnable() { // from class: st9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(obj, str, str2, str3, map);
            }
        });
    }
}
