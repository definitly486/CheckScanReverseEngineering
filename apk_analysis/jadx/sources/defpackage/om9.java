package defpackage;

import androidx.camera.core.SafeCloseImageReaderProxy;
import com.tapjoy.TJConnectListener;
import com.tapjoy.internal.h1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class om9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ om9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((SafeCloseImageReaderProxy) obj).safeClose();
                break;
            default:
                h1.a((TJConnectListener) obj);
                break;
        }
    }
}
