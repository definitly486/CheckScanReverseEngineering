package defpackage;

import java.io.File;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class f6 implements k5 {
    public final uo1 a;
    public final f3 b;
    public final z68 c;

    public f6(uo1 uo1Var, f3 f3Var, jf6 jf6Var) {
        this.a = uo1Var;
        this.b = f3Var;
        this.c = px.a(jf6Var.L());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.k5
    public final Object a(String str, String str2, f02 f02Var) {
        t5 t5Var;
        if (f02Var instanceof t5) {
            t5Var = (t5) f02Var;
            int i = t5Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                t5Var.n = i - Integer.MIN_VALUE;
            } else {
                t5Var = new t5(this, f02Var);
            }
        } else {
            t5Var = new t5(this, f02Var);
        }
        Object objC = t5Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = t5Var.n;
        if (i2 == 0) {
            r57.b(objC);
            l6 l6Var = new l6(str, str2);
            t5Var.n = 1;
            objC = this.b.c(l6Var, t5Var);
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
        p6 p6Var = (p6) objC;
        if (p6Var.b() != null) {
            return new q6(p6Var.b().a(), u96.h(new xp6(String.valueOf(p6Var.b().c() / 100))), p6Var.b().g(), p6Var.b().e(), p6Var.b().f(), new q6.a(p6Var.b().b().a(), p6Var.b().b().b()), p6Var.b().d() != null ? new q6.a(p6Var.b().d().a(), p6Var.b().d().b()) : null);
        }
        if (p6Var.a() != null) {
            return new m6(p6Var.a().c(), p6Var.a().b(), p6Var.a().a().a());
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.k5
    public final Enum b(String str, File file, f02 f02Var) {
        c6 c6Var;
        if (f02Var instanceof c6) {
            c6Var = (c6) f02Var;
            int i = c6Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                c6Var.n = i - Integer.MIN_VALUE;
            } else {
                c6Var = new c6(this, f02Var);
            }
        } else {
            c6Var = new c6(this, f02Var);
        }
        Object objB = c6Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c6Var.n;
        if (i2 == 0) {
            r57.b(objB);
            String name = file.getName();
            Pattern pattern = j95.e;
            lg5.c cVarA = lg5.c.a.a(str, name, new d37(j95.a.a("image/*"), file));
            c6Var.n = 1;
            objB = this.b.b(cVarA, c6Var);
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
        int i3 = ((a57) objB).a.e;
        if (200 <= i3 && i3 < 300) {
            return lz.NewAvatarSent;
        }
        if (i3 == 413 || i3 == 400) {
            return lz.LargeFile;
        }
        return (500 > i3 || i3 >= 600) ? lz.Error : lz.BackendError;
    }

    @Override // defpackage.k5
    public final Object c(b89 b89Var) {
        return this.a.c(b89Var);
    }

    @Override // defpackage.k5
    public final Object d(f02 f02Var) {
        return this.a.b(f02Var);
    }

    @Override // defpackage.k5
    public final gy6 e() {
        return bf3.b(this.c);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.k5
    public final Object f(f02 f02Var) {
        y5 y5Var;
        if (f02Var instanceof y5) {
            y5Var = (y5) f02Var;
            int i = y5Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                y5Var.n = i - Integer.MIN_VALUE;
            } else {
                y5Var = new y5(this, f02Var);
            }
        } else {
            y5Var = new y5(this, f02Var);
        }
        Object objA = y5Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = y5Var.n;
        if (i2 == 0) {
            r57.b(objA);
            y5Var.n = 1;
            objA = this.b.a(y5Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        return ra8.y(ra8.y(ra8.y((String) objA, "<body>", ""), "</body>", ""), "\n", "");
    }

    @Override // defpackage.k5
    public final void setAvatar(String str) {
        z68 z68Var;
        Object value;
        do {
            z68Var = this.c;
            value = z68Var.getValue();
        } while (!z68Var.a(value, str));
    }
}
