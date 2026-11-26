package androidx.camera.camera2.pipe.compat;

import androidx.media3.extractor.ts.TsExtractor;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.Camera2Backend", f = "Camera2Backend.kt", l = {111, TsExtractor.TS_STREAM_TYPE_AC3}, m = "isConfigSupported-NpXggIU", v = 1)
public final class Camera2Backend$isConfigSupported$1 extends f02 {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Camera2Backend this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2Backend$isConfigSupported$1(Camera2Backend camera2Backend, e02<? super Camera2Backend$isConfigSupported$1> e02Var) {
        super(e02Var);
        this.this$0 = camera2Backend;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo179isConfigSupportedNpXggIU(null, this);
    }
}
