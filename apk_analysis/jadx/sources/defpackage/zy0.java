package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class zy0 implements ty0 {
    public final /* synthetic */ c31 a;

    public static final class a implements dm3<Throwable, z47, o22, j59> {
        public static final a b = new a();

        @Override // defpackage.dm3
        public final j59 invoke(Throwable th, z47 z47Var, o22 o22Var) {
            try {
                eg.c(z47Var);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
            return j59.a;
        }
    }

    public zy0(c31 c31Var) {
        this.a = c31Var;
    }

    @Override // defpackage.ty0
    public final void onFailure(okhttp3.a aVar, IOException iOException) {
        this.a.resumeWith(r57.a(iOException));
    }

    @Override // defpackage.ty0
    public final void onResponse(okhttp3.a aVar, z47 z47Var) {
        this.a.q(z47Var, a.b);
    }
}
