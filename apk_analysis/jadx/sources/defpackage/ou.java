package defpackage;

import android.view.View;
import androidx.camera.video.internal.audio.AudioSource;
import com.my.target.x0;
import yads.v15;
import yads.wn;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ou implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ou(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AudioSource) obj).lambda$stop$3();
                break;
            case 1:
                ((View) obj).requestLayout();
                break;
            case 2:
                ((x0) obj).b();
                break;
            case 3:
                ((v15) obj).f();
                break;
            default:
                wn.a((wn) obj);
                break;
        }
    }
}
