package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.layout.SupportedPosture;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.WindowBackend;
import defpackage.kx2;
import defpackage.xl;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionWindowBackendApi0 implements WindowBackend {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerLayoutChangeCallback$lambda$0(Consumer consumer) {
        consumer.accept(new WindowLayoutInfo(kx2.b));
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public WindowLayoutInfo getCurrentWindowLayoutInfo(Context context) {
        context.getClass();
        throw new UnsupportedOperationException("Extensions version must be at least 9");
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public List<SupportedPosture> getSupportedPostures() {
        throw new UnsupportedOperationException("Extensions version must be at least 6");
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public void registerLayoutChangeCallback(Context context, Executor executor, Consumer<WindowLayoutInfo> consumer) {
        context.getClass();
        executor.getClass();
        consumer.getClass();
        executor.execute(new xl(consumer, 1));
    }

    @Override // androidx.window.layout.adapter.WindowBackend
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> consumer) {
        consumer.getClass();
    }
}
