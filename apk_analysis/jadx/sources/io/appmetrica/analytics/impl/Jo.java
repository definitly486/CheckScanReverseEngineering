package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class Jo {
    public final Context a;
    public final LinkedHashMap b = new LinkedHashMap();
    public final Fo c;
    public final Fo d;

    public Jo(Context context) {
        this.a = context;
        C1201qa c1201qa = new C1201qa(context, "appmetrica_vital.dat", Fa.k().w().e(), 0L, 8, null);
        this.c = new Fo(Fa.k().y(), c1201qa);
        this.d = new Fo(new C1102mf(Fa.k().B().e(context)), c1201qa);
    }

    public final Fo a() {
        return this.c;
    }

    public final Fo b() {
        return this.d;
    }
}
