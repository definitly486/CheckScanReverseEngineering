package defpackage;

import android.view.Surface;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.SurfaceRequest;
import androidx.core.util.Consumer;
import io.appmetrica.analytics.impl.InterfaceC1207qg;
import io.appmetrica.analytics.impl.Na;
import yads.ji0;
import yads.nm;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ro1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ro1(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((Request.Listener) obj2).onRequestSequenceSubmitted((RequestMetadata) obj);
                break;
            case 1:
                Na.a((InterfaceC1207qg) obj2, (Na) obj);
                break;
            case 2:
                SurfaceRequest.lambda$provideSurface$6((Consumer) obj2, (Surface) obj);
                break;
            default:
                ((nm) obj2).c((ji0) obj);
                break;
        }
    }
}
