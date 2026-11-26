package defpackage;

import android.graphics.Canvas;
import android.location.LocationManager;
import android.view.View;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.search.SearchView;
import com.google.firebase.crashlytics.internal.common.Utils;
import com.my.target.r0;
import com.my.target.w2;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.location.impl.r;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v51 implements xl3, mq5, CanvasCompat.CanvasOperation, ViewUtils.OnApplyWindowInsetsListener, Continuation, FunctionWithThrowable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v51(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    public void a() {
        w2 w2Var = (w2) this.c;
        r0 r0Var = w2Var.k;
        if (r0Var != null) {
            xda xdaVar = w2Var.d;
            r0Var.c();
            r0Var.d.a(xdaVar);
            w2Var.k.d();
            w2Var.k = null;
        }
        w2Var.f.a.i = true;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (qq1) ((y51) obj2).invoke(obj);
            case 3:
                return (us5) ((ai1) obj2).invoke(obj);
            default:
                return r.b((r) obj2, (LocationManager) obj);
        }
    }

    @Override // defpackage.mq5
    public Object c() {
        Class cls = (Class) this.c;
        try {
            return e79.a.a(cls);
        } catch (Exception e) {
            throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e);
        }
    }

    @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
        return ((SearchView) this.c).lambda$setUpToolbarInsetListener$5(view, windowInsetsCompat, relativePadding);
    }

    @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
    public void run(Canvas canvas) {
        ((NavigationView) this.c).lambda$dispatchDraw$0(canvas);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return Utils.lambda$awaitEvenIfOnMainThread$0((CountDownLatch) this.c, task);
    }
}
