package defpackage;

import android.content.Context;
import androidx.camera.camera2.adapter.CameraSurfaceAdapter;
import androidx.camera.core.impl.CameraDeviceSurfaceManager;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jz0 implements CameraDeviceSurfaceManager.Provider {
    @Override // androidx.camera.core.impl.CameraDeviceSurfaceManager.Provider
    public final CameraDeviceSurfaceManager newInstance(Context context, Object obj, Set set) {
        return new CameraSurfaceAdapter(context, obj, set);
    }
}
