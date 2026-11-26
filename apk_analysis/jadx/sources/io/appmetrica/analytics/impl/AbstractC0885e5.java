package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.e5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0885e5 {
    public final C0989i5 a;
    public final String b = "[ComponentMigrationToV113]";

    public AbstractC0885e5(C0989i5 c0989i5) {
        this.a = c0989i5;
    }

    public final void a(int i) {
        if (b(i)) {
            c();
        }
    }

    public final String b() {
        return this.b;
    }

    public abstract boolean b(int i);

    public abstract void c();

    public final C0989i5 a() {
        return this.a;
    }
}
