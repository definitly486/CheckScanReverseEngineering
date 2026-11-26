package io.appmetrica.analytics.impl;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class Hb implements Va {
    public final Va a;

    public Hb(Va va) {
        this.a = va;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final boolean a(String str) {
        return this.a.a(str);
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Set b() {
        return this.a.b();
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final void flushAsync() {
        this.a.flushAsync();
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final boolean getBoolean(String str, boolean z) {
        return this.a.getBoolean(str, z);
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final int getInt(String str, int i) {
        return this.a.getInt(str, i);
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final long getLong(String str, long j) {
        return this.a.getLong(str, j);
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final String getString(String str, String str2) {
        return this.a.getString(str, str2);
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va remove(String str) {
        this.a.remove(str);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, long j) {
        this.a.a(str, j);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, int i) {
        this.a.a(str, i);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, boolean z) {
        this.a.a(str, z);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, float f) {
        this.a.a(str, f);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final Va a(String str, String str2) {
        this.a.a(str, str2);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Va
    public final void a() {
        this.a.a();
    }
}
