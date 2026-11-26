package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class d09 implements b09 {
    public final xy8 a;

    public d09(xy8 xy8Var) {
        this.a = xy8Var;
    }

    @Override // defpackage.b09
    public final mz7<gz8> a(ez8 ez8Var) {
        return this.a.a(ez8Var);
    }

    @Override // defpackage.b09
    public final mz7<yz8> b(wz8 wz8Var) {
        return this.a.b(wz8Var);
    }

    @Override // defpackage.b09
    public final mz7<tz8> c() {
        return this.a.c();
    }

    @Override // defpackage.b09
    public final Object d(wz8 wz8Var, uo7 uo7Var) {
        return this.a.e(wz8Var, uo7Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.b09
    public final Object e(f02 f02Var) {
        c09 c09Var;
        if (f02Var instanceof c09) {
            c09Var = (c09) f02Var;
            int i = c09Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                c09Var.n = i - Integer.MIN_VALUE;
            } else {
                c09Var = new c09(this, f02Var);
            }
        } else {
            c09Var = new c09(this, f02Var);
        }
        Object objD = c09Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c09Var.n;
        if (i2 == 0) {
            r57.b(objD);
            c09Var.n = 1;
            objD = this.a.d(c09Var);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
        }
        return ((i19) objD).a();
    }

    @Override // defpackage.b09
    public final mz7<bz8> f(long j) {
        return this.a.f(j);
    }
}
