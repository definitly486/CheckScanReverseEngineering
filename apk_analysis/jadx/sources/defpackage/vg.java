package defpackage;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import yads.l66;
import yads.lr1;
import yads.t12;
import yads.xi2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vg implements SuccessContinuation, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ vg(int i) {
        this.b = i;
    }

    public static int b(int i, int i2, long j) {
        return (Long.hashCode(j) + i) * i2;
    }

    public static String d(StringBuilder sb, Object obj, char c) {
        sb.append(obj);
        sb.append(c);
        return sb.toString();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 4:
                return lr1.c(((Double) obj).doubleValue());
            case 5:
                return t12.b(((Long) obj).longValue());
            default:
                return xi2.c(((Long) obj).longValue());
        }
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        return FirebaseRemoteConfig.lambda$fetch$4((ConfigFetchHandler.FetchResponse) obj);
    }
}
