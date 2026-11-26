package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.window.WindowSdkExtensions;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.adapter.WindowBackend;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackend;
import androidx.window.layout.adapter.sidecar.SidecarWindowBackend;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.hd3;
import defpackage.oo5;
import defpackage.x07;
import defpackage.ya7;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowInfoTracker {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        private static final boolean DEBUG = false;
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final String TAG = x07.a(WindowInfoTracker.class).f();
        private static final cl4<WindowBackend> extensionBackend$delegate = new fh8(new ya7(1));
        private static WindowInfoTrackerDecorator decorator = EmptyDecorator.INSTANCE;

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final WindowBackend extensionBackend_delegate$lambda$2() {
            WindowLayoutComponent windowLayoutComponent;
            try {
                ClassLoader classLoader = WindowInfoTracker.class.getClassLoader();
                SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = classLoader != null ? new SafeWindowLayoutComponentProvider(classLoader, new ConsumerAdapter(classLoader)) : null;
                if (safeWindowLayoutComponentProvider == null || (windowLayoutComponent = safeWindowLayoutComponentProvider.getWindowLayoutComponent()) == null) {
                    return null;
                }
                return ExtensionWindowBackend.Companion.newInstance(windowLayoutComponent, new ConsumerAdapter(classLoader));
            } catch (Throwable unused) {
                if (DEBUG) {
                    Log.d(TAG, "Failed to load WindowExtensions");
                }
                return null;
            }
        }

        public static /* synthetic */ void getExtensionBackend$window_release$annotations() {
        }

        public final WindowBackend getExtensionBackend$window_release() {
            return extensionBackend$delegate.getValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final WindowInfoTracker getOrCreate(Context context) {
            context.getClass();
            WindowBackend extensionBackend$window_release = getExtensionBackend$window_release();
            if (extensionBackend$window_release == null) {
                extensionBackend$window_release = SidecarWindowBackend.Companion.getInstance(context);
            }
            return decorator.decorate(new WindowInfoTrackerImpl(new WindowMetricsCalculatorCompat(null, 1, 0 == true ? 1 : 0), extensionBackend$window_release, WindowSdkExtensions.Companion.getInstance()));
        }

        public final void overrideDecorator(WindowInfoTrackerDecorator windowInfoTrackerDecorator) {
            windowInfoTrackerDecorator.getClass();
            decorator = windowInfoTrackerDecorator;
        }

        public final void reset() {
            decorator = EmptyDecorator.INSTANCE;
        }
    }

    static WindowInfoTracker getOrCreate(Context context) {
        return Companion.getOrCreate(context);
    }

    static /* synthetic */ void getSupportedPostures$annotations() {
    }

    static void overrideDecorator(WindowInfoTrackerDecorator windowInfoTrackerDecorator) {
        Companion.overrideDecorator(windowInfoTrackerDecorator);
    }

    static void reset() {
        Companion.reset();
    }

    default WindowLayoutInfo getCurrentWindowLayoutInfo(Context context) {
        context.getClass();
        throw new oo5("Method was not implemented.");
    }

    default List<SupportedPosture> getSupportedPostures() {
        throw new oo5("Method was not implemented.");
    }

    hd3<WindowLayoutInfo> windowLayoutInfo(Activity activity);

    default hd3<WindowLayoutInfo> windowLayoutInfo(Context context) {
        context.getClass();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        hd3<WindowLayoutInfo> hd3VarWindowLayoutInfo = activity != null ? windowLayoutInfo(activity) : null;
        if (hd3VarWindowLayoutInfo != null) {
            return hd3VarWindowLayoutInfo;
        }
        throw new oo5("Must override windowLayoutInfo(context) and provide an implementation.");
    }
}
