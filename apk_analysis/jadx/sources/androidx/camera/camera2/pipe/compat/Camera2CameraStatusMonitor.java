package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraManager;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.bt7;
import defpackage.e02;
import defpackage.hd3;
import defpackage.ht;
import defpackage.j59;
import defpackage.jd8;
import defpackage.jh2;
import defpackage.kt;
import defpackage.kz1;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.o22;
import defpackage.p91;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.s0;
import defpackage.sg6;
import defpackage.t91;
import defpackage.ug6;
import defpackage.vg5;
import defpackage.w22;
import defpackage.ws6;
import defpackage.xg5;
import defpackage.y22;
import defpackage.y68;
import defpackage.ys7;
import defpackage.z22;
import defpackage.z68;
import defpackage.zs7;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraStatusMonitor implements CameraStatusMonitor {
    private final xg5<CameraStatusMonitor.CameraStatus> _cameraAvailability;
    private final vg5<j59> _cameraPriorities;
    private final y68<CameraStatusMonitor.CameraStatus> cameraAvailability;
    private final String cameraId;
    private final ys7<j59> cameraPriorities;
    private final hd3<CameraStatusMonitor.CameraStatus> cameraStatus;
    private final mb4 cameraStatusJob;
    private final ht closed;
    private final CameraManager manager;
    private final y22 scope;
    private final Threads threads;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1", f = "Camera2CameraStatusMonitor.kt", l = {114}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super CameraStatusMonitor.CameraStatus>, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(Camera2CameraStatusMonitor camera2CameraStatusMonitor, Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1 camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1) {
            camera2CameraStatusMonitor.manager.unregisterAvailabilityCallback(camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = Camera2CameraStatusMonitor.this.new AnonymousClass1(e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super CameraStatusMonitor.CameraStatus> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [android.hardware.camera2.CameraManager$AvailabilityCallback, androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final Camera2CameraStatusMonitor camera2CameraStatusMonitor = Camera2CameraStatusMonitor.this;
                final ?? r1 = new CameraManager.AvailabilityCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraStatusMonitor$cameraStatusFlow$1$availabilityCallback$1
                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraAccessPrioritiesChanged() {
                        Log log = Log.INSTANCE;
                        if (log.getDEBUG_LOGGABLE()) {
                            android.util.Log.d(Log.TAG, "Camera access priorities have changed");
                        }
                        if ((t91.a(ug6Var, CameraStatusMonitor.CameraStatus.CameraPrioritiesChanged.INSTANCE) instanceof p91.b) && log.getWARN_LOGGABLE()) {
                            android.util.Log.w(Log.TAG, "Failed to emit CameraPrioritiesChanged");
                        }
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraAvailable(String str) {
                        str.getClass();
                        if (str.equals(camera2CameraStatusMonitor.cameraId)) {
                            Log log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Camera " + str + " has become available");
                            }
                            if ((t91.a(ug6Var, new CameraStatusMonitor.CameraStatus.CameraAvailable(CameraId.m352constructorimpl(str), null)) instanceof p91.b) && log.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to emit CameraAvailable(" + str + ')');
                            }
                        }
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraUnavailable(String str) {
                        str.getClass();
                        if (str.equals(camera2CameraStatusMonitor.cameraId)) {
                            Log log = Log.INSTANCE;
                            if (log.getDEBUG_LOGGABLE()) {
                                android.util.Log.d(Log.TAG, "Camera " + str + " has become unavailable");
                            }
                            if ((t91.a(ug6Var, new CameraStatusMonitor.CameraStatus.CameraUnavailable(CameraId.m352constructorimpl(str), null)) instanceof p91.b) && log.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to emit CameraUnavailable(" + str + ')');
                            }
                        }
                    }
                };
                int i2 = Build.VERSION.SDK_INT;
                Camera2CameraStatusMonitor camera2CameraStatusMonitor2 = Camera2CameraStatusMonitor.this;
                if (i2 >= 28) {
                    CameraManager cameraManager = camera2CameraStatusMonitor2.manager;
                    cameraManager.getClass();
                    Api28Compat.registerAvailabilityCallback(cameraManager, Camera2CameraStatusMonitor.this.threads.getLightweightExecutor(), r1);
                } else {
                    camera2CameraStatusMonitor2.manager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, Camera2CameraStatusMonitor.this.threads.getCamera2Handler());
                }
                final Camera2CameraStatusMonitor camera2CameraStatusMonitor3 = Camera2CameraStatusMonitor.this;
                ll3 ll3Var = new ll3() { // from class: androidx.camera.camera2.pipe.compat.b
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Camera2CameraStatusMonitor.AnonymousClass1.invokeSuspend$lambda$0(camera2CameraStatusMonitor3, r1);
                    }
                };
                this.label = 1;
                if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
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

    private Camera2CameraStatusMonitor(ws6<CameraManager> ws6Var, Threads threads, String str, mb4 mb4Var) {
        ws6Var.getClass();
        threads.getClass();
        str.getClass();
        mb4Var.getClass();
        this.threads = threads;
        this.cameraId = str;
        this.manager = ws6Var.get();
        kz1 kz1VarA = z22.a(o22.a.C0306a.d(new jd8(mb4Var), threads.getLightweightDispatcher().plus(new w22("CXCP-CameraStatusMonitor"))));
        this.scope = kz1VarA;
        this.closed = kt.a(false);
        z68 z68VarA = px.a(CameraStatusMonitor.CameraStatus.Unknown.INSTANCE);
        this._cameraAvailability = z68VarA;
        this.cameraAvailability = bf3.b(z68VarA);
        zs7 zs7VarB = bt7.b(0, 0, null, 7);
        this._cameraPriorities = zs7VarB;
        this.cameraPriorities = bf3.a(zs7VarB);
        this.cameraStatus = cameraStatusFlow();
        this.cameraStatusJob = av0.c(kz1VarA, null, null, new Camera2CameraStatusMonitor$cameraStatusJob$1(this, null), 3);
    }

    private final hd3<CameraStatusMonitor.CameraStatus> cameraStatusFlow() {
        return s0.a(new AnonymousClass1(null));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed.a()) {
            this.cameraStatusJob.cancel(null);
            z22.b(this.scope, null);
        }
    }

    @Override // androidx.camera.camera2.pipe.internal.CameraStatusMonitor
    public y68<CameraStatusMonitor.CameraStatus> getCameraAvailability() {
        return this.cameraAvailability;
    }

    @Override // androidx.camera.camera2.pipe.internal.CameraStatusMonitor
    public ys7<j59> getCameraPriorities() {
        return this.cameraPriorities;
    }

    public /* synthetic */ Camera2CameraStatusMonitor(ws6 ws6Var, Threads threads, String str, mb4 mb4Var, jh2 jh2Var) {
        this(ws6Var, threads, str, mb4Var);
    }
}
