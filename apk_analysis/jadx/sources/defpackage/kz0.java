package defpackage;

import android.content.Context;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.core.impl.UseCaseConfigFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kz0 implements UseCaseConfigFactory.Provider {
    @Override // androidx.camera.core.impl.UseCaseConfigFactory.Provider
    public final UseCaseConfigFactory newInstance(Context context) {
        return new CameraUseCaseAdapter(context);
    }
}
