package yads;

import androidx.media3.common.C;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class m75 extends o75 implements qc0 {
    public final zh5 f;

    public m75(vz2 vz2Var, oe3 oe3Var, zh5 zh5Var, ArrayList arrayList) {
        super(vz2Var, oe3Var, zh5Var, arrayList);
        this.f = zh5Var;
    }

    @Override // yads.qc0
    public final long a(long j, long j2) {
        return this.f.c(j, j2);
    }

    @Override // yads.qc0
    public final y35 b(long j) {
        return this.f.a(this, j);
    }

    @Override // yads.qc0
    public final long c(long j, long j2) {
        return this.f.a(j, j2);
    }

    @Override // yads.qc0
    public final long d(long j, long j2) {
        zh5 zh5Var = this.f;
        if (zh5Var.f != null) {
            return C.TIME_UNSET;
        }
        long jA = zh5Var.a(j, j2);
        long jA2 = zh5Var.a(j);
        if (jA2 == -1) {
            jA2 = (int) (zh5Var.c((j2 - zh5Var.h) + zh5Var.i, j) - zh5Var.a(j, j2));
        }
        long j3 = jA2 + jA;
        return (zh5Var.b(j3, j) + zh5Var.b(j3)) - zh5Var.i;
    }

    @Override // yads.qc0
    public final long e(long j, long j2) {
        zh5 zh5Var = this.f;
        long jA = zh5Var.a(j);
        return jA != -1 ? jA : (int) (zh5Var.c((j2 - zh5Var.h) + zh5Var.i, j) - zh5Var.a(j, j2));
    }

    @Override // yads.qc0
    public final long a(long j) {
        return this.f.b(j);
    }

    @Override // yads.qc0
    public final long b(long j, long j2) {
        return this.f.b(j, j2);
    }

    @Override // yads.o75
    public final String c() {
        return null;
    }

    @Override // yads.qc0
    public final boolean a() {
        return this.f.a();
    }

    @Override // yads.qc0
    public final long b() {
        return this.f.d;
    }

    @Override // yads.qc0
    public final long c(long j) {
        return this.f.a(j);
    }

    @Override // yads.o75
    public final y35 e() {
        return null;
    }

    @Override // yads.o75
    public final qc0 d() {
        return this;
    }
}
