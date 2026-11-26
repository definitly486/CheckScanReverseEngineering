package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.WindowLayoutInfo;

/* JADX INFO: loaded from: classes3.dex */
public class ExtensionWindowBackendApi9 extends ExtensionWindowBackendApi6 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExtensionWindowBackendApi9(WindowLayoutComponent windowLayoutComponent, ConsumerAdapter consumerAdapter) {
        super(windowLayoutComponent, consumerAdapter);
        windowLayoutComponent.getClass();
        consumerAdapter.getClass();
    }

    @Override // androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0, androidx.window.layout.adapter.WindowBackend
    public WindowLayoutInfo getCurrentWindowLayoutInfo(Context context) {
        context.getClass();
        ExtensionsWindowLayoutInfoAdapter extensionsWindowLayoutInfoAdapter = ExtensionsWindowLayoutInfoAdapter.INSTANCE;
        androidx.window.extensions.layout.WindowLayoutInfo currentWindowLayoutInfo = getComponent().getCurrentWindowLayoutInfo(context);
        currentWindowLayoutInfo.getClass();
        return extensionsWindowLayoutInfoAdapter.translate$window_release(context, currentWindowLayoutInfo);
    }
}
