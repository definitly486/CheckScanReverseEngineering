package defpackage;

import android.graphics.Bitmap;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import yads.hi0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gt8 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ gt8(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ThreadConfigModule.provideThreads$lambda$5((ThreadConfigModule) obj2, (CameraPipeLifetime) obj);
            default:
                return hi0.a((hi0) obj2, (Bitmap) obj);
        }
    }
}
