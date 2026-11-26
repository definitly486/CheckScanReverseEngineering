package yads;

import android.content.Context;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class e34 {
    public final l34 a;
    public final p74 b;

    public e34(l34 l34Var) {
        p74 p74Var = new p74();
        this.a = l34Var;
        this.b = p74Var;
    }

    public final com.monetization.ads.mediation.base.a a(Context context, x54 x54Var, Class cls) {
        com.monetization.ads.mediation.base.a aVar = null;
        try {
            String str = x54Var.b;
            this.b.getClass();
            if (p74.a.contains(str) && !yt2.a(context, xt2.TESTING_NEW_ADAPTER)) {
                return null;
            }
            Object objA = f55.a(str, new Object[0]);
            com.monetization.ads.mediation.base.a aVar2 = (com.monetization.ads.mediation.base.a) cls.cast(objA);
            if (aVar2 == null) {
                try {
                    a(context, x54Var, objA == null ? String.format("Instantiation failed for %s", Arrays.copyOf(new Object[]{str}, 1)) : String.format("Cast from %s to %s is failed", Arrays.copyOf(new Object[]{objA.getClass().getName(), cls.getName()}, 2)));
                } catch (ClassCastException e) {
                    e = e;
                    aVar = aVar2;
                    a(context, x54Var, "does_not_conform_to_protocol", e);
                    return aVar;
                } catch (Throwable th) {
                    th = th;
                    aVar = aVar2;
                    a(context, x54Var, "could_not_create_adapter", th);
                    return aVar;
                }
            }
            return aVar2;
        } catch (ClassCastException e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void a(Context context, x54 x54Var, String str) {
        Map mapE = defpackage.n05.e(new defpackage.b36("reason", "could_not_create_adapter"), new defpackage.b36("description", str));
        l34 l34Var = this.a;
        l34Var.getClass();
        l34Var.a(context, e75.ADAPTER_INVALID, x54Var, null, mapE);
    }

    public final void a(Context context, x54 x54Var, String str, Throwable th) {
        LinkedHashMap linkedHashMapF = defpackage.n05.f(new defpackage.b36("reason", str));
        String message = th.getMessage();
        if (message == null) {
            message = "Unknown error message";
        }
        linkedHashMapF.put("description", th.getClass().getName() + " " + message);
        this.a.a(context, x54Var, linkedHashMapF);
    }
}
