package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.core.ConsumerAdapter;
import androidx.window.core.ExtensionsUtil;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.SupportedPosture;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.WindowBackend;
import defpackage.jh2;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtensionWindowBackend implements WindowBackend {
    public static final Companion Companion = new Companion(null);
    private final WindowBackend backend;

    public ExtensionWindowBackend(WindowBackend windowBackend) {
        windowBackend.getClass();
        this.backend = windowBackend;
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public WindowLayoutInfo getCurrentWindowLayoutInfo(Context context) {
        context.getClass();
        return this.backend.getCurrentWindowLayoutInfo(context);
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public List<SupportedPosture> getSupportedPostures() {
        return this.backend.getSupportedPostures();
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public boolean hasRegisteredListeners() {
        return this.backend.hasRegisteredListeners();
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public void registerLayoutChangeCallback(Context context, Executor executor, Consumer<WindowLayoutInfo> consumer) {
        context.getClass();
        executor.getClass();
        consumer.getClass();
        this.backend.registerLayoutChangeCallback(context, executor, consumer);
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> consumer) {
        consumer.getClass();
        this.backend.unregisterLayoutChangeCallback(consumer);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final WindowBackend newInstance(WindowLayoutComponent windowLayoutComponent, ConsumerAdapter consumerAdapter) {
            windowLayoutComponent.getClass();
            consumerAdapter.getClass();
            int safeVendorApiLevel = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel();
            if (safeVendorApiLevel >= 9) {
                return new ExtensionWindowBackendApi9(windowLayoutComponent, consumerAdapter);
            }
            if (safeVendorApiLevel >= 6) {
                return new ExtensionWindowBackendApi6(windowLayoutComponent, consumerAdapter);
            }
            if (safeVendorApiLevel >= 2) {
                return new ExtensionWindowBackendApi2(windowLayoutComponent, consumerAdapter);
            }
            return safeVendorApiLevel == 1 ? new ExtensionWindowBackendApi1(windowLayoutComponent, consumerAdapter) : new ExtensionWindowBackendApi0();
        }

        private Companion() {
        }
    }
}
