package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Kd extends AbstractC1050kf {
    public Kd(Va va) {
        this(va, null);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final String a(String str, String str2) {
        return this.a.getString(g(str), str2);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final boolean b(String str) {
        return this.a.a(g(str));
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public Nl e(String str) {
        return f(g(str));
    }

    public abstract String g(String str);

    public Kd(Va va, String str) {
        super(va, str);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final int a(String str, int i) {
        return this.a.getInt(g(str), i);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final Nl b(String str, int i) {
        return d(g(str), i);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final Nl b(String str, long j) {
        return d(g(str), j);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final long a(String str, long j) {
        return this.a.getLong(g(str), j);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final Nl b(String str, boolean z) {
        return d(g(str), z);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final Nl b(String str, String str2) {
        return d(g(str), str2);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1050kf
    public final boolean a(String str, boolean z) {
        return this.a.getBoolean(g(str), z);
    }
}
