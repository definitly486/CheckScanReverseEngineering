package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.text.TextUtils;
import defpackage.aa4;
import io.appmetrica.analytics.impl.Y1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Y1 {
    public final Ka a = new Ka();
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap c = new LinkedHashMap();

    public static final boolean a(Y1 y1, Intent intent) {
        y1.getClass();
        if (!"io.appmetrica.analytics.IAppMetricaService".equals(intent.getAction())) {
            return false;
        }
        Collection collection = (Collection) y1.a.a.get("io.appmetrica.analytics.IAppMetricaService");
        return collection == null || collection.size() == 0;
    }

    public final void b(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.a.a(action, Integer.valueOf(a(intent)));
            }
            for (Map.Entry entry : this.b.entrySet()) {
                X1 x1 = (X1) entry.getKey();
                if (((W1) entry.getValue()).a(intent)) {
                    x1.a(intent);
                }
            }
        }
    }

    public final void c(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                this.a.a(action, Integer.valueOf(a(intent)));
            }
            for (Map.Entry entry : this.b.entrySet()) {
                X1 x1 = (X1) entry.getKey();
                if (((W1) entry.getValue()).a(intent)) {
                    x1.a(intent);
                }
            }
        }
    }

    public final void d(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action)) {
                Ka ka = this.a;
                Integer numValueOf = Integer.valueOf(a(intent));
                Collection collection = (Collection) ka.a.get(action);
                if (collection != null && collection.remove(numValueOf)) {
                    if (collection.isEmpty() && ka.b) {
                        ka.a.remove(action);
                    }
                    new ArrayList(collection);
                }
            }
            for (Map.Entry entry : this.c.entrySet()) {
                X1 x1 = (X1) entry.getKey();
                if (((W1) entry.getValue()).a(intent)) {
                    x1.a(intent);
                }
            }
        }
    }

    public final void a(Intent intent, int i) {
    }

    public final void a(Intent intent, int i, int i2) {
    }

    public final void a(Configuration configuration) {
    }

    public final void a(X1 x1) {
        this.c.put(x1, new W1() { // from class: tl9
            @Override // io.appmetrica.analytics.impl.W1
            public final boolean a(Intent intent) {
                return Y1.a(this.a, intent);
            }
        });
    }

    public final void a() {
    }

    public static int a(Intent intent) {
        Uri data = intent.getData();
        if (data == null || !aa4.e(data.getPath(), "/client")) {
            return -1;
        }
        try {
            String queryParameter = data.getQueryParameter("pid");
            queryParameter.getClass();
            return Integer.parseInt(queryParameter);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final void b() {
    }

    public final void c(X1 x1) {
        this.b.put(x1, new W1() { // from class: ul9
            @Override // io.appmetrica.analytics.impl.W1
            public final boolean a(Intent intent) {
                return Y1.c(this.a, intent);
            }
        });
    }

    public static final boolean c(Y1 y1, Intent intent) {
        y1.getClass();
        return "io.appmetrica.analytics.IAppMetricaService".equals(intent.getAction());
    }

    public final void b(X1 x1) {
        this.b.put(x1, new W1() { // from class: sl9
            @Override // io.appmetrica.analytics.impl.W1
            public final boolean a(Intent intent) {
                return Y1.b(this.a, intent);
            }
        });
    }

    public static final boolean b(Y1 y1, Intent intent) {
        Collection collection;
        y1.getClass();
        return "io.appmetrica.analytics.IAppMetricaService".equals(intent.getAction()) && (collection = (Collection) y1.a.a.get("io.appmetrica.analytics.IAppMetricaService")) != null && collection.size() == 1;
    }
}
