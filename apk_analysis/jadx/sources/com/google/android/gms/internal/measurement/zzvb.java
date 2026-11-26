package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.en3;
import defpackage.jn2;
import defpackage.ks;
import defpackage.nd5;
import defpackage.p;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzvb extends zztf {
    public final zzafc a;

    public zzvb(zzafc zzafcVar) {
        this.a = zzafcVar;
    }

    @Override // com.google.android.gms.internal.measurement.zztf
    public final ListenableFuture zza(final IOException iOException, zztg zztgVar) {
        if (!(iOException.getCause() instanceof zzaeh)) {
            return en3.W(iOException);
        }
        ListenableFuture listenableFutureZza = zztgVar.zza(en3.X(this.a));
        ks ksVar = new ks() { // from class: sfc
            @Override // defpackage.ks
            public final /* synthetic */ ListenableFuture apply(Object obj) throws IOException {
                IOException iOException2 = iOException;
                iOException2.addSuppressed((IOException) obj);
                throw iOException2;
            }
        };
        jn2 jn2Var = jn2.INSTANCE;
        int i = p.m;
        p.a aVar = new p.a(listenableFutureZza, IOException.class, ksVar);
        listenableFutureZza.addListener(aVar, nd5.a(jn2Var, aVar));
        return aVar;
    }
}
