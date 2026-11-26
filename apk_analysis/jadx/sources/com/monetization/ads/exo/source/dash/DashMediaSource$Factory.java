package com.monetization.ads.exo.source.dash;

import androidx.work.WorkRequest;
import defpackage.o2;
import java.util.List;
import yads.cs;
import yads.dk0;
import yads.fx2;
import yads.g14;
import yads.gk0;
import yads.ll0;
import yads.mc0;
import yads.p04;
import yads.sk0;
import yads.vc0;

/* JADX INFO: loaded from: classes6.dex */
public final class DashMediaSource$Factory implements g14 {
    private final gk0 a;
    private final vc0 b;
    private sk0 c = new sk0();
    private final ll0 e = new ll0();
    private final long f = WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS;
    private final dk0 d = new dk0();

    public DashMediaSource$Factory(vc0 vc0Var) {
        this.a = new gk0(vc0Var);
        this.b = vc0Var;
    }

    @Override // yads.g14
    public final cs a(p04 p04Var) {
        p04Var.c.getClass();
        mc0 mc0Var = new mc0();
        List list = p04Var.c.b;
        return new i(p04Var, this.b, !list.isEmpty() ? new fx2(mc0Var, list) : mc0Var, this.a, this.d, this.c.a(p04Var), this.e, this.f);
    }

    @Override // yads.g14
    public final g14 a(sk0 sk0Var) {
        if (sk0Var != null) {
            this.c = sk0Var;
            return this;
        }
        o2.d("MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        return null;
    }
}
