package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes5.dex */
public final class Jl implements M6 {
    public final C1068l7 a;

    public Jl(C1068l7 c1068l7) {
        this.a = c1068l7;
    }

    @Override // io.appmetrica.analytics.impl.M6
    public final SQLiteDatabase a() {
        try {
            return this.a.getWritableDatabase();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // io.appmetrica.analytics.impl.M6
    public final void a(SQLiteDatabase sQLiteDatabase) {
    }
}
