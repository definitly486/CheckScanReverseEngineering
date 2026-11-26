package defpackage;

import android.content.Context;
import android.widget.EditText;
import androidx.work.ListenableFutureKt;
import com.my.tracker.obfuscated.f1;
import com.tapjoy.TJOfferwallDiscoverView;
import yads.nf4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class sr4 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sr4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ListenableFutureKt.launchFuture$lambda$1$lambda$0((mb4) obj);
                break;
            case 1:
                ((xx4) obj).c();
                break;
            case 2:
                ((EditText) obj).requestFocus();
                break;
            case 3:
                ((TJOfferwallDiscoverView) obj).a();
                break;
            case 4:
                f1.d((Context) obj);
                break;
            default:
                nf4.a((nf4) obj);
                break;
        }
    }
}
