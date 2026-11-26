package androidx.window.layout.adapter;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.layout.SupportedPosture;
import androidx.window.layout.WindowLayoutInfo;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowBackend {
    static /* synthetic */ void getSupportedPostures$annotations() {
    }

    WindowLayoutInfo getCurrentWindowLayoutInfo(Context context);

    List<SupportedPosture> getSupportedPostures();

    default boolean hasRegisteredListeners() {
        return false;
    }

    void registerLayoutChangeCallback(Context context, Executor executor, Consumer<WindowLayoutInfo> consumer);

    void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> consumer);
}
