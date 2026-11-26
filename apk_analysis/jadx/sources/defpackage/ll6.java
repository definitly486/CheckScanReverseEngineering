package defpackage;

import android.content.Context;
import androidx.profileinstaller.ProfileInstaller;
import com.my.tracker.obfuscated.i0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ll6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ll6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ProfileInstaller.writeProfile((Context) obj);
                break;
            case 1:
                try {
                    ((a52) obj).run();
                } catch (Throwable th) {
                    y14.u(null, "Unexpected exception: " + th.getMessage() + "\nexception=" + y14.p(th));
                    return;
                }
                break;
            default:
                ((i0) obj).e();
                break;
        }
    }
}
