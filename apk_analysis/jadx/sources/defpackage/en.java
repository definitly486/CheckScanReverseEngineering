package defpackage;

import android.hardware.camera2.CameraExtensionSession$StateCallback;
import android.hardware.camera2.params.ExtensionSessionConfiguration;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class en {
    public static /* synthetic */ ExtensionSessionConfiguration a(int i, List list, Executor executor, CameraExtensionSession$StateCallback cameraExtensionSession$StateCallback) {
        return new ExtensionSessionConfiguration(i, list, executor, cameraExtensionSession$StateCallback);
    }
}
