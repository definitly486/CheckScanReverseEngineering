package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Config;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.n05;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1", f = "UseCaseCameraRequestControl.kt", l = {441}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1 extends pg8 implements nl3<e02<? super mk2<? extends j59>>, Object> {
    final /* synthetic */ Config $config;
    final /* synthetic */ Map<String, Object> $tags;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, Config config, Map<String, ? extends Object> map, e02<? super UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1> e02Var) {
        super(1, e02Var);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$config = config;
        this.$tags = map;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1(this.this$0, this.$config, this.$tags, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(e02<? super mk2<j59>> e02Var) {
        return ((UseCaseCameraRequestControlImpl$updateCamera2ConfigAsync$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#updateCamera2ConfigAsync");
        }
        this.this$0.infoBundleMap.put(UseCaseCameraRequestControl.Type.CAMERA2_CAMERA_CONTROL, new UseCaseCameraRequestControlImpl.InfoBundle(UseCaseCameraRequestControlImpl.Companion.extractCamera2ImplConfigBuilder(this.$config), n05.n(this.$tags), null, null, 12, null));
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
        UseCaseCameraRequestControlImpl.InfoBundle infoBundleMerge = useCaseCameraRequestControlImpl.merge(useCaseCameraRequestControlImpl.infoBundleMap);
        this.label = 1;
        Object objUpdateCameraStateAsync$default = UseCaseCameraRequestControlImpl.updateCameraStateAsync$default(useCaseCameraRequestControlImpl, infoBundleMerge, null, this, 1, null);
        return objUpdateCameraStateAsync$default == a32Var ? a32Var : objUpdateCameraStateAsync$default;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(e02<? super mk2<? extends j59>> e02Var) {
        return invoke2((e02<? super mk2<j59>>) e02Var);
    }
}
