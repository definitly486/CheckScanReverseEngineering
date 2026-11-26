package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class hk0 {
    public final ez a;
    public final o75 b;
    public final ms c;
    public final qc0 d;
    public final long e;
    public final long f;

    public hk0(long j, o75 o75Var, ms msVar, ez ezVar, long j2, qc0 qc0Var) {
        this.e = j;
        this.b = o75Var;
        this.c = msVar;
        this.f = j2;
        this.a = ezVar;
        this.d = qc0Var;
    }

    public final hk0 a(long j, o75 o75Var) throws vs {
        long jA;
        long jA2;
        qc0 qc0VarD = this.b.d();
        qc0 qc0VarD2 = o75Var.d();
        if (qc0VarD == null) {
            return new hk0(j, o75Var, this.c, this.a, this.f, qc0VarD);
        }
        if (!qc0VarD.a()) {
            return new hk0(j, o75Var, this.c, this.a, this.f, qc0VarD2);
        }
        long jC = qc0VarD.c(j);
        if (jC == 0) {
            return new hk0(j, o75Var, this.c, this.a, this.f, qc0VarD2);
        }
        long jB = qc0VarD.b();
        long jA3 = qc0VarD.a(jB);
        long j2 = jC + jB;
        long j3 = j2 - 1;
        long jB2 = qc0VarD.b(j3, j) + qc0VarD.a(j3);
        long jB3 = qc0VarD2.b();
        long jA4 = qc0VarD2.a(jB3);
        long j4 = this.f;
        if (jB2 != jA4) {
            if (jB2 < jA4) {
                throw new vs();
            }
            if (jA4 < jA3) {
                jA2 = j4 - (qc0VarD2.a(jA3, j) - jB);
            } else {
                jA = qc0VarD.a(jA4, j) - jB3;
            }
            return new hk0(j, o75Var, this.c, this.a, jA2, qc0VarD2);
        }
        jA = j2 - jB3;
        jA2 = jA + j4;
        return new hk0(j, o75Var, this.c, this.a, jA2, qc0VarD2);
    }

    public final long a(long j) {
        return this.d.b(j - this.f, this.e) + this.d.a(j - this.f);
    }
}
