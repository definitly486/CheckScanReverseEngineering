package defpackage;

import android.view.View;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.runtime.NextFrameEndCallbackQueue;
import yads.bt0;
import yads.v41;
import yads.vq0;
import yads.yo1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ul implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ul(int i, Object obj, Object obj2) {
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
                return AnimateAsStateKt.animateValueAsState$lambda$7$0((x81) obj2, obj);
            case 1:
                return NextFrameEndCallbackQueue.onNewAwaiters$lambda$0((NextFrameEndCallbackQueue) obj2, (ll3) obj);
            case 2:
                return ThreadConfigModule.provideThreads$lambda$4((ThreadConfigModule) obj2, (CameraPipeLifetime) obj);
            case 3:
                return bt0.a((View.OnClickListener) obj2, (View) obj);
            default:
                return Boolean.valueOf(v41.a((yo1) obj2, (vq0) obj));
        }
    }
}
