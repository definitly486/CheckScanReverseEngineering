package yads;

import android.net.Uri;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ov {
    public final bt2 a;
    public ws2 b;
    public wk0 c;

    public ov(bt2 bt2Var) {
        this.a = bt2Var;
    }

    public final void a(wc0 wc0Var, Uri uri, Map map, long j, long j2, v15 v15Var) throws j46 {
        ws2 ws2Var;
        wk0 wk0Var = new wk0(wc0Var, j, j2);
        this.c = wk0Var;
        if (this.b != null) {
            return;
        }
        ws2[] ws2VarArrA = this.a.a(uri, map);
        if (ws2VarArrA.length == 1) {
            ws2Var = ws2VarArrA[0];
            this.b = ws2Var;
        } else {
            for (ws2 ws2Var2 : ws2VarArrA) {
                try {
                    if (ws2Var2.a(wk0Var)) {
                        this.b = ws2Var2;
                        wk0Var.f = 0;
                        break;
                    } else if (this.b == null && wk0Var.d != j) {
                        defpackage.ud.g();
                        return;
                    }
                } catch (EOFException unused) {
                    if (this.b != null) {
                        continue;
                    } else if (wk0Var.d != j) {
                        defpackage.ud.g();
                        return;
                    }
                } catch (Throwable th) {
                    if (this.b != null || wk0Var.d == j) {
                        wk0Var.f = 0;
                        throw th;
                    }
                    defpackage.ud.g();
                    return;
                }
                wk0Var.f = 0;
            }
            ws2 ws2Var3 = this.b;
            if (ws2Var3 == null) {
                StringBuilder sb = new StringBuilder("None of the available extractors (");
                int i = u56.a;
                StringBuilder sb2 = new StringBuilder();
                for (int i2 = 0; i2 < ws2VarArrA.length; i2++) {
                    sb2.append(ws2VarArrA[i2].getClass().getSimpleName());
                    if (i2 < ws2VarArrA.length - 1) {
                        sb2.append(", ");
                    }
                }
                sb.append(sb2.toString());
                sb.append(") could read the stream.");
                String string = sb.toString();
                uri.getClass();
                throw new j46(string);
            }
            ws2Var = ws2Var3;
        }
        ws2Var.a(v15Var);
    }
}
