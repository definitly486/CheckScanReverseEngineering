package defpackage;

import android.view.View;
import android.view.ViewParent;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import com.my.target.sk;
import com.my.target.x0;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class pu implements CallbackToFutureAdapter.Resolver, Interpolator, sk.a {
    public final /* synthetic */ Object b;

    public /* synthetic */ pu(Object obj) {
        this.b = obj;
    }

    public void a(boolean z) {
        x0 x0Var = (x0) this.b;
        ou ouVar = x0Var.e;
        d9a d9aVar = x0Var.b;
        WeakReference weakReference = x0Var.k;
        sk skVar = weakReference == null ? null : (sk) weakReference.get();
        if (skVar == null) {
            y14.r("ViewabilityTracker", "help view is null");
            x0Var.k = null;
            return;
        }
        ViewParent parent = skVar.getParent();
        WeakReference weakReference2 = x0Var.j;
        View view = weakReference2 == null ? null : (View) weakReference2.get();
        if (parent == null || parent != view) {
            y14.r("ViewabilityTracker", "onStateChanged viewParent is null or not equals to rootView");
            skVar.setStateChangedListener(null);
            x0Var.k.clear();
            x0Var.k = null;
            return;
        }
        y14.r("ViewabilityTracker", "onViewVisibilityChanged = " + z);
        if (!z) {
            d9aVar.e(ouVar);
            x0Var.a(view, 0.0f, false);
        } else {
            x0Var.b();
            if (x0Var.g) {
                d9aVar.b(ouVar);
            }
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((AudioSource) this.b).lambda$release$5(completer);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$0((String) this.b, f);
    }
}
