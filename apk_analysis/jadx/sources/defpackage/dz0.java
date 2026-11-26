package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import yads.uw5;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dz0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ dz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Camera2CameraMetadata._supportedExtensions$lambda$0((Camera2CameraMetadata) obj);
            case 1:
                return DefaultEncoderProfilesProvider.supportedSizes_delegate$lambda$0((DefaultEncoderProfilesProvider) obj);
            case 2:
                return obj;
            default:
                return uw5.a((ll3) obj);
        }
    }
}
