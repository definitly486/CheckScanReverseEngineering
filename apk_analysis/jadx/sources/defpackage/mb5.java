package defpackage;

import android.content.Context;
import androidx.camera.core.ImageAnalysis;
import com.google.android.gms.tasks.TaskExecutors;
import com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter;

/* JADX INFO: loaded from: classes5.dex */
public final class mb5 implements lb5 {
    @Override // defpackage.lb5
    public final ImageAnalysis.Analyzer a(Context context, ScannerPresenter scannerPresenter, la3 la3Var) {
        Object aVar;
        Object aVar2;
        try {
            aVar = new nb5(scannerPresenter, la3Var);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            try {
                synchronized (jb5.b) {
                    jb5.d(context, TaskExecutors.MAIN_THREAD);
                }
                aVar2 = new nb5(scannerPresenter, la3Var);
            } catch (Throwable th2) {
                aVar2 = new k57.a(th2);
            }
            if (aVar2 instanceof k57.a) {
                aVar2 = null;
            }
            aVar = (nb5) aVar2;
        }
        return (ImageAnalysis.Analyzer) aVar;
    }
}
