package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.camera2.pipe.Result3A;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$lock3A$1", f = "CameraGraphImpl.kt", l = {278}, m = "invokeSuspend", v = 1)
public final class CameraGraphImpl$lock3A$1 extends pg8 implements bm3<y22, e02<? super mk2<? extends Result3A>>, Object> {
    final /* synthetic */ Lock3ABehavior $aeLockBehavior;
    final /* synthetic */ List<MeteringRectangle> $aeRegions;
    final /* synthetic */ Lock3ABehavior $afLockBehavior;
    final /* synthetic */ List<MeteringRectangle> $afRegions;
    final /* synthetic */ AeMode $afTriggerStartAeMode;
    final /* synthetic */ Lock3ABehavior $awbLockBehavior;
    final /* synthetic */ List<MeteringRectangle> $awbRegions;
    final /* synthetic */ nl3<FrameMetadata, Boolean> $convergedCondition;
    final /* synthetic */ long $convergedTimeLimitNs;
    final /* synthetic */ int $frameLimit;
    final /* synthetic */ nl3<FrameMetadata, Boolean> $lockedCondition;
    final /* synthetic */ long $lockedTimeLimitNs;
    int label;
    final /* synthetic */ CameraGraphImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CameraGraphImpl$lock3A$1(CameraGraphImpl cameraGraphImpl, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, long j, long j2, e02<? super CameraGraphImpl$lock3A$1> e02Var) {
        super(2, e02Var);
        this.this$0 = cameraGraphImpl;
        this.$aeRegions = list;
        this.$afRegions = list2;
        this.$awbRegions = list3;
        this.$aeLockBehavior = lock3ABehavior;
        this.$afLockBehavior = lock3ABehavior2;
        this.$awbLockBehavior = lock3ABehavior3;
        this.$afTriggerStartAeMode = aeMode;
        this.$convergedCondition = nl3Var;
        this.$lockedCondition = nl3Var2;
        this.$frameLimit = i;
        this.$convergedTimeLimitNs = j;
        this.$lockedTimeLimitNs = j2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CameraGraphImpl$lock3A$1(this.this$0, this.$aeRegions, this.$afRegions, this.$awbRegions, this.$aeLockBehavior, this.$afLockBehavior, this.$awbLockBehavior, this.$afTriggerStartAeMode, this.$convergedCondition, this.$lockedCondition, this.$frameLimit, this.$convergedTimeLimitNs, this.$lockedTimeLimitNs, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(y22 y22Var, e02<? super mk2<Result3A>> e02Var) {
        return ((CameraGraphImpl$lock3A$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
        Controller3A controller3A = this.this$0.controller3A;
        List<MeteringRectangle> list = this.$aeRegions;
        List<MeteringRectangle> list2 = this.$afRegions;
        List<MeteringRectangle> list3 = this.$awbRegions;
        Lock3ABehavior lock3ABehavior = this.$aeLockBehavior;
        Lock3ABehavior lock3ABehavior2 = this.$afLockBehavior;
        Lock3ABehavior lock3ABehavior3 = this.$awbLockBehavior;
        AeMode aeMode = this.$afTriggerStartAeMode;
        nl3<FrameMetadata, Boolean> nl3Var = this.$convergedCondition;
        nl3<FrameMetadata, Boolean> nl3Var2 = this.$lockedCondition;
        int i2 = this.$frameLimit;
        Long l = new Long(this.$convergedTimeLimitNs);
        Long l2 = new Long(this.$lockedTimeLimitNs);
        this.label = 1;
        Object objM881lock3AQz1gx5w = controller3A.m881lock3AQz1gx5w(list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, nl3Var, nl3Var2, i2, l, l2, this);
        return objM881lock3AQz1gx5w == a32Var ? a32Var : objM881lock3AQz1gx5w;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super mk2<? extends Result3A>> e02Var) {
        return invoke2(y22Var, (e02<? super mk2<Result3A>>) e02Var);
    }
}
