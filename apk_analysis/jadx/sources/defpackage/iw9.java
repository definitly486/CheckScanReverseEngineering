package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class iw9 implements Continuation, rxa {
    public static final /* synthetic */ iw9 b = new iw9();
    public static final /* synthetic */ iw9 c = new iw9();

    public static int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 9;
            case 9:
                return 10;
            case 10:
                return 11;
            case 11:
                return 12;
            case 12:
                return 13;
            case 13:
                return 14;
            case 14:
                return 15;
            case 15:
            default:
                return 0;
            case 16:
                return 17;
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* synthetic */ Object then(Task task) {
        Api.ClientKey clientKey = zzcg.a;
        return null;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Long.valueOf(zzags.zzaj());
    }
}
