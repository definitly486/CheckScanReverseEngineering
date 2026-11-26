package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ej, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0899ej implements InterfaceC1310ug {
    public final InterfaceC1310ug a;

    public C0899ej(InterfaceC1310ug interfaceC1310ug) {
        this.a = interfaceC1310ug;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final void a(InterfaceC1207qg interfaceC1207qg) {
        try {
            this.a.a(interfaceC1207qg);
        } catch (Throwable th) {
            String str = "Failed to request " + this.a.a() + " referrer";
            C0900ek c0900ek = Bj.a;
            c0900ek.getClass();
            c0900ek.a(new Cj(str, th));
            interfaceC1207qg.a(new C1360wg(str, th));
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final String a() {
        return this.a.a();
    }
}
