package defpackage;

import androidx.work.WorkerParameters;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkLauncherImpl;
import com.google.android.gms.common.util.BiConsumer;
import com.google.firebase.remoteconfig.internal.ConfigContainer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sv1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ sv1(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                ((BiConsumer) obj3).accept((String) obj2, (ConfigContainer) obj);
                break;
            default:
                WorkLauncherImpl.startWork$lambda$0((WorkLauncherImpl) obj3, (StartStopToken) obj2, (WorkerParameters.RuntimeExtras) obj);
                break;
        }
    }
}
