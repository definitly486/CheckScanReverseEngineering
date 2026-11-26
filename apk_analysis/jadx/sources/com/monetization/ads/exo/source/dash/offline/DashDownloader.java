package com.monetization.ads.exo.source.dash.offline;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import yads.au4;
import yads.bw;
import yads.cw;
import yads.eb;
import yads.gz;
import yads.hi5;
import yads.ji5;
import yads.kc0;
import yads.lk2;
import yads.mc0;
import yads.ms;
import yads.ns;
import yads.o75;
import yads.p04;
import yads.qc0;
import yads.rc0;
import yads.sc0;
import yads.u56;
import yads.y35;

/* JADX INFO: loaded from: classes6.dex */
public final class DashDownloader extends ji5 {
    private final ns j;

    public DashDownloader(p04 p04Var, bw bwVar, Executor executor) {
        super(p04Var, new mc0(), bwVar, executor);
        this.j = new ns();
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00cd A[SYNTHETIC] */
    private void a(cw cwVar, eb ebVar, long j, long j2, boolean z, ArrayList arrayList) throws IOException {
        for (int i = 0; i < ebVar.c.size(); i++) {
            o75 o75Var = (o75) ebVar.c.get(i);
            try {
                int i2 = ebVar.b;
                qc0 qc0VarD = o75Var.d();
                if (qc0VarD == null) {
                    try {
                        gz gzVar = (gz) a(new a(cwVar, i2, o75Var), z);
                        qc0VarD = gzVar == null ? null : new sc0(gzVar, o75Var.c);
                    } catch (IOException e) {
                        e = e;
                        if (z) {
                            throw e;
                        }
                    }
                }
                if (qc0VarD != null) {
                    long jC = qc0VarD.c(j2);
                    if (jC == -1) {
                        throw new lk2("Unbounded segment index");
                    }
                    ms msVarB = this.j.b(o75Var.b);
                    int i3 = u56.a;
                    String str = msVarB.a;
                    y35 y35Var = o75Var.e;
                    if (y35Var != null) {
                        arrayList.add(new hi5(j, rc0.a(o75Var, str, y35Var, 0)));
                    }
                    y35 y35VarE = o75Var.e();
                    if (y35VarE != null) {
                        arrayList.add(new hi5(j, rc0.a(o75Var, str, y35VarE, 0)));
                    }
                    long jB = qc0VarD.b();
                    long j3 = (jB + jC) - 1;
                    for (long j4 = jB; j4 <= j3; j4++) {
                        arrayList.add(new hi5(qc0VarD.a(j4) + j, rc0.a(o75Var, str, qc0VarD.b(j4), 0)));
                    }
                } else {
                    try {
                        throw new lk2("Missing segment index");
                    } catch (IOException e2) {
                        e = e2;
                        if (z) {
                            throw e;
                        }
                    }
                }
            } catch (IOException e3) {
                e = e3;
            }
        }
    }

    @Override // yads.ji5
    public final ArrayList a(cw cwVar, kc0 kc0Var, boolean z) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < kc0Var.m.size(); i++) {
            au4 au4Var = (au4) kc0Var.m.get(i);
            long jA = u56.a(au4Var.b);
            long jA2 = u56.a(kc0Var.a(i));
            List list = au4Var.c;
            for (int i2 = 0; i2 < list.size(); i2++) {
                a(cwVar, (eb) list.get(i2), jA, jA2, z, arrayList);
            }
        }
        return arrayList;
    }
}
