package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class rm9 implements c0b, rxa {
    public static final byte[] b = new byte[0];
    public static final /* synthetic */ rm9 c = new rm9();
    public static final /* synthetic */ rm9 d = new rm9();

    public static jd8 b() {
        return new jd8(null);
    }

    public static final Object c(bm3 bm3Var, e02 e02Var) {
        id8 id8Var = new id8(e02Var, e02Var.getContext());
        Object objD = cn1.d(id8Var, true, id8Var, bm3Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objD;
    }

    @Override // defpackage.c0b
    public /* synthetic */ void a(zzec zzecVar, ListenerHolder.ListenerKey listenerKey, boolean z, TaskCompletionSource taskCompletionSource) {
        zzecVar.zzv(listenerKey, z, taskCompletionSource);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Integer.valueOf((int) zzags.zzD());
    }
}
