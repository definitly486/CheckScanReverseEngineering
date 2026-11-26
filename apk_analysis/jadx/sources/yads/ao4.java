package yads;

import android.content.Context;
import defpackage.r57;
import defpackage.yv8;
import java.util.concurrent.CancellationException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ao4 {
    public final g64 a;

    public ao4(l34 l34Var) {
        this.a = new g64(l34Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(ao4 ao4Var, Context context, sl5 sl5Var, x54 x54Var, defpackage.f02 f02Var) {
        vn4 vn4Var;
        ao4Var.getClass();
        if (f02Var instanceof vn4) {
            vn4Var = (vn4) f02Var;
            int i = vn4Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                vn4Var.d = i - Integer.MIN_VALUE;
            } else {
                vn4Var = new vn4(ao4Var, f02Var);
            }
        } else {
            vn4Var = new vn4(ao4Var, f02Var);
        }
        Object objC = vn4Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = vn4Var.d;
        try {
            if (i2 == 0) {
                r57.b(objC);
                wn4 wn4Var = new wn4(ao4Var, context, sl5Var, x54Var, null);
                vn4Var.d = 1;
                objC = yv8.c(1000L, wn4Var, vn4Var);
                if (objC == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(objC);
            }
            return (JSONObject) objC;
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(int i, int i2) {
    }
}
