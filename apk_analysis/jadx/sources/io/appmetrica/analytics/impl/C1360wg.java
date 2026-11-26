package io.appmetrica.analytics.impl;

import defpackage.jh2;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.wg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1360wg implements InterfaceC1410yg {
    public final String a;
    public final Throwable b;

    public /* synthetic */ C1360wg(String str, Throwable th, int i, jh2 jh2Var) {
        this(str, (i & 2) != 0 ? null : th);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1410yg
    public final C1155og a() {
        return null;
    }

    public final String b() {
        return this.a;
    }

    public final Throwable c() {
        return this.b;
    }

    public final String toString() {
        return "Failure(message='" + this.a + "', throwable=" + this.b + ')';
    }

    public C1360wg(String str, Throwable th) {
        this.a = str;
        this.b = th;
    }
}
