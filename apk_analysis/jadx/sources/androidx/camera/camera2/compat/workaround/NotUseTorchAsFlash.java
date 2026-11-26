package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.FrameMetadata;
import defpackage.e02;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class NotUseTorchAsFlash implements UseTorchAsFlash {
    public static final NotUseTorchAsFlash INSTANCE = new NotUseTorchAsFlash();

    private NotUseTorchAsFlash() {
    }

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public boolean shouldDisableAePrecapture() {
        return false;
    }

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public Object shouldUseTorchAsFlash(nl3<? super e02<? super FrameMetadata>, ? extends Object> nl3Var, e02<? super Boolean> e02Var) {
        return Boolean.FALSE;
    }
}
