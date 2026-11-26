package defpackage;

import java.io.Serializable;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class he3 {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Serializable a(hd3 hd3Var, id3 id3Var, f02 f02Var) {
        ee3 ee3Var;
        r07 r07Var;
        mb4 mb4Var;
        CancellationException cancellationExceptionY;
        if (f02Var instanceof ee3) {
            ee3Var = (ee3) f02Var;
            int i = ee3Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                ee3Var.n = i - Integer.MIN_VALUE;
            } else {
                ee3Var = new ee3(f02Var);
            }
        } else {
            ee3Var = new ee3(f02Var);
        }
        Object obj = ee3Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = ee3Var.n;
        if (i2 == 0) {
            r57.b(obj);
            r07 r07Var2 = new r07();
            try {
                fe3 fe3Var = new fe3(id3Var, r07Var2);
                ee3Var.l = r07Var2;
                ee3Var.n = 1;
                if (hd3Var.collect(fe3Var, ee3Var) == a32Var) {
                    return a32Var;
                }
                return null;
            } catch (Throwable th) {
                th = th;
                r07Var = r07Var2;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var = ee3Var.l;
            try {
                r57.b(obj);
                return null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Throwable th3 = (Throwable) r07Var.b;
        if ((th3 != null && th3.equals(th)) || ((mb4Var = (mb4) ee3Var.getContext().get(mb4.a.b)) != null && mb4Var.isCancelled() && (cancellationExceptionY = mb4Var.y()) != null && cancellationExceptionY.equals(th))) {
            throw th;
        }
        if (th3 == null) {
            return th;
        }
        if (th instanceof CancellationException) {
            sj0.c(th3, th);
            throw th3;
        }
        sj0.c(th, th3);
        throw th;
    }
}
