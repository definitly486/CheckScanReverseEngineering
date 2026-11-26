package com.monetization.ads.exo.source.dash;

import android.net.Uri;
import androidx.media3.common.C;
import java.io.IOException;
import yads.cu3;
import yads.jt4;
import yads.k14;
import yads.ku3;
import yads.lu3;
import yads.nu3;
import yads.r04;
import yads.ru3;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements ku3 {
    public final /* synthetic */ i b;

    public g(i iVar) {
        this.b = iVar;
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2) {
        jt4 jt4Var = (jt4) nu3Var;
        i iVar = this.b;
        iVar.getClass();
        long j3 = jt4Var.a;
        Uri uri = jt4Var.d.c;
        cu3 cu3Var = new cu3();
        iVar.n.getClass();
        k14 k14Var = iVar.q;
        k14Var.b(cu3Var, new r04(jt4Var.c, -1, null, 0, null, k14Var.a(C.TIME_UNSET), k14Var.a(C.TIME_UNSET)));
        iVar.L = ((Long) jt4Var.f).longValue() - j;
        iVar.a(true);
    }

    @Override // yads.ku3
    public final void a(nu3 nu3Var, long j, long j2, boolean z) {
        jt4 jt4Var = (jt4) nu3Var;
        i iVar = this.b;
        iVar.getClass();
        long j3 = jt4Var.a;
        Uri uri = jt4Var.d.c;
        cu3 cu3Var = new cu3();
        iVar.n.getClass();
        k14 k14Var = iVar.q;
        k14Var.a(cu3Var, new r04(jt4Var.c, -1, null, 0, null, k14Var.a(C.TIME_UNSET), k14Var.a(C.TIME_UNSET)));
    }

    @Override // yads.ku3
    public final lu3 a(nu3 nu3Var, long j, long j2, IOException iOException, int i) {
        jt4 jt4Var = (jt4) nu3Var;
        i iVar = this.b;
        k14 k14Var = iVar.q;
        long j3 = jt4Var.a;
        Uri uri = jt4Var.d.c;
        k14Var.a(new cu3(), new r04(jt4Var.c, -1, null, 0, null, k14Var.a(C.TIME_UNSET), k14Var.a(C.TIME_UNSET)), iOException, true);
        iVar.n.getClass();
        iVar.a(iOException);
        return ru3.d;
    }
}
