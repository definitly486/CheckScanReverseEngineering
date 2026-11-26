package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class dx implements vw {
    public final cv a;
    public aq8 b;

    public dx(cv cvVar) {
        this.a = cvVar;
    }

    public static j3 j(g3 g3Var) {
        return new j3(g3Var.a(), g3Var.c(), g3Var.d(), g3Var.b(), g3Var.e(), null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.vw
    public final Object a(String str, am2 am2Var, String str2, f02 f02Var) {
        ax axVar;
        if (f02Var instanceof ax) {
            axVar = (ax) f02Var;
            int i = axVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                axVar.n = i - Integer.MIN_VALUE;
            } else {
                axVar = new ax(this, f02Var);
            }
        } else {
            axVar = new ax(this, f02Var);
        }
        Object objB = axVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = axVar.n;
        if (i2 == 0) {
            r57.b(objB);
            dx7 dx7Var = new dx7(str, am2Var, str2);
            axVar.n = 1;
            objB = this.a.b(dx7Var, axVar);
            if (objB == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objB);
        }
        a57 a57Var = (a57) objB;
        g3 g3Var = (g3) a57Var.b;
        j3 j3VarA = g3Var != null ? j3.a(j(g3Var), l1.e(a57Var)) : null;
        j3VarA.getClass();
        return j3VarA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.vw
    public final Object b(String str, String str2, f02 f02Var) {
        xw xwVar;
        if (f02Var instanceof xw) {
            xwVar = (xw) f02Var;
            int i = xwVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                xwVar.n = i - Integer.MIN_VALUE;
            } else {
                xwVar = new xw(this, f02Var);
            }
        } else {
            xwVar = new xw(this, f02Var);
        }
        Object objF = xwVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = xwVar.n;
        if (i2 == 0) {
            r57.b(objF);
            s8 s8Var = new s8(str, str2);
            xwVar.n = 1;
            objF = this.a.f(s8Var, xwVar);
            if (objF == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objF);
        }
        a57 a57Var = (a57) objF;
        T t = a57Var.b;
        z47 z47Var = a57Var.a;
        g3 g3Var = (g3) t;
        if (z47Var.o() && g3Var != null) {
            return new gw2.c(j3.a(j(g3Var), l1.e(a57Var)));
        }
        int i3 = z47Var.e;
        if (i3 == 409) {
            return gw2.b.a;
        }
        return i3 == 406 ? gw2.a.a : gw2.d.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.vw
    public final Object c(f02 f02Var) {
        yw ywVar;
        if (f02Var instanceof yw) {
            ywVar = (yw) f02Var;
            int i = ywVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                ywVar.n = i - Integer.MIN_VALUE;
            } else {
                ywVar = new yw(this, f02Var);
            }
        } else {
            ywVar = new yw(this, f02Var);
        }
        Object objE = ywVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = ywVar.n;
        if (i2 == 0) {
            r57.b(objE);
            ywVar.n = 1;
            objE = this.a.e(ywVar);
            if (objE == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objE);
        }
        aa9 aa9Var = (aa9) qn1.V((List) objE);
        if (aa9Var != null) {
            return new z99(aa9Var.a(), aa9Var.b());
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.vw
    public final Object d(String str, f02 f02Var) {
        ww wwVar;
        if (f02Var instanceof ww) {
            wwVar = (ww) f02Var;
            int i = wwVar.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                wwVar.o = i - Integer.MIN_VALUE;
            } else {
                wwVar = new ww(this, f02Var);
            }
        } else {
            wwVar = new ww(this, f02Var);
        }
        Object objD = wwVar.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = wwVar.o;
        if (i2 == 0) {
            r57.b(objD);
            hw2 hw2Var = new hw2(str);
            wwVar.l = str;
            wwVar.o = 1;
            objD = this.a.d(hw2Var, wwVar);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = wwVar.l;
            r57.b(objD);
        }
        a57 a57Var = (a57) objD;
        if (a57Var.a.o() && a57Var.b != 0) {
            return new fw2.a(str);
        }
        int i3 = a57Var.a.e;
        if (i3 == 409) {
            return fw2.c.a;
        }
        return i3 == 406 ? fw2.b.a : fw2.d.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.vw
    public final Object e(String str, boolean z, dw1 dw1Var, String str2, Boolean bool, f02 f02Var) {
        zw zwVar;
        if (f02Var instanceof zw) {
            zwVar = (zw) f02Var;
            int i = zwVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                zwVar.n = i - Integer.MIN_VALUE;
            } else {
                zwVar = new zw(this, f02Var);
            }
        } else {
            zwVar = new zw(this, f02Var);
        }
        Object objC = zwVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = zwVar.n;
        if (i2 == 0) {
            r57.b(objC);
            ex7 ex7Var = new ex7(str, z, dw1Var, str2, bool);
            zwVar.n = 1;
            objC = this.a.c(ex7Var, zwVar);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        a57 a57Var = (a57) objC;
        ex exVar = (ex) a57Var.b;
        if (exVar instanceof ex.b) {
            ex.b bVar = (ex.b) exVar;
            return new ev.c(bVar.a(), bVar.b());
        }
        boolean z2 = exVar instanceof ex.a;
        if (z2) {
            ex.a aVar = (ex.a) exVar;
            if (aVar.b() == dw1.SMS) {
                return new ev.e(aVar.c(), aVar.a());
            }
        }
        if (z2) {
            ex.a aVar2 = (ex.a) exVar;
            if (aVar2.b() == dw1.CALL) {
                return new ev.d(aVar2.c(), aVar2.a());
            }
        }
        if (z2) {
            ex.a aVar3 = (ex.a) exVar;
            if (aVar3.b() == dw1.EMAIL) {
                return new ev.b(aVar3.c(), aVar3.a());
            }
        }
        return a57Var.a.e == 404 ? ev.a.a : ev.f.a;
    }

    @Override // defpackage.vw
    public final Object f(r83 r83Var) {
        return this.a.a(r83Var);
    }

    @Override // defpackage.vw
    public final aq8 g() {
        return this.b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.vw
    public final Object h(String str, String str2, boolean z, String str3, Boolean bool, f02 f02Var) {
        bx bxVar;
        if (f02Var instanceof bx) {
            bxVar = (bx) f02Var;
            int i = bxVar.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                bxVar.n = i - Integer.MIN_VALUE;
            } else {
                bxVar = new bx(this, f02Var);
            }
        } else {
            bxVar = new bx(this, f02Var);
        }
        Object objG = bxVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = bxVar.n;
        if (i2 == 0) {
            r57.b(objG);
            sc9 sc9Var = new sc9(str, str2, z, str3, bool);
            bxVar.n = 1;
            objG = this.a.g(sc9Var, bxVar);
            if (objG == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objG);
        }
        a57 a57Var = (a57) objG;
        g3 g3Var = (g3) a57Var.b;
        j3 j3VarA = g3Var != null ? j3.a(j(g3Var), l1.e(a57Var)) : null;
        j3VarA.getClass();
        return j3VarA;
    }

    @Override // defpackage.vw
    public final void i(aq8 aq8Var) {
        this.b = aq8Var;
    }
}
