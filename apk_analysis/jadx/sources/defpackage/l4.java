package defpackage;

import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class l4 implements Callable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ l4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Long.valueOf(((c4) obj).a.Y0());
            case 1:
                return ((DefaultHeartBeatController) obj).lambda$registerHeartBeat$0();
            default:
                return ((RemoteConfigComponent) obj).getDefault();
        }
    }
}
