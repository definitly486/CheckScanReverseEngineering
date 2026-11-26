package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class yp4 implements d96, defpackage.mm3 {
    public final /* synthetic */ zp4 a;

    public yp4(zp4 zp4Var) {
        this.a = zp4Var;
    }

    @Override // yads.d96
    public final void a() {
        zp4 zp4Var = this.a;
        synchronized (zp4Var.a) {
            zp4Var.f = true;
            j59 j59Var = j59.a;
        }
        zp4Var.c();
        zp4Var.d.b();
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof d96) && (obj instanceof defpackage.mm3)) {
            return defpackage.aa4.e(getFunctionDelegate(), ((defpackage.mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final defpackage.cm3 getFunctionDelegate() {
        return new defpackage.qm3(0, this.a, zp4.class, "onOmSdkJsControllerLoaded", "onOmSdkJsControllerLoaded()V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }
}
