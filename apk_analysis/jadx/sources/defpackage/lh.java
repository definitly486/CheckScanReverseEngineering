package defpackage;

import android.widget.ImageView;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.compose.ui.platform.AndroidComposeView;
import com.my.tracker.obfuscated.m2;
import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;
import com.warefly.checkscan.ui.dotindicator.a;
import java.util.ArrayList;
import java.util.Iterator;
import yads.o25;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lh implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lh(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                AndroidComposeView.outOfFrameRunnable$lambda$0((AndroidComposeView) obj);
                break;
            case 1:
                ((AudioSource) obj).lambda$start$1();
                break;
            case 2:
                BaseDotsIndicator baseDotsIndicator = (BaseDotsIndicator) obj;
                ArrayList<ImageView> arrayList = baseDotsIndicator.b;
                BaseDotsIndicator.a aVar = baseDotsIndicator.h;
                if (aVar != null) {
                    int i2 = 0;
                    if (arrayList.size() < aVar.getCount()) {
                        int count = aVar.getCount() - arrayList.size();
                        while (i2 < count) {
                            baseDotsIndicator.a(i2);
                            i2++;
                        }
                    } else if (arrayList.size() > aVar.getCount()) {
                        int size = arrayList.size() - aVar.getCount();
                        while (i2 < size) {
                            baseDotsIndicator.f();
                            i2++;
                        }
                    }
                }
                baseDotsIndicator.e();
                Iterator<ImageView> it = arrayList.iterator();
                while (it.hasNext()) {
                    ie9.b(it.next(), (int) baseDotsIndicator.e);
                }
                BaseDotsIndicator.a aVar2 = baseDotsIndicator.h;
                if (aVar2 != null && aVar2.e()) {
                    aVar2.d();
                    a aVarC = baseDotsIndicator.c();
                    aVar2.c(aVarC);
                    aVarC.b(0.0f, aVar2.a());
                    break;
                }
                break;
            case 3:
                ThreadConfigModule.provideThreads$lambda$3((ArrayList) obj);
                break;
            case 4:
                ((m2) obj).c();
                break;
            default:
                o25.a((o25) obj);
                break;
        }
    }
}
