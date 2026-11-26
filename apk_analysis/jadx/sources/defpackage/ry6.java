package defpackage;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import okhttp3.a;

/* JADX INFO: loaded from: classes5.dex */
public final class ry6 implements ty0 {
    public final y14 a;
    public jy6 b;

    public ry6(b37 b37Var, y14 y14Var) {
        y14Var.getClass();
        this.a = y14Var;
    }

    @Override // defpackage.ty0
    public final void onFailure(a aVar, IOException iOException) {
        aVar.getClass();
        iOException.getClass();
        this.a.H(this, iOException);
    }

    @Override // defpackage.ty0
    public final void onResponse(a aVar, z47 z47Var) {
        aVar.getClass();
        z47Var.getClass();
        try {
            boolean zO = z47Var.o();
            y14 y14Var = this.a;
            if (!zO) {
                y14Var.H(this, null);
                z47Var.close();
                return;
            }
            b57 b57Var = z47Var.h;
            b57Var.getClass();
            j95 j95VarP = b57Var.p();
            if (j95VarP != null && j95VarP.b.equals("text") && j95VarP.c.equals("event-stream")) {
                jy6 jy6Var = this.b;
                if (jy6Var == null) {
                    aa4.j(NotificationCompat.CATEGORY_CALL);
                    throw null;
                }
                if (jy6Var.k) {
                    throw new IllegalStateException("Check failed.");
                }
                jy6Var.k = true;
                jy6Var.f.i();
                z47.a aVarP = z47Var.p();
                aVarP.g = gb9.c;
                z47 z47VarA = aVarP.a();
                qq7 qq7Var = new qq7(b57Var.L(), this);
                try {
                    y14Var.I(this, z47VarA);
                    do {
                    } while (qq7Var.a());
                    y14Var.F(this);
                    j59 j59Var = j59.a;
                    z47Var.close();
                    return;
                } catch (Exception e) {
                    y14Var.H(this, e);
                    z47Var.close();
                    return;
                }
            }
            y14Var.H(this, new IllegalStateException("Invalid content-type: " + b57Var.p()));
            z47Var.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(z47Var, th);
                throw th2;
            }
        }
    }
}
