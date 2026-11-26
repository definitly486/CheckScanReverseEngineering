package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public /* synthetic */ class zya implements OnFailureListener, rxa {
    public static final /* synthetic */ zya b = new zya();
    public static final /* synthetic */ zya c = new zya();

    /* JADX WARN: Multi-variable type inference failed */
    public static e02 a(e02 e02Var, e02 e02Var2, bm3 bm3Var) {
        bm3Var.getClass();
        if (bm3Var instanceof cd0) {
            return ((cd0) bm3Var).create(e02Var, e02Var2);
        }
        o22 context = e02Var2.getContext();
        return context == gx2.b ? new ba4(e02Var2, e02Var, bm3Var) : new ca4(e02Var2, context, bm3Var, e02Var);
    }

    public static e02 b(e02 e02Var) {
        e02<Object> e02VarIntercepted;
        e02Var.getClass();
        f02 f02Var = e02Var instanceof f02 ? (f02) e02Var : null;
        return (f02Var == null || (e02VarIntercepted = f02Var.intercepted()) == null) ? e02Var : e02VarIntercepted;
    }

    public static Object c(bm3 bm3Var, Object obj, e02 e02Var) {
        bm3Var.getClass();
        e02Var.getClass();
        o22 context = e02Var.getContext();
        b32 da4Var = context == gx2.b ? new da4(e02Var) : new ea4(e02Var, context);
        v39.c(2, bm3Var);
        return bm3Var.invoke(obj, da4Var);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        qb5.f.e("MobileVisionBase", "Error preloading model resource", exc);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzJ());
    }
}
