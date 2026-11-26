package defpackage;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import androidx.core.util.Consumer;
import androidx.fragment.app.Fragment;
import androidx.room.RoomTrackingLiveData;
import androidx.webkit.WebViewCompat;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0;
import com.my.target.m1;
import com.my.target.n0;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import yads.q25;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xl implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ xl(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        double dA;
        View view;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                AnimatedImageView animatedImageView = (AnimatedImageView) obj;
                int i2 = AnimatedImageView.C;
                synchronized (animatedImageView) {
                    try {
                        if (!animatedImageView.b.isEmpty() && animatedImageView.getWidth() > 0 && animatedImageView.getHeight() > 0 && !animatedImageView.n.get()) {
                            animatedImageView.e();
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                ExtensionWindowBackendApi0.registerLayoutChangeCallback$lambda$0((Consumer) obj);
                return;
            case 2:
                ((Fragment) obj).lambda$performCreateView$0();
                return;
            case 3:
                RoomTrackingLiveData.access$invalidated((RoomTrackingLiveData) obj);
                return;
            case 4:
                v89.c cVar = new v89.c();
                UpridWebFullScreenDialog.a aVar = UpridWebFullScreenDialog.f;
                ((UpridWebFullScreenDialog) obj).g(cVar);
                return;
            case 5:
                WebViewCompat.lambda$startUpWebView$2((WebViewCompat.WebViewStartUpCallback) obj);
                return;
            case 6:
                n0 n0Var = (n0) obj;
                float fElapsedRealtime = (SystemClock.elapsedRealtime() - n0Var.b) / 1000.0f;
                WeakReference weakReference = n0Var.g;
                if (weakReference == null || (view = (View) weakReference.get()) == null) {
                    context = null;
                    dA = 0.0d;
                } else {
                    dA = l3a.a(view);
                    context = view.getContext();
                }
                List list = n0Var.e.b;
                s5a s5aVar = n0Var.d;
                List list2 = s5aVar.b;
                if (list2.isEmpty() && list.isEmpty()) {
                    return;
                }
                if (context == null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((sna) it.next()).j = -1.0f;
                    }
                    return;
                }
                s5a s5aVarA = s5aVar.a();
                List list3 = s5aVarA.b;
                while (true) {
                    if (!list2.isEmpty()) {
                        int size = list2.size() - 1;
                        if (y14.a(((ht9) list2.get(size)).i, fElapsedRealtime) != 1) {
                            ht9 ht9Var = (ht9) list2.remove(size);
                            int i3 = ht9Var.f;
                            boolean z = ht9Var.h;
                            boolean z2 = ((double) i3) <= dA;
                            if ((z2 && z) || (!z2 && !z)) {
                                list3.add(ht9Var);
                            }
                        }
                    }
                }
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    sna snaVar = (sna) it2.next();
                    int i4 = snaVar.f;
                    float f = snaVar.j;
                    boolean z3 = dA < ((double) i4);
                    boolean z4 = f < 0.0f;
                    if (z3) {
                        snaVar.j = -1.0f;
                    } else if (z4) {
                        snaVar.j = fElapsedRealtime;
                    } else if (y14.a(fElapsedRealtime - f, snaVar.h) != -1) {
                        if (snaVar.i) {
                            list3.add(snaVar);
                        }
                        it2.remove();
                    }
                }
                m1.g(s5aVarA, n0Var.h);
                return;
            default:
                q25.b((q25) obj);
                return;
        }
    }
}
