package com.monetization.ads.exo.source.dash.offline;

import androidx.media3.common.MimeTypes;
import yads.cw;
import yads.f03;
import yads.lg3;
import yads.ms;
import yads.mx3;
import yads.nv;
import yads.o75;
import yads.rb5;
import yads.rc0;
import yads.vz2;
import yads.y35;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends rb5 {
    public final /* synthetic */ cw i;
    public final /* synthetic */ int j;
    public final /* synthetic */ o75 k;

    public a(cw cwVar, int i, o75 o75Var) {
        this.i = cwVar;
        this.j = i;
        this.k = o75Var;
    }

    @Override // yads.rb5
    public final Object b() {
        cw cwVar = this.i;
        int i = this.j;
        o75 o75Var = this.k;
        if (o75Var.e == null) {
            return null;
        }
        vz2 vz2Var = o75Var.a;
        String str = vz2Var.l;
        nv nvVar = new nv((str == null || !(str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM))) ? new f03() : new mx3(0), i, vz2Var);
        try {
            y35 y35Var = o75Var.e;
            y35Var.getClass();
            y35 y35VarE = o75Var.e();
            if (y35VarE != null) {
                y35 y35VarA = y35Var.a(y35VarE, ((ms) o75Var.b.get(0)).a);
                if (y35VarA == null) {
                    new lg3(cwVar, rc0.a(o75Var, ((ms) o75Var.b.get(0)).a, y35Var, 0), o75Var.a, 0, null, nvVar).a();
                } else {
                    y35VarE = y35VarA;
                }
                new lg3(cwVar, rc0.a(o75Var, ((ms) o75Var.b.get(0)).a, y35VarE, 0), o75Var.a, 0, null, nvVar).a();
            }
            return nvVar.b();
        } finally {
            nvVar.c();
        }
    }
}
