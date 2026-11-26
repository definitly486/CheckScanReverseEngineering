package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.camera.core.CameraControl;
import androidx.compose.runtime.ComposerKt;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1", f = "LowLightBoostControl.kt", l = {ComposerKt.providerKey}, m = "invokeSuspend", v = 1)
public final class LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ boolean $cancelPreviousTask$inlined;
    final /* synthetic */ boolean $lowLightBoost$inlined;
    final /* synthetic */ xp1 $signal$inlined;
    int label;
    final /* synthetic */ LowLightBoostControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1(e02 e02Var, LowLightBoostControl lowLightBoostControl, xp1 xp1Var, boolean z, boolean z2) {
        super(2, e02Var);
        this.this$0 = lowLightBoostControl;
        this.$signal$inlined = xp1Var;
        this.$lowLightBoost$inlined = z;
        this.$cancelPreviousTask$inlined = z2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1(e02Var, this.this$0, this.$signal$inlined, this.$lowLightBoost$inlined, this.$cancelPreviousTask$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((LowLightBoostControl$setLowLightBoostAsync$$inlined$confineLaunch$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0036  */
    /* JADX WARN: Code duplicated, block: B:18:0x004d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0056  */
    /* JADX WARN: Code duplicated, block: B:23:0x0067  */
    /* JADX WARN: Code duplicated, block: B:25:0x006b  */
    /* JADX WARN: Code duplicated, block: B:28:0x007a  */
    /* JADX WARN: Code duplicated, block: B:29:0x007e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0084  */
    /* JADX WARN: Code duplicated, block: B:34:0x009a  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b6  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        boolean zBooleanValue;
        LowLightBoostControl lowLightBoostControl;
        boolean z;
        LowLightBoostControl lowLightBoostControl2;
        xp1 xp1Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            mk2<Boolean> checkFrameRateJob$camera_camera2 = this.this$0.getCheckFrameRateJob$camera_camera2();
            if (checkFrameRateJob$camera_camera2 != null) {
                this.label = 1;
                obj = checkFrameRateJob$camera_camera2.Z(this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                zBooleanValue = false;
            }
            lowLightBoostControl = this.this$0;
            if (zBooleanValue) {
                lowLightBoostControl.setLiveDataValue(lowLightBoostControl._lowLightBoostState, -1);
                this.this$0.createFailureResult(this.$signal$inlined, new IllegalStateException("Low Light Boost is disabled when expected frame rate range exceeds 30."));
            } else {
                lowLightBoostControl.isLowLightBoostOn = this.$lowLightBoost$inlined;
                if (!this.$lowLightBoost$inlined) {
                    LowLightBoostControl lowLightBoostControl3 = this.this$0;
                    lowLightBoostControl3.setLiveDataValue(lowLightBoostControl3._lowLightBoostState, -1);
                }
                if (this.this$0.getRequestControl() != null) {
                    if (this.$lowLightBoost$inlined) {
                        LowLightBoostControl lowLightBoostControl4 = this.this$0;
                        lowLightBoostControl4.setLiveDataValue(lowLightBoostControl4._lowLightBoostState, 0);
                    }
                    z = this.$cancelPreviousTask$inlined;
                    lowLightBoostControl2 = this.this$0;
                    if (z) {
                        lowLightBoostControl2.stopRunningTaskInternal();
                    } else {
                        xp1Var = lowLightBoostControl2._updateSignal;
                        if (xp1Var != null) {
                            CoroutineAdaptersKt.propagateTo(this.$signal$inlined, xp1Var);
                        }
                    }
                    this.this$0._updateSignal = this.$signal$inlined;
                    CoroutineAdaptersKt.propagateTo(this.this$0.state3AControl.setPreferredAeModeAsync(this.$lowLightBoost$inlined ? new Integer(6) : null), this.$signal$inlined);
                    final xp1 xp1Var2 = this.$signal$inlined;
                    final LowLightBoostControl lowLightBoostControl5 = this.this$0;
                    xp1Var2.g(new nl3<Throwable, j59>() { // from class: androidx.camera.camera2.impl.LowLightBoostControl$setLowLightBoostAsync$2$1$2
                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Throwable th) {
                            if (aa4.e(xp1Var2, lowLightBoostControl5._updateSignal)) {
                                lowLightBoostControl5._updateSignal = null;
                            }
                        }

                        @Override // defpackage.nl3
                        public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                            invoke2(th);
                            return j59.a;
                        }
                    });
                } else {
                    this.this$0.createFailureResult(this.$signal$inlined, new CameraControl.OperationCanceledException("Camera is not active."));
                    j59 j59Var = j59.a;
                }
            }
            return j59.a;
        }
        if (i != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        zBooleanValue = ((Boolean) obj).booleanValue();
        lowLightBoostControl = this.this$0;
        if (zBooleanValue) {
            lowLightBoostControl.setLiveDataValue(lowLightBoostControl._lowLightBoostState, -1);
            this.this$0.createFailureResult(this.$signal$inlined, new IllegalStateException("Low Light Boost is disabled when expected frame rate range exceeds 30."));
        } else {
            lowLightBoostControl.isLowLightBoostOn = this.$lowLightBoost$inlined;
            if (!this.$lowLightBoost$inlined) {
                LowLightBoostControl lowLightBoostControl6 = this.this$0;
                lowLightBoostControl6.setLiveDataValue(lowLightBoostControl6._lowLightBoostState, -1);
            }
            if (this.this$0.getRequestControl() != null) {
                if (this.$lowLightBoost$inlined) {
                    LowLightBoostControl lowLightBoostControl7 = this.this$0;
                    lowLightBoostControl7.setLiveDataValue(lowLightBoostControl7._lowLightBoostState, 0);
                }
                z = this.$cancelPreviousTask$inlined;
                lowLightBoostControl2 = this.this$0;
                if (z) {
                    lowLightBoostControl2.stopRunningTaskInternal();
                } else {
                    xp1Var = lowLightBoostControl2._updateSignal;
                    if (xp1Var != null) {
                        CoroutineAdaptersKt.propagateTo(this.$signal$inlined, xp1Var);
                    }
                }
                this.this$0._updateSignal = this.$signal$inlined;
                CoroutineAdaptersKt.propagateTo(this.this$0.state3AControl.setPreferredAeModeAsync(this.$lowLightBoost$inlined ? new Integer(6) : null), this.$signal$inlined);
                final xp1<j59> xp1Var3 = this.$signal$inlined;
                final LowLightBoostControl lowLightBoostControl8 = this.this$0;
                xp1Var3.g(new nl3<Throwable, j59>() { // from class: androidx.camera.camera2.impl.LowLightBoostControl$setLowLightBoostAsync$2$1$2
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th) {
                        if (aa4.e(xp1Var3, lowLightBoostControl8._updateSignal)) {
                            lowLightBoostControl8._updateSignal = null;
                        }
                    }

                    @Override // defpackage.nl3
                    public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                        invoke2(th);
                        return j59.a;
                    }
                });
            } else {
                this.this$0.createFailureResult(this.$signal$inlined, new CameraControl.OperationCanceledException("Camera is not active."));
                j59 j59Var2 = j59.a;
            }
        }
        return j59.a;
    }
}
