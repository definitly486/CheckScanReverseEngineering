package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.View;
import androidx.compose.runtime.Recomposer;
import defpackage.ah;
import defpackage.av0;
import defpackage.fr3;
import defpackage.gu3;
import defpackage.iu3;
import defpackage.ll3;
import defpackage.s68;
import defpackage.sj0;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowRecomposerPolicy {
    public static final WindowRecomposerPolicy INSTANCE = new WindowRecomposerPolicy();
    private static final AtomicReference<WindowRecomposerFactory> factory = new AtomicReference<>(WindowRecomposerFactory.Companion.getLifecycleAware());
    public static final int $stable = 8;

    private WindowRecomposerPolicy() {
    }

    public final boolean compareAndSetFactory(WindowRecomposerFactory windowRecomposerFactory, WindowRecomposerFactory windowRecomposerFactory2) {
        AtomicReference<WindowRecomposerFactory> atomicReference = factory;
        while (!atomicReference.compareAndSet(windowRecomposerFactory, windowRecomposerFactory2)) {
            if (atomicReference.get() != windowRecomposerFactory) {
                return false;
            }
        }
        return true;
    }

    public final Recomposer createAndInstallWindowRecomposer$ui(View view) {
        Recomposer recomposerCreateRecomposer = factory.get().createRecomposer(view);
        WindowRecomposer_androidKt.setCompositionContext(view, recomposerCreateRecomposer);
        Handler handler = view.getHandler();
        int i = iu3.a;
        gu3 gu3Var = new gu3(handler, "windowRecomposer cleanup", false);
        final s68 s68VarC = av0.c(fr3.b, gu3Var.f, null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(recomposerCreateRecomposer, view, null), 2);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposerPolicy$createAndInstallWindowRecomposer$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                view2.removeOnAttachStateChangeListener(this);
                s68VarC.cancel(null);
            }
        });
        return recomposerCreateRecomposer;
    }

    public final WindowRecomposerFactory getAndSetFactory(WindowRecomposerFactory windowRecomposerFactory) {
        return factory.getAndSet(windowRecomposerFactory);
    }

    public final void setFactory(WindowRecomposerFactory windowRecomposerFactory) {
        factory.set(windowRecomposerFactory);
    }

    public final <R> R withFactory(WindowRecomposerFactory windowRecomposerFactory, ll3<? extends R> ll3Var) {
        WindowRecomposerFactory andSetFactory = getAndSetFactory(windowRecomposerFactory);
        try {
            R rInvoke = ll3Var.invoke();
            if (compareAndSetFactory(windowRecomposerFactory, andSetFactory)) {
                return rInvoke;
            }
            ah.f("WindowRecomposerFactory was set to unexpected value; cannot safely restore old state");
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (compareAndSetFactory(windowRecomposerFactory, andSetFactory)) {
                    throw th2;
                }
                sj0.c(th, new IllegalStateException("WindowRecomposerFactory was set to unexpected value; cannot safely restore old state"));
                throw th;
            }
        }
    }
}
