package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.Choreographer;
import androidx.core.os.HandlerCompat;
import defpackage.bv0;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.uy4;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidUiDispatcher$Companion$Main$2 extends gh4 implements ll3<o22> {
    public static final AndroidUiDispatcher$Companion$Main$2 INSTANCE = new AndroidUiDispatcher$Companion$Main$2();

    public AndroidUiDispatcher$Companion$Main$2() {
        super(0);
    }

    @Override // defpackage.ll3
    public final o22 invoke() {
        Choreographer choreographer;
        if (AndroidUiDispatcher_androidKt.isMainThread()) {
            choreographer = Choreographer.getInstance();
        } else {
            oi2 oi2Var = qo2.a;
            choreographer = (Choreographer) bv0.a(uy4.a, new AndroidUiDispatcher$Companion$Main$2$dispatcher$1(null));
        }
        AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, HandlerCompat.createAsync(Looper.getMainLooper()), null);
        return androidUiDispatcher.plus(androidUiDispatcher.getFrameClock());
    }
}
