package defpackage;

import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.media3.common.audio.AudioBecomingNoisyManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.window.area.WindowAreaControllerImpl;
import androidx.window.area.WindowAreaPresentationSessionCallback;
import com.google.android.material.search.SearchView;
import com.my.target.m2;
import com.my.target.w2;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rt implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rt(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AudioBecomingNoisyManager) obj).lambda$setEnabled$1();
                break;
            case 1:
                ze4<Object>[] ze4VarArr = ChequesFragment.q;
                ((RecyclerView) obj).smoothScrollToPosition(0);
                break;
            case 2:
                ((DualSurfaceProcessor) obj).lambda$release$4();
                break;
            case 3:
                ((SearchView) obj).lambda$requestFocusAndShowKeyboard$10();
                break;
            case 4:
                WindowAreaControllerImpl.presentContentOnWindowArea$lambda$2((WindowAreaPresentationSessionCallback) obj);
                break;
            default:
                w2 w2Var = (w2) obj;
                m2.a aVar = w2Var.f;
                aVar.n(w2Var.l / 1000.0d);
                long j = w2Var.l;
                if (j <= 0) {
                    w2Var.e.c();
                    w2Var.b.e(w2Var.c);
                    aVar.e();
                    aVar.a.i = true;
                } else {
                    w2Var.l = j - 200;
                }
                break;
        }
    }
}
