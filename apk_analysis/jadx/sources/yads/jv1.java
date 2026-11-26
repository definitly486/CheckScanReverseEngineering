package yads;

import android.graphics.drawable.ColorDrawable;
import defpackage.bu6;
import defpackage.j59;
import defpackage.nl3;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import yads.hd3;
import yads.jv1;

/* JADX INFO: loaded from: classes6.dex */
public final class jv1 {
    public final qq0 a;
    public final ExecutorService b;

    public jv1(qq0 qq0Var, ExecutorService executorService) {
        this.a = qq0Var;
        this.b = executorService;
    }

    public final void a(iu3 iu3Var, final ao2 ao2Var, String str, int i, boolean z, nl3 nl3Var, final nl3 nl3Var2) {
        final jv1 jv1Var;
        final int i2;
        final nl3 nl3Var3;
        j59 j59Var;
        if (str != null) {
            jv1Var = this;
            i2 = i;
            nl3Var3 = nl3Var;
            jv1Var.a(str, iu3Var, z, new nl3() { // from class: b0a
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return jv1.a(ao2Var, nl3Var3, jv1Var, i2, nl3Var2, (hd3) obj);
                }
            });
            j59Var = j59.a;
        } else {
            jv1Var = this;
            i2 = i;
            nl3Var3 = nl3Var;
            j59Var = null;
        }
        if (j59Var == null) {
            ((defpackage.bg) jv1Var.a).getClass();
            nl3Var3.invoke(new ColorDrawable(i2));
        }
    }

    public static final j59 a(ao2 ao2Var, nl3 nl3Var, jv1 jv1Var, int i, nl3 nl3Var2, hd3 hd3Var) {
        if (hd3Var == null) {
            ao2Var.d.add(new Throwable("Preview doesn't contain base64 image"));
            ao2Var.a();
            ((defpackage.bg) jv1Var.a).getClass();
            nl3Var.invoke(new ColorDrawable(i));
        } else {
            nl3Var2.invoke(hd3Var);
        }
        return j59.a;
    }

    public final void a(String str, iu3 iu3Var, boolean z, nl3 nl3Var) {
        Future<?> futureSubmit;
        Future futureJ = iu3Var.j();
        if (futureJ != null) {
            futureJ.cancel(true);
        }
        hi0 hi0Var = new hi0(str, z, new bu6(1, nl3Var, iu3Var));
        if (z) {
            hi0Var.run();
            futureSubmit = null;
        } else {
            futureSubmit = this.b.submit(hi0Var);
        }
        if (futureSubmit != null) {
            iu3Var.a(futureSubmit);
        }
    }

    public static final j59 a(nl3 nl3Var, fu3 fu3Var, hd3 hd3Var) {
        nl3Var.invoke(hd3Var);
        ((iu3) fu3Var).h();
        return j59.a;
    }
}
