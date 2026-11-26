package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2MetadataCache$getCameraMetadata$3", f = "Camera2MetadataCache.kt", l = {}, m = "invokeSuspend", v = 1)
public final class Camera2MetadataCache$getCameraMetadata$3 extends pg8 implements bm3<y22, e02<? super CameraMetadata>, Object> {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2MetadataCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2MetadataCache$getCameraMetadata$3(Camera2MetadataCache camera2MetadataCache, String str, e02<? super Camera2MetadataCache$getCameraMetadata$3> e02Var) {
        super(2, e02Var);
        this.this$0 = camera2MetadataCache;
        this.$cameraId = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new Camera2MetadataCache$getCameraMetadata$3(this.this$0, this.$cameraId, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super CameraMetadata> e02Var) {
        return ((Camera2MetadataCache$getCameraMetadata$3) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return this.this$0.mo778awaitCameraMetadataEfqyGwQ(this.$cameraId);
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
