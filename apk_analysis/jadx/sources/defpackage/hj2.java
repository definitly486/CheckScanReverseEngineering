package defpackage;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import io.appmetrica.analytics.impl.I0;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hj2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ hj2(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.f;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                ((DefaultSurfaceProcessor) obj4).lambda$initGlRenderer$9((DynamicRange) obj3, (Map) obj2, (CallbackToFutureAdapter.Completer) obj);
                break;
            default:
                I0.a((I0) obj4, (String) obj3, (String) obj2, (String) obj);
                break;
        }
    }
}
