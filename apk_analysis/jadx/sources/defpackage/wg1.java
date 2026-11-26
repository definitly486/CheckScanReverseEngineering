package defpackage;

import androidx.compose.runtime.ComposerKt;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class wg1 extends gh4 implements nl3<a57<iv6>, qq1> {
    public final /* synthetic */ nl3<Throwable, qp1> f;
    public final /* synthetic */ yg1 g;
    public final /* synthetic */ long h;
    public final /* synthetic */ hv6 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public wg1(nl3<? super Throwable, ? extends qp1> nl3Var, yg1 yg1Var, long j, hv6 hv6Var) {
        super(1);
        this.f = nl3Var;
        this.g = yg1Var;
        this.h = j;
        this.i = hv6Var;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x004f  */
    /* JADX WARN: Code duplicated, block: B:20:0x005b  */
    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    @Override // defpackage.nl3
    public final qq1 invoke(a57<iv6> a57Var) {
        a57<iv6> a57Var2 = a57Var;
        a57Var2.getClass();
        z47 z47Var = a57Var2.a;
        int i = z47Var.e;
        if (i == 900) {
            return this.f.invoke(new IOException(z47Var.d));
        }
        iv6 iv6Var = a57Var2.b;
        yg1 yg1Var = this.g;
        if (i == 400) {
            kd.g.a.c.e.a();
        } else if (i != 510) {
            switch (i) {
                case 200:
                    if (iv6Var != null ? aa4.e(iv6Var.a(), Boolean.FALSE) : false) {
                        yg1Var.d();
                    }
                    break;
                case ComposerKt.providerKey /* 201 */:
                    if (iv6Var != null ? aa4.e(iv6Var.a(), Boolean.FALSE) : false) {
                        yg1Var.d();
                    }
                    yg1Var.f.b().onNext(j59.a);
                    break;
                case ComposerKt.compositionLocalMapKey /* 202 */:
                    kd.g.a.c.e.a();
                    break;
            }
        } else if (iv6Var != null ? aa4.e(iv6Var.a(), Boolean.FALSE) : false) {
            yg1Var.d();
        }
        return yg1Var.f(this.h, this.i, a57Var2);
    }
}
