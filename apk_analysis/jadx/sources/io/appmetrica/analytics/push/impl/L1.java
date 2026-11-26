package io.appmetrica.analytics.push.impl;

import android.content.Context;
import defpackage.bj;

/* JADX INFO: loaded from: classes5.dex */
public final class L1 {
    public final Context a;
    public final String b;

    public L1(Context context, String str) {
        this.a = context;
        this.b = context.getPackageName() + str;
    }

    public final Boolean a(String str) {
        if (this.a.getSharedPreferences(this.b, 0).contains(str)) {
            return Boolean.valueOf(this.a.getSharedPreferences(this.b, 0).getBoolean(str, false));
        }
        return null;
    }

    public final L1 a(String str, boolean z) {
        this.a.getSharedPreferences(this.b, 0).edit().putBoolean(str, z).apply();
        return this;
    }

    public final L1 a(String str, String str2) {
        this.a.getSharedPreferences(this.b, 0).edit().putString(str, str2).apply();
        return this;
    }

    public final void a(int i) {
        this.a.getSharedPreferences(this.b, 0).edit().putInt("pending_intent_id", i).apply();
    }

    public final void a(String str, long j) {
        this.a.getSharedPreferences(this.b, 0).edit().putLong(bj.c("appmetrica_tracker_event_id_", str), j).apply();
    }
}
