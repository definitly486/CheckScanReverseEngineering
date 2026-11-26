package yads;

import android.content.Context;
import defpackage.fh8;
import defpackage.k57;
import defpackage.ll3;
import defpackage.r57;
import defpackage.zya;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.ReporterConfig;
import java.util.List;
import java.util.concurrent.CancellationException;
import yads.vg;

/* JADX INFO: loaded from: classes6.dex */
public final class vg {
    public final lg a;
    public final ej0 b;

    public vg(Context context) {
        this.a = new lg(context);
        this.b = new ej0(context);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) throws Throwable {
        sg sgVar;
        if (f02Var instanceof sg) {
            sgVar = (sg) f02Var;
            int i = sgVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                sgVar.d = i - Integer.MIN_VALUE;
            } else {
                sgVar = new sg(this, f02Var);
            }
        } else {
            sgVar = new sg(this, f02Var);
        }
        Object objS = sgVar.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = sgVar.d;
        if (i2 == 0) {
            r57.b(objS);
            sgVar.d = 1;
            defpackage.c31 c31Var = new defpackage.c31(1, zya.b(sgVar));
            c31Var.u();
            tg tgVar = new tg(c31Var);
            ej0 ej0Var = this.b;
            List list = yg.a;
            AppMetrica.requestStartupParams(ej0Var.a, new dj0(list, new xg(tgVar)), list);
            objS = c31Var.s();
            if (objS == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objS);
        }
        return ((k57) objS).b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(defpackage.f02 f02Var) {
        ug ugVar;
        if (f02Var instanceof ug) {
            ugVar = (ug) f02Var;
            int i = ugVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ugVar.d = i - Integer.MIN_VALUE;
            } else {
                ugVar = new ug(this, f02Var);
            }
        } else {
            ugVar = new ug(this, f02Var);
        }
        Object obj = ugVar.b;
        Object obj2 = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = ugVar.d;
        try {
            if (i2 == 0) {
                r57.b(obj);
                ugVar.d = 1;
                Object objA = a(ugVar);
                return objA == obj2 ? obj2 : objA;
            }
            if (i2 == 1) {
                r57.b(obj);
                return ((k57) obj).b;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        } catch (CancellationException e) {
            throw e;
        } catch (rg e2) {
            return new k57.a(e2);
        } catch (Throwable unused) {
            return new k57.a(new rg(qg.UNKNOWN));
        }
    }

    public final wg a(final Context context, final String str, final lm6 lm6Var) {
        try {
            if (this.a.a()) {
                return new wg(new fh8(new ll3() { // from class: kfa
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return vg.a(lm6Var, context, this, str);
                    }
                }), this.a);
            }
            this.b.getClass();
            AppMetrica.setDataSendingEnabled(false);
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final gj0 a(lm6 lm6Var, Context context, vg vgVar, String str) {
        lm6Var.a.a(context);
        if (vgVar.a.a()) {
            try {
                ej0 ej0Var = vgVar.b;
                ej0Var.getClass();
                AppMetrica.activateReporter(ej0Var.a, ReporterConfig.newConfigBuilder(str).build());
            } catch (Throwable unused) {
            }
        }
        return new gj0(AppMetrica.getReporter(vgVar.b.a, str));
    }
}
