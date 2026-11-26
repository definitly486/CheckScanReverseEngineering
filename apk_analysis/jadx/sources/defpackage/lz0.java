package defpackage;

import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.window.embedding.ExtensionEmbeddingBackend;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import androidx.work.Worker;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lz0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Camera2DeviceCache.cameraDeviceSetupCompatFactory_delegate$lambda$0((Camera2DeviceCache) obj);
            case 1:
                return ExtensionEmbeddingBackend.splitSupportStatus_delegate$lambda$6((ExtensionEmbeddingBackend) obj);
            case 2:
                return HighSpeedResolver.maxSize_delegate$lambda$0((HighSpeedResolver) obj);
            case 3:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetSplitInfoCallbackJavaConsumerValid$lambda$3((SafeActivityEmbeddingComponentProvider) obj));
            case 4:
                return SnapshotStateObserver.sendNotifications$lambda$0((SnapshotStateObserver) obj);
            case 5:
                return TextFieldSelectionManagerKt.contextMenuBuilder$lambda$0$3((TextFieldSelectionManager) obj);
            case 6:
                return Long.valueOf(((Transition) obj).calculateTotalDurationNanos());
            default:
                return ((Worker) obj).doWork();
        }
    }
}
