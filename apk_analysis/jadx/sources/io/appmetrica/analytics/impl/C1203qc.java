package io.appmetrica.analytics.impl;

import android.os.Bundle;
import defpackage.gh4;
import defpackage.ll3;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1203qc extends gh4 implements ll3 {
    public final /* synthetic */ C1228rc a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1203qc(C1228rc c1228rc) {
        super(0);
        this.a = c1228rc;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0039  */
    @Override // defpackage.ll3
    public final Object invoke() {
        Ic we;
        C1228rc c1228rc = this.a;
        Jc jc = c1228rc.f;
        D9 d9 = c1228rc.b;
        Tg tg = c1228rc.a;
        A4 a4 = c1228rc.c;
        C1024jf c1024jf = c1228rc.d;
        jc.getClass();
        if (FrameworkDetector.isNative()) {
            Z9 z9I = Fa.I.i();
            Bundle applicationMetaData = z9I.d.getApplicationMetaData(z9I.a);
            if (StringUtils.isNullOrEmpty(applicationMetaData != null ? applicationMetaData.getString("io.appmetrica.analytics.plugin_id") : null)) {
                we = new C0869de();
            } else {
                we = new We(d9, tg, a4, c1024jf);
            }
        } else {
            we = new We(d9, tg, a4, c1024jf);
        }
        return we.a();
    }
}
