package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.location.zzab;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class l05 implements RemoteCall, rxa {
    public static final /* synthetic */ l05 b = new l05();
    public static final /* synthetic */ l05 c = new l05();

    public static Map a(Map map, gf0 gf0Var) {
        map.getClass();
        return map instanceof e05 ? a(((e05) map).i(), gf0Var) : new f05(map, gf0Var);
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api.ClientKey clientKey = zzcg.a;
        ((zzec) obj).zzp(zzab.zza(), (TaskCompletionSource) obj2);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzB());
    }
}
