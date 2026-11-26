package defpackage;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.tapjoy.TJAdUnitConstants;
import okhttp3.OkHttpClient;
import okhttp3.b;

/* JADX INFO: loaded from: classes5.dex */
public final class ma7 implements ka7 {
    public final Gson a;
    public final b37 b;
    public final OkHttpClient c;
    public ry6 e;
    public final zs7 d = bt7.b(0, 64, null, 4);
    public final a f = new a();

    public static final class a extends y14 {
        public a() {
        }

        @Override // defpackage.y14
        public final void F(ry6 ry6Var) {
            Log.i("SSERepository", "onClosed");
            ka7.a aVar = new ka7.a(null);
            ma7 ma7Var = ma7.this;
            ma7Var.d.e(aVar);
            ma7Var.b();
        }

        @Override // defpackage.y14
        public final void G(ry6 ry6Var, String str) {
            Log.i("SSERepository", "onEvent: ".concat(str));
            ma7 ma7Var = ma7.this;
            try {
                ma7Var.d.e(new ka7.a((y97) ma7Var.a.f(str, new x39(new la7().b))));
            } catch (Throwable unused) {
            }
        }

        @Override // defpackage.y14
        public final void H(ry6 ry6Var, Exception exc) {
            Log.e("SSERepository", "onFailure", exc);
            ma7.this.d.e(new ka7.a(null));
        }

        @Override // defpackage.y14
        public final void I(ry6 ry6Var, z47 z47Var) {
            Log.i("SSERepository", TJAdUnitConstants.String.ANIMATION_EVENT_ON_OPEN);
            ma7.this.d.e(new ka7.a(null));
        }
    }

    public ma7(Gson gson, b37 b37Var, OkHttpClient okHttpClient) {
        this.a = gson;
        this.b = b37Var;
        this.c = okHttpClient;
    }

    @Override // defpackage.ka7
    public final void a() {
        if (this.e == null) {
            b();
        }
    }

    @Override // defpackage.ka7
    public final void b() {
        ry6 ry6Var = this.e;
        if (ry6Var != null) {
            jy6 jy6Var = ry6Var.b;
            if (jy6Var == null) {
                aa4.j(NotificationCompat.CATEGORY_CALL);
                throw null;
            }
            jy6Var.cancel();
        }
        a aVar = this.f;
        aVar.getClass();
        b37 b37VarA = this.b;
        if (b37VarA.c.a("Accept") == null) {
            b37.a aVarA = b37VarA.a();
            aVarA.c.a("Accept", "text/event-stream");
            b37VarA = aVarA.a();
        }
        ry6 ry6Var2 = new ry6(b37VarA, aVar);
        OkHttpClient.a aVarE = this.c.e();
        b bVar = b.NONE;
        bVar.getClass();
        byte[] bArr = gb9.a;
        aVarE.e = new y52(bVar);
        jy6 jy6Var2 = new jy6(new OkHttpClient(aVarE), b37VarA);
        ry6Var2.b = jy6Var2;
        jy6Var2.a(ry6Var2);
        this.e = ry6Var2;
    }

    @Override // defpackage.ka7
    public final fy6 c() {
        return bf3.a(this.d);
    }
}
