package defpackage;

import android.view.View;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import androidx.compose.ui.platform.AbstractComposeView;
import io.appmetrica.analytics.impl.C1370x1;
import java.util.Iterator;
import yads.d46;
import yads.pg6;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ x(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AbstractComposeView) obj).attachedToWindow();
                return;
            case 1:
                od6 od6Var = (od6) obj;
                synchronized (od6Var.e) {
                    try {
                        Iterator<T> it = od6Var.e.keySet().iterator();
                        while (it.hasNext()) {
                            ((View) it.next()).postInvalidate();
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 2:
                ((TakePictureManagerImpl) obj).issueNextRequest();
                return;
            case 3:
                jk9 jk9Var = (jk9) obj;
                jk9Var.d.a(new up0(jk9Var, 5));
                return;
            case 4:
                d46.b((ll3) obj);
                return;
            case 5:
                ((pg6) obj).requestLayout();
                return;
            default:
                ((C1370x1) obj).d();
                return;
        }
    }
}
