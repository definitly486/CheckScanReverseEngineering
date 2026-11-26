package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.jd8;
import defpackage.kz1;
import defpackage.pg8;
import defpackage.r57;
import defpackage.xp1;
import defpackage.y22;
import defpackage.yp1;
import defpackage.yv8;
import defpackage.z22;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraAvailabilityMonitor$startMonitoring$2 implements CameraAvailabilityMonitor.Session {
    private final CopyOnWriteArrayList<xp1<j59>> listeners;
    private final y22 scope;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$startMonitoring$2$1", f = "RetryingCameraStateOpener.kt", l = {170}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ String $cameraId;
        int label;
        final /* synthetic */ Camera2CameraAvailabilityMonitor this$0;
        final /* synthetic */ Camera2CameraAvailabilityMonitor$startMonitoring$2 this$1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Camera2CameraAvailabilityMonitor camera2CameraAvailabilityMonitor, String str, Camera2CameraAvailabilityMonitor$startMonitoring$2 camera2CameraAvailabilityMonitor$startMonitoring$2, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = camera2CameraAvailabilityMonitor;
            this.$cameraId = str;
            this.this$1 = camera2CameraAvailabilityMonitor$startMonitoring$2;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, this.$cameraId, this.this$1, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                hd3 hd3Var = this.this$0.availableCameraFlow;
                final String str = this.$cameraId;
                final Camera2CameraAvailabilityMonitor$startMonitoring$2 camera2CameraAvailabilityMonitor$startMonitoring$2 = this.this$1;
                id3 id3Var = new id3() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor.startMonitoring.2.1.1
                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return m756emit0r8Bogc(((CameraId) obj2).m358unboximpl(), e02Var);
                    }

                    /* JADX INFO: renamed from: emit-0r8Bogc, reason: not valid java name */
                    public final Object m756emit0r8Bogc(String str2, e02<? super j59> e02Var) {
                        if (CameraId.m354equalsimpl0(str2, str)) {
                            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, ((Object) CameraId.m357toStringimpl(str2)) + " has become available! Notifying listeners...");
                            }
                            Iterator it = camera2CameraAvailabilityMonitor$startMonitoring$2.listeners.iterator();
                            it.getClass();
                            while (it.hasNext()) {
                                ((xp1) it.next()).f(j59.a);
                            }
                        }
                        return j59.a;
                    }
                };
                this.label = 1;
                if (hd3Var.collect(id3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public Camera2CameraAvailabilityMonitor$startMonitoring$2(Camera2CameraAvailabilityMonitor camera2CameraAvailabilityMonitor, String str) {
        kz1 kz1VarA = z22.a(camera2CameraAvailabilityMonitor.threads.getBackgroundDispatcher().plus(new jd8(camera2CameraAvailabilityMonitor.cameraPipeJob)));
        this.scope = kz1VarA;
        this.listeners = new CopyOnWriteArrayList<>();
        av0.c(kz1VarA, null, null, new AnonymousClass1(camera2CameraAvailabilityMonitor, str, this, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.compat.CameraAvailabilityMonitor.Session
    public Object awaitAvailableCamera(long j, e02<? super Boolean> e02Var) {
        Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1;
        xp1 xp1Var;
        if (e02Var instanceof Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1) {
            camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 = (Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1) e02Var;
            int i = camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1.label = i - Integer.MIN_VALUE;
            } else {
                camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 = new Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1(this, e02Var);
            }
        } else {
            camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1 = new Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1(this, e02Var);
        }
        Object obj = camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1.label;
        if (i2 == 0) {
            r57.b(obj);
            yp1 yp1Var = new yp1();
            this.listeners.add(yp1Var);
            Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1 camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1 = new Camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1(yp1Var, null);
            camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1.L$0 = yp1Var;
            camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1.label = 1;
            Object objC = yv8.c(j, camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$success$1, camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1);
            if (objC == a32Var) {
                return a32Var;
            }
            obj = objC;
            xp1Var = yp1Var;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            xp1Var = (xp1) camera2CameraAvailabilityMonitor$startMonitoring$2$awaitAvailableCamera$1.L$0;
            r57.b(obj);
        }
        boolean z = obj != null;
        this.listeners.remove(xp1Var);
        return Boolean.valueOf(z);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        z22.b(this.scope, null);
    }
}
