package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import android.os.Build;
import android.util.Log;
import androidx.window.core.BuildConfig;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.VerificationMode;
import androidx.window.extensions.area.WindowAreaComponent;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.hd3;
import defpackage.jh2;
import defpackage.nt6;
import defpackage.x07;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WindowAreaController {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = x07.a(WindowAreaController.class).f();
    private static WindowAreaControllerDecorator decorator = EmptyDecorator.INSTANCE;
    private static final cl4<WindowAreaController> windowAreaController$delegate = new fh8(new nt6(2));

    public static final WindowAreaController getOrCreate() {
        return Companion.getOrCreate();
    }

    public static final void overrideDecorator(WindowAreaControllerDecorator windowAreaControllerDecorator) {
        Companion.overrideDecorator(windowAreaControllerDecorator);
    }

    public static final void reset() {
        Companion.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowAreaController windowAreaController_delegate$lambda$1() {
        WindowAreaComponent windowAreaComponent = null;
        try {
            ClassLoader classLoader = Companion.getClass().getClassLoader();
            if (classLoader != null) {
                windowAreaComponent = new SafeWindowAreaComponentProvider(classLoader).getWindowAreaComponent();
            }
        } catch (Throwable unused) {
            if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                Log.d(TAG, "Failed to load WindowExtensions");
            }
        }
        if (Build.VERSION.SDK_INT <= 29 || windowAreaComponent == null || ExtensionsUtil.INSTANCE.getSafeVendorApiLevel() < 3) {
            return new EmptyWindowAreaControllerImpl();
        }
        windowAreaComponent.getClass();
        return new WindowAreaControllerImpl(windowAreaComponent);
    }

    public abstract hd3<List<WindowAreaInfo>> getWindowAreaInfos();

    public abstract void presentContentOnWindowArea(Binder binder, Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback);

    public abstract void transferActivityToWindowArea(Binder binder, Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final WindowAreaController getWindowAreaController() {
            return (WindowAreaController) WindowAreaController.windowAreaController$delegate.getValue();
        }

        public final WindowAreaController getOrCreate() {
            return WindowAreaController.decorator.decorate(getWindowAreaController());
        }

        public final void overrideDecorator(WindowAreaControllerDecorator windowAreaControllerDecorator) {
            windowAreaControllerDecorator.getClass();
            WindowAreaController.decorator = windowAreaControllerDecorator;
        }

        public final void reset() {
            WindowAreaController.decorator = EmptyDecorator.INSTANCE;
        }

        private Companion() {
        }
    }
}
