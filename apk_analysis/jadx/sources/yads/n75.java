package yads;

import android.net.Uri;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class n75 extends o75 {
    public final y35 f;
    public final ll5 g;

    public n75(vz2 vz2Var, oe3 oe3Var, di5 di5Var, ArrayList arrayList) {
        super(vz2Var, oe3Var, di5Var, arrayList);
        Uri.parse(((ms) oe3Var.get(0)).a);
        long j = di5Var.e;
        y35 y35Var = j <= 0 ? null : new y35(null, di5Var.d, j);
        this.f = y35Var;
        this.g = y35Var == null ? new ll5(new y35(null, 0L, -1L)) : null;
    }

    @Override // yads.o75
    public final String c() {
        return null;
    }

    @Override // yads.o75
    public final qc0 d() {
        return this.g;
    }

    @Override // yads.o75
    public final y35 e() {
        return this.f;
    }
}
