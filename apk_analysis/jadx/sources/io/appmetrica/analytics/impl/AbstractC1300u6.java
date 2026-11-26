package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ICrashTransformer;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.u6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1300u6 implements Ta {
    public final InterfaceC1274t6 a;
    public final ICrashTransformer b;
    public final Z9 c;

    public AbstractC1300u6(InterfaceC1274t6 interfaceC1274t6, ICrashTransformer iCrashTransformer, Z9 z9) {
        this.a = interfaceC1274t6;
        this.b = iCrashTransformer;
        this.c = z9;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final void a(Throwable th, Y y) {
        if (this.a.a(th)) {
            ICrashTransformer iCrashTransformer = this.b;
            if (iCrashTransformer == null || th == null || (th = iCrashTransformer.process(th)) != null) {
                C0853co c0853coA = AbstractC0930fo.a(th, y, null, (String) this.c.b.a(), (Boolean) this.c.c.a());
                C1306uc c1306uc = (C1306uc) ((Ih) this).d;
                c1306uc.a.a().a(c1306uc.b).a(c0853coA);
            }
        }
    }

    public final InterfaceC1274t6 b() {
        return this.a;
    }

    public final ICrashTransformer a() {
        return this.b;
    }
}
