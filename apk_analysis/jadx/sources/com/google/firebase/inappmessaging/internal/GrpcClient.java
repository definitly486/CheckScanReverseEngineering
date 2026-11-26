package com.google.firebase.inappmessaging.internal;

import com.google.protobuf.j;
import defpackage.e73;
import defpackage.f73;
import defpackage.ns6;
import defpackage.ra5;
import defpackage.rl1;
import defpackage.ul1;
import defpackage.xc2;
import defpackage.y34;
import defpackage.y81;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class GrpcClient {
    private final y34.a stub;

    public GrpcClient(y34.a aVar) {
        this.stub = aVar;
    }

    public f73 fetchEligibleCampaigns(e73 e73Var) throws Throwable {
        y34.a aVar = this.stub;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        y81 y81Var = aVar.a;
        io.grpc.b bVar = aVar.b;
        Objects.requireNonNull(timeUnit, "units");
        xc2 xc2Var = new xc2(30000000000L);
        io.grpc.b.a aVarC = io.grpc.b.c(bVar);
        aVarC.a = xc2Var;
        io.grpc.b bVar2 = new io.grpc.b(aVarC);
        ra5<e73, f73> ra5Var = y34.a;
        if (ra5Var == null) {
            synchronized (y34.class) {
                try {
                    ra5Var = y34.a;
                    if (ra5Var == null) {
                        ra5.a aVar2 = ra5.a.UNARY;
                        e73 e73VarC = e73.c();
                        j jVar = ns6.a;
                        ra5<e73, f73> ra5Var2 = new ra5<>(aVar2, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing/FetchEligibleCampaigns", new ns6.a(e73VarC), new ns6.a(f73.b()));
                        y34.a = ra5Var2;
                        ra5Var = ra5Var2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Logger logger = ul1.a;
        ul1.d dVar = new ul1.d();
        io.grpc.b.a aVarC2 = io.grpc.b.c(bVar2.d(ul1.c, ul1.c.BLOCKING));
        aVarC2.b = dVar;
        rl1 rl1VarF = y81Var.f(ra5Var, new io.grpc.b(aVarC2));
        boolean z = false;
        try {
            try {
                ul1.a aVarB = ul1.b(rl1VarF, e73Var);
                while (!aVarB.isDone()) {
                    try {
                        dVar.a();
                    } catch (InterruptedException e) {
                        try {
                            rl1VarF.a("Thread interrupted", e);
                            z = true;
                        } catch (Error e2) {
                            e = e2;
                            ul1.a(rl1VarF, e);
                            throw null;
                        } catch (RuntimeException e3) {
                            e = e3;
                            ul1.a(rl1VarF, e);
                            throw null;
                        } catch (Throwable th2) {
                            th = th2;
                            z = true;
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                }
                dVar.shutdown();
                Object objC = ul1.c(aVarB);
                if (z) {
                    Thread.currentThread().interrupt();
                }
                return (f73) objC;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Error e4) {
            e = e4;
        } catch (RuntimeException e5) {
            e = e5;
        }
    }
}
