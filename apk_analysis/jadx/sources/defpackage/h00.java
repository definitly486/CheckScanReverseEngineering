package defpackage;

import android.os.Handler;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.Observable;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import com.my.target.a3;
import com.my.target.d1;
import com.my.target.z2;
import java.util.Objects;
import yads.ja5;
import yads.r25;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class h00 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ h00(int i, Object obj, Object obj2) {
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
                ((BackgroundThreadStateHandler) obj2).lambda$setStateInBackground$2(obj);
                break;
            case 1:
                ImageAnalysis.lambda$createPipeline$1((SafeCloseImageReaderProxy) obj2, (SafeCloseImageReaderProxy) obj);
                break;
            case 2:
                ((LiveDataObservable) obj2).lambda$addObserver$2((Observable.Observer) obj);
                break;
            case 3:
                r25.a((r25) obj2, (ja5) obj);
                break;
            default:
                z2 z2Var = (z2) obj2;
                gga ggaVar = (gga) obj;
                d1.a aVarB = d1.b(ggaVar.b, z2Var.c);
                if (ggaVar.e) {
                    a3.b(ggaVar.b, ggaVar.c, ggaVar.d, aVarB, true, 0);
                }
                l0a l0aVar = new l0a(z2Var, ggaVar, aVarB, 1);
                Handler handler = z2Var.e;
                Objects.requireNonNull(handler);
                handler.post(l0aVar);
                break;
        }
    }
}
