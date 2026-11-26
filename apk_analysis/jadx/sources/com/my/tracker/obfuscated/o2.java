package com.my.tracker.obfuscated;

import android.content.Context;
import com.my.tracker.MyTracker;
import com.my.tracker.MyTrackerConfig;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class o2 extends u1 {
    private final q c = new q(65536);

    private void a(v1 v1Var, boolean z, c3.a aVar, f3 f3Var, j0 j0Var, u2 u2Var) throws IOException {
        String str;
        String str2;
        Map map = aVar.k.e;
        if (z || map.isEmpty()) {
            str = null;
            str2 = null;
        } else {
            String str3 = (String) map.get("android_id");
            str2 = (String) map.get("mac");
            str = str3;
        }
        v1Var.a(1, MyTracker.VERSION);
        v1Var.a(2, aVar.a);
        v1Var.a(3, u2Var.c());
        u1.a(v1Var, j0Var.a, j0Var.c, this.a, this.b);
        u1.a(v1Var, z, f3Var, this.a);
        u1.a(v1Var, str, str2, j0Var, this.a, this.b);
        if (!z) {
            u1.a(v1Var, j0Var.f, j0Var.b, j0Var.c, this.a);
            u1.a(v1Var, j0Var.g, this.a);
        }
        a(v1Var, u2Var.b(), this.a);
        a(v1Var, u2Var.a(), u2Var.d(), this.a);
    }

    private static void a(v1 v1Var, i2 i2Var, i2[] i2VarArr, q qVar) throws IOException {
        if (i2Var != null) {
            qVar.a();
            qVar.a(1, i2Var.a());
            qVar.a(2, i2Var.b());
            qVar.a(3, i2Var.c());
            v1Var.a(39, qVar);
        }
        if (i2VarArr != null) {
            for (i2 i2Var2 : i2VarArr) {
                qVar.a();
                qVar.a(1, i2Var2.a());
                qVar.a(2, i2Var2.b());
                qVar.a(3, i2Var2.c());
                v1Var.a(39, qVar);
            }
        }
    }

    private static void a(v1 v1Var, y[] yVarArr, q qVar) throws IOException {
        if (yVarArr != null) {
            for (y yVar : yVarArr) {
                qVar.a();
                qVar.a(1, yVar.a());
                qVar.a(2, yVar.d());
                v1Var.a(38, qVar);
            }
        }
    }

    public synchronized byte[] a(boolean z, c3.a aVar, f3 f3Var, u2 u2Var, String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, Context context) {
        byte[] bArrC;
        if (context != null) {
            try {
                j0 j0VarA = k0.a().a(aVar.m, aVar.g, aVar.e, z, str, okHttpClientProvider, context);
                this.c.a();
                a(this.c, z, aVar, f3Var, j0VarA, u2Var);
                bArrC = this.c.c();
                this.c.d();
                a();
            } catch (Exception e) {
                b3.b("TimeSpentMessageBuilder: something went wrong while generating tick packet", e);
                throw new Exception(e);
            }
        } else {
            b3.b("TimeSpentMessageBuilder: context is empty");
            throw new Exception("TimeSpentMessageBuilder: context is empty");
        }
        return bArrC;
    }
}
