package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.PruningProcessingQueue;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.cl5;
import defpackage.dt3;
import defpackage.e02;
import defpackage.f02;
import defpackage.im1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.me0;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.r57;
import defpackage.ui5;
import defpackage.xp1;
import defpackage.y22;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class PruningCamera2DeviceManager implements Camera2DeviceManager {
    private final Set<ActiveCamera> activeCameras;
    private final Camera2DeviceCloser camera2DeviceCloser;
    private final Camera2ErrorProcessor camera2ErrorProcessor;
    private final List<PendingRequestOpen> pendingRequestOpens;
    private final Permissions permissions;
    private final PruningProcessingQueue<CameraRequest> queue;
    private final RetryingCameraStateOpener retryingCameraStateOpener;
    private final y22 scope;
    private final Threads threads;

    public static final class PendingRequestOpen {
        private final ActiveCamera activeCamera;
        private final RequestOpen request;
        private final Token token;

        public PendingRequestOpen(RequestOpen requestOpen, ActiveCamera activeCamera, Token token) {
            requestOpen.getClass();
            activeCamera.getClass();
            token.getClass();
            this.request = requestOpen;
            this.activeCamera = activeCamera;
            this.token = token;
        }

        public final ActiveCamera getActiveCamera() {
            return this.activeCamera;
        }

        public final RequestOpen getRequest() {
            return this.request;
        }

        public final Token getToken() {
            return this.token;
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", f = "Camera2DeviceManager.kt", l = {TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO}, m = "connectPendingRequestOpens", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.connectPendingRequestOpens(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestClose$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", f = "Camera2DeviceManager.kt", l = {465, 469}, m = "processRequestClose", v = 1)
    public static final class C04091 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C04091(e02<? super C04091> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestClose(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", f = "Camera2DeviceManager.kt", l = {493, 498}, m = "processRequestCloseAll", v = 1)
    public static final class C04101 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C04101(e02<? super C04101> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestCloseAll(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseById$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", f = "Camera2DeviceManager.kt", l = {478, 485}, m = "processRequestCloseById", v = 1)
    public static final class C04111 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C04111(e02<? super C04111> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestCloseById(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestOpen$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager", f = "Camera2DeviceManager.kt", l = {391, 398, 404, 436, 437, 445}, m = "processRequestOpen", v = 1)
    public static final class C04121 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C04121(e02<? super C04121> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PruningCamera2DeviceManager.this.processRequestOpen(null, this);
        }
    }

    public PruningCamera2DeviceManager(Permissions permissions, RetryingCameraStateOpener retryingCameraStateOpener, Camera2DeviceCloser camera2DeviceCloser, Camera2ErrorProcessor camera2ErrorProcessor, Threads threads) {
        permissions.getClass();
        retryingCameraStateOpener.getClass();
        camera2DeviceCloser.getClass();
        camera2ErrorProcessor.getClass();
        threads.getClass();
        this.permissions = permissions;
        this.retryingCameraStateOpener = retryingCameraStateOpener;
        this.camera2DeviceCloser = camera2DeviceCloser;
        this.camera2ErrorProcessor = camera2ErrorProcessor;
        this.threads = threads;
        y22 cameraPipeScope = threads.getCameraPipeScope();
        this.scope = cameraPipeScope;
        this.queue = PruningProcessingQueue.Companion.processIn(new PruningProcessingQueue(0, new PruningCamera2DeviceManager$queue$1(this), null, new PruningCamera2DeviceManager$queue$2(this, null), 5, null), cameraPipeScope);
        this.activeCameras = new LinkedHashSet();
        this.pendingRequestOpens = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0079  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:43:0x0104 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:48:0x00e6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0102 -> B:44:0x0105). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:34:0x00cf
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object connectPendingRequestOpens(java.util.Set<androidx.camera.camera2.pipe.CameraId> r10, defpackage.e02<? super defpackage.j59> r11) {
        /*
            Method dump skipped, instruction units count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.connectPendingRequestOpens(java.util.Set, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object disconnectPendingRequestOpens(List<PendingRequestOpen> list, e02<? super j59> e02Var) {
        for (PendingRequestOpen pendingRequestOpen : list) {
            pendingRequestOpen.getToken().release();
            this.pendingRequestOpens.remove(pendingRequestOpen);
        }
        return j59.a;
    }

    private final <T> Integer firstFromIndexOrNull(List<? extends T> list, int i, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        while (i < size) {
            if (nl3Var.invoke(list.get(i)).booleanValue()) {
                return Integer.valueOf(i);
            }
            i++;
        }
        return null;
    }

    private final void onRemoved(CameraRequest cameraRequest) {
        if (cameraRequest instanceof RequestOpen) {
            VirtualCamera.m839disconnectTPqeGZw$default(((RequestOpen) cameraRequest).getVirtualCamera(), null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX INFO: renamed from: openCameraWithRetry-zDSwpeU, reason: not valid java name */
    public final Object m814openCameraWithRetryzDSwpeU(String str, List<CameraId> list, nl3<? super j59, Boolean> nl3Var, y22 y22Var, e02<? super OpenVirtualCameraResult> e02Var) {
        PruningCamera2DeviceManager$openCameraWithRetry$1 pruningCamera2DeviceManager$openCameraWithRetry$1;
        if (e02Var instanceof PruningCamera2DeviceManager$openCameraWithRetry$1) {
            pruningCamera2DeviceManager$openCameraWithRetry$1 = (PruningCamera2DeviceManager$openCameraWithRetry$1) e02Var;
            int i = pruningCamera2DeviceManager$openCameraWithRetry$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                pruningCamera2DeviceManager$openCameraWithRetry$1.label = i - Integer.MIN_VALUE;
            } else {
                pruningCamera2DeviceManager$openCameraWithRetry$1 = new PruningCamera2DeviceManager$openCameraWithRetry$1(this, e02Var);
            }
        } else {
            pruningCamera2DeviceManager$openCameraWithRetry$1 = new PruningCamera2DeviceManager$openCameraWithRetry$1(this, e02Var);
        }
        Object objMo827openCameraWithRetryaeCOTgg = pruningCamera2DeviceManager$openCameraWithRetry$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = pruningCamera2DeviceManager$openCameraWithRetry$1.label;
        jh2 jh2Var = null;
        int i3 = 1;
        if (i2 == 0) {
            r57.b(objMo827openCameraWithRetryaeCOTgg);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Opening " + ((Object) CameraId.m357toStringimpl(str)) + " with retries...");
            }
            RetryingCameraStateOpener retryingCameraStateOpener = this.retryingCameraStateOpener;
            Camera2DeviceCloser camera2DeviceCloser = this.camera2DeviceCloser;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$0 = str;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$1 = list;
            pruningCamera2DeviceManager$openCameraWithRetry$1.L$2 = y22Var;
            pruningCamera2DeviceManager$openCameraWithRetry$1.label = 1;
            objMo827openCameraWithRetryaeCOTgg = retryingCameraStateOpener.mo827openCameraWithRetryaeCOTgg(str, camera2DeviceCloser, nl3Var, pruningCamera2DeviceManager$openCameraWithRetry$1);
            if (objMo827openCameraWithRetryaeCOTgg == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            y22Var = (y22) pruningCamera2DeviceManager$openCameraWithRetry$1.L$2;
            list = (List) pruningCamera2DeviceManager$openCameraWithRetry$1.L$1;
            str = (String) pruningCamera2DeviceManager$openCameraWithRetry$1.L$0;
            r57.b(objMo827openCameraWithRetryaeCOTgg);
        }
        OpenCameraResult openCameraResult = (OpenCameraResult) objMo827openCameraWithRetryaeCOTgg;
        if (openCameraResult.getCameraState() == null) {
            return new OpenVirtualCameraResult.Error(openCameraResult.m811getErrorCodemVEW8x0(), jh2Var);
        }
        return new OpenVirtualCameraResult.Success(new ActiveCamera(openCameraResult.getCameraState(), qn1.y0(qn1.i0(CameraId.m351boximpl(str), list)), y22Var, new ui5(this, i3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 openCameraWithRetry_zDSwpeU$lambda$1(PruningCamera2DeviceManager pruningCamera2DeviceManager, ActiveCamera activeCamera) {
        activeCamera.getClass();
        pruningCamera2DeviceManager.queue.tryEmit(new RequestClose(activeCamera));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean prewarm_EfqyGwQ$lambda$0(j59 j59Var) {
        j59Var.getClass();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object process(CameraRequest cameraRequest, e02<? super j59> e02Var) {
        if (cameraRequest instanceof RequestOpen) {
            Object objProcessRequestOpen = processRequestOpen((RequestOpen) cameraRequest, e02Var);
            return objProcessRequestOpen == a32.COROUTINE_SUSPENDED ? objProcessRequestOpen : j59.a;
        }
        if (cameraRequest instanceof RequestClose) {
            Object objProcessRequestClose = processRequestClose((RequestClose) cameraRequest, e02Var);
            return objProcessRequestClose == a32.COROUTINE_SUSPENDED ? objProcessRequestClose : j59.a;
        }
        if (cameraRequest instanceof RequestCloseById) {
            Object objProcessRequestCloseById = processRequestCloseById((RequestCloseById) cameraRequest, e02Var);
            return objProcessRequestCloseById == a32.COROUTINE_SUSPENDED ? objProcessRequestCloseById : j59.a;
        }
        if (cameraRequest instanceof RequestCloseAll) {
            Object objProcessRequestCloseAll = processRequestCloseAll((RequestCloseAll) cameraRequest, e02Var);
            return objProcessRequestCloseAll == a32.COROUTINE_SUSPENDED ? objProcessRequestCloseAll : j59.a;
        }
        me0.e();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ca, code lost:
    
        if (r9.awaitClosed(r0) == r1) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestClose(androidx.camera.camera2.pipe.compat.RequestClose r10, defpackage.e02<? super defpackage.j59> r11) {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.processRequestClose(androidx.camera.camera2.pipe.compat.RequestClose, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x0084  */
    /* JADX WARN: Code duplicated, block: B:35:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:? A[LOOP:0: B:27:0x007e->B:37:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        if (disconnectPendingRequestOpens(r7, r0) == r1) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestCloseAll(androidx.camera.camera2.pipe.compat.RequestCloseAll r6, defpackage.e02<? super defpackage.j59> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.C04101
            if (r0 == 0) goto L13
            r0 = r7
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1 r0 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.C04101) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1 r0 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L39
            if (r2 != r3) goto L32
            java.lang.Object r6 = r0.L$1
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r2 = r0.L$0
            androidx.camera.camera2.pipe.compat.RequestCloseAll r2 = (androidx.camera.camera2.pipe.compat.RequestCloseAll) r2
            defpackage.r57.b(r7)
            goto L7e
        L32:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L39:
            java.lang.Object r6 = r0.L$0
            androidx.camera.camera2.pipe.compat.RequestCloseAll r6 = (androidx.camera.camera2.pipe.compat.RequestCloseAll) r6
            defpackage.r57.b(r7)
            goto L60
        L41:
            defpackage.r57.b(r7)
            androidx.camera.camera2.pipe.core.Log r7 = androidx.camera.camera2.pipe.core.Log.INSTANCE
            boolean r7 = r7.getINFO_LOGGABLE()
            if (r7 == 0) goto L53
            java.lang.String r7 = "CXCP"
            java.lang.String r2 = "PruningCamera2DeviceManager#processRequestCloseAll()"
            android.util.Log.i(r7, r2)
        L53:
            java.util.List<androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$PendingRequestOpen> r7 = r5.pendingRequestOpens
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = r5.disconnectPendingRequestOpens(r7, r0)
            if (r7 != r1) goto L60
            goto L96
        L60:
            java.util.Set<androidx.camera.camera2.pipe.compat.ActiveCamera> r7 = r5.activeCameras
            java.util.Iterator r7 = r7.iterator()
        L66:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto L76
            java.lang.Object r2 = r7.next()
            androidx.camera.camera2.pipe.compat.ActiveCamera r2 = (androidx.camera.camera2.pipe.compat.ActiveCamera) r2
            r2.close()
            goto L66
        L76:
            java.util.Set<androidx.camera.camera2.pipe.compat.ActiveCamera> r7 = r5.activeCameras
            java.util.Iterator r7 = r7.iterator()
            r2 = r6
            r6 = r7
        L7e:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L97
            java.lang.Object r7 = r6.next()
            androidx.camera.camera2.pipe.compat.ActiveCamera r7 = (androidx.camera.camera2.pipe.compat.ActiveCamera) r7
            r0.L$0 = r2
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r7 = r7.awaitClosed(r0)
            if (r7 != r1) goto L7e
        L96:
            return r1
        L97:
            java.util.Set<androidx.camera.camera2.pipe.compat.ActiveCamera> r5 = r5.activeCameras
            r5.clear()
            xp1 r5 = r2.getDeferred()
            j59 r6 = defpackage.j59.a
            r5.f(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.processRequestCloseAll(androidx.camera.camera2.pipe.compat.RequestCloseAll, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object processRequestCloseById(RequestCloseById requestCloseById, e02<? super j59> e02Var) {
        C04111 c04111;
        RequestCloseById requestCloseById2;
        String str;
        Object next;
        RequestCloseById requestCloseById3;
        if (e02Var instanceof C04111) {
            c04111 = (C04111) e02Var;
            int i = c04111.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04111.label = i - Integer.MIN_VALUE;
            } else {
                c04111 = new C04111(e02Var);
            }
        } else {
            c04111 = new C04111(e02Var);
        }
        Object obj = c04111.result;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = c04111.label;
        if (i2 != 0) {
            if (i2 == 1) {
                str = (String) c04111.L$1;
                requestCloseById2 = (RequestCloseById) c04111.L$0;
                r57.b(obj);
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                requestCloseById3 = (RequestCloseById) c04111.L$0;
                r57.b(obj);
            }
            requestCloseById2 = requestCloseById3;
            xp1<j59> deferred = requestCloseById2.getDeferred();
            j59 j59Var = j59.a;
            deferred.f(j59Var);
            return j59Var;
        }
        r57.b(obj);
        String strM824getActiveCameraIdDz_R5H8 = requestCloseById.m824getActiveCameraIdDz_R5H8();
        if (Log.INSTANCE.getINFO_LOGGABLE()) {
            android.util.Log.i(Log.TAG, "PruningCamera2DeviceManager#processRequestCloseById(" + ((Object) CameraId.m357toStringimpl(requestCloseById.m824getActiveCameraIdDz_R5H8())) + ')');
        }
        List<PendingRequestOpen> list = this.pendingRequestOpens;
        ArrayList arrayList = new ArrayList();
        for (Object obj3 : list) {
            if (CameraId.m354equalsimpl0(((PendingRequestOpen) obj3).getRequest().getVirtualCamera().m842getCameraIdDz_R5H8(), strM824getActiveCameraIdDz_R5H8)) {
                arrayList.add(obj3);
            }
        }
        c04111.L$0 = requestCloseById;
        c04111.L$1 = strM824getActiveCameraIdDz_R5H8;
        c04111.label = 1;
        if (disconnectPendingRequestOpens(arrayList, c04111) != obj2) {
            requestCloseById2 = requestCloseById;
            str = strM824getActiveCameraIdDz_R5H8;
        }
        return obj2;
        Iterator<T> it = this.activeCameras.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!CameraId.m354equalsimpl0(((ActiveCamera) next).m730getCameraIdDz_R5H8(), str));
        ActiveCamera activeCamera = (ActiveCamera) next;
        if (activeCamera != null) {
            this.activeCameras.remove(activeCamera);
            activeCamera.close();
            c04111.L$0 = requestCloseById2;
            c04111.L$1 = null;
            c04111.label = 2;
            if (activeCamera.awaitClosed(c04111) != obj2) {
                requestCloseById3 = requestCloseById2;
                requestCloseById2 = requestCloseById3;
            }
            return obj2;
        }
        xp1<j59> deferred2 = requestCloseById2.getDeferred();
        j59 j59Var2 = j59.a;
        deferred2.f(j59Var2);
        return j59Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:102:0x029a  */
    /* JADX WARN: Code duplicated, block: B:105:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:111:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:113:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:115:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:120:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:123:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:125:0x0294 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x0289 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:? A[LOOP:0: B:86:0x0248->B:128:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:? A[LOOP:1: B:94:0x026e->B:129:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x02e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:? A[LOOP:2: B:53:0x0172->B:133:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0164 A[LOOP:3: B:49:0x015e->B:51:0x0164, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x0178  */
    /* JADX WARN: Code duplicated, block: B:63:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:71:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:73:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:76:0x0214  */
    /* JADX WARN: Code duplicated, block: B:78:0x021a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:80:0x0230  */
    /* JADX WARN: Code duplicated, block: B:82:0x023a  */
    /* JADX WARN: Code duplicated, block: B:85:0x0244  */
    /* JADX WARN: Code duplicated, block: B:88:0x024e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0260  */
    /* JADX WARN: Code duplicated, block: B:93:0x026a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0274  */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02c0, code lost:
    
        if (connectPendingRequestOpens(r11, r0) == r1) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02df, code lost:
    
        if (r12.connectTo(r10, r0, r0) == r1) goto L117;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:70:0x01c9, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:73:0x01f9, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestOpen(androidx.camera.camera2.pipe.compat.RequestOpen r11, defpackage.e02<? super defpackage.j59> r12) {
        /*
            Method dump skipped, instruction units count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.processRequestOpen(androidx.camera.camera2.pipe.compat.RequestOpen, e02):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 prune$lambda$2$0(xp1 xp1Var, Throwable th) {
        j59 j59Var = j59.a;
        xp1Var.f(j59Var);
        return j59Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 prune$lambda$6(CameraRequest cameraRequest, Throwable th) {
        xp1<j59> deferred = ((RequestCloseById) cameraRequest).getDeferred();
        j59 j59Var = j59.a;
        deferred.f(j59Var);
        return j59Var;
    }

    private final <T> List<T> removeIndices(List<T> list, Set<Integer> set) {
        ArrayList arrayList = new ArrayList();
        Iterator it = qn1.m0(set).iterator();
        while (it.hasNext()) {
            arrayList.add(list.remove(((Number) it.next()).intValue() - arrayList.size()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x0064  */
    /* JADX WARN: Code duplicated, block: B:24:0x007b  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f  */
    /* JADX WARN: Code duplicated, block: B:64:0x0074 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:? A[LOOP:0: B:17:0x005e->B:66:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008f -> B:28:0x0091). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    /* JADX INFO: renamed from: retrieveActiveCamera-RzXb1QE, reason: not valid java name */
    public final java.lang.Object m815retrieveActiveCameraRzXb1QE(java.lang.String r13, androidx.camera.camera2.pipe.compat.RequestOpen r14, defpackage.e02<? super androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.RetrieveActiveCameraResult> r15) {
        /*
            Method dump skipped, instruction units count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.m815retrieveActiveCameraRzXb1QE(java.lang.String, androidx.camera.camera2.pipe.compat.RequestOpen, e02):java.lang.Object");
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    /* JADX INFO: renamed from: close-EfqyGwQ */
    public mk2<j59> mo766closeEfqyGwQ(String str) {
        str.getClass();
        RequestCloseById requestCloseById = new RequestCloseById(str, null);
        if (!this.queue.tryEmit(requestCloseById)) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e(Log.TAG, "Camera close by ID request failed for " + ((Object) CameraId.m357toStringimpl(str)) + '!');
            }
            requestCloseById.getDeferred().f(j59.a);
        }
        return requestCloseById.getDeferred();
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    public mk2<j59> closeAll(boolean z) {
        if (z) {
            this.retryingCameraStateOpener.cancelOpen();
        }
        RequestCloseAll requestCloseAll = new RequestCloseAll();
        if (!this.queue.tryEmit(requestCloseAll)) {
            if (Log.INSTANCE.getERROR_LOGGABLE()) {
                android.util.Log.e(Log.TAG, "Camera close all request failed!");
            }
            requestCloseAll.getDeferred().f(j59.a);
        }
        return requestCloseAll.getDeferred();
    }

    public final Threads getThreads() {
        return this.threads;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    /* JADX INFO: renamed from: open-zDSwpeU */
    public VirtualCamera mo767openzDSwpeU(String str, List<CameraId> list, GraphListener graphListener, boolean z, nl3<? super j59, Boolean> nl3Var) {
        str.getClass();
        list.getClass();
        graphListener.getClass();
        nl3Var.getClass();
        jh2 jh2Var = null;
        VirtualCameraState virtualCameraState = new VirtualCameraState(str, graphListener, this.scope, jh2Var);
        if (this.queue.tryEmit(new RequestOpen(virtualCameraState, list, graphListener, z, nl3Var))) {
            return virtualCameraState;
        }
        if (Log.INSTANCE.getERROR_LOGGABLE()) {
            android.util.Log.e(Log.TAG, "Camera open request failed for " + ((Object) CameraId.m357toStringimpl(str)) + '!');
        }
        graphListener.onGraphError(new GraphState.GraphStateError(CameraError.Companion.m292getERROR_CAMERA_OPENERv7Vf74A(), false, jh2Var));
        return null;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceManager
    /* JADX INFO: renamed from: prewarm-EfqyGwQ */
    public void mo768prewarmEfqyGwQ(String str) {
        str.getClass();
        mo767openzDSwpeU(str, kx2.b, NoOpGraphListener.INSTANCE, true, new dt3(1));
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0140  */
    public final void prune$camera_camera2_pipe(List<CameraRequest> list) {
        int i;
        int iNextIndex;
        Integer numValueOf;
        boolean zContains;
        list.getClass();
        List<CameraRequest> list2 = list;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (((CameraRequest) obj) instanceof RequestClose) {
                arrayList.add(obj);
            }
        }
        list.removeAll(arrayList);
        Iterator it = qn1.j0(arrayList).iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            } else {
                list.add(0, (CameraRequest) it.next());
            }
        }
        ListIterator<CameraRequest> listIterator = list.listIterator(list.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                if (listIterator.previous() instanceof RequestCloseAll) {
                    iNextIndex = listIterator.nextIndex();
                    break;
                }
            } else {
                iNextIndex = -1;
                break;
            }
        }
        int i2 = 1;
        if (iNextIndex > 0) {
            CameraRequest cameraRequest = list.get(iNextIndex);
            cameraRequest.getClass();
            RequestCloseAll requestCloseAll = (RequestCloseAll) cameraRequest;
            for (int i3 = 0; i3 < iNextIndex; i3++) {
                CameraRequest cameraRequestRemove = list.remove(0);
                xp1<j59> deferred = cameraRequestRemove instanceof RequestCloseById ? ((RequestCloseById) cameraRequestRemove).getDeferred() : cameraRequestRemove instanceof RequestCloseAll ? ((RequestCloseAll) cameraRequestRemove).getDeferred() : null;
                if (deferred != null) {
                    requestCloseAll.getDeferred().g(new cl5(deferred, i2));
                }
                onRemoved(cameraRequestRemove);
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i4 = 0;
        for (CameraRequest cameraRequest2 : list2) {
            int i5 = i4 + 1;
            if (!(cameraRequest2 instanceof RequestOpen)) {
                if (!(cameraRequest2 instanceof RequestCloseById)) {
                    numValueOf = null;
                    break;
                }
                int size = list.size();
                int i6 = i5;
                while (true) {
                    if (i6 >= size) {
                        numValueOf = null;
                        break;
                    }
                    CameraRequest cameraRequest3 = list.get(i6);
                    if ((cameraRequest3 instanceof RequestCloseById) && CameraId.m354equalsimpl0(((RequestCloseById) cameraRequest3).m824getActiveCameraIdDz_R5H8(), ((RequestCloseById) cameraRequest2).m824getActiveCameraIdDz_R5H8())) {
                        numValueOf = Integer.valueOf(i6);
                        break;
                    }
                    i6++;
                }
            } else {
                RequestOpen requestOpen = (RequestOpen) cameraRequest2;
                String strM842getCameraIdDz_R5H8 = requestOpen.getVirtualCamera().m842getCameraIdDz_R5H8();
                Set setY0 = qn1.y0(qn1.i0(CameraId.m351boximpl(strM842getCameraIdDz_R5H8), requestOpen.getSharedCameraIds()));
                int size2 = list.size();
                int i7 = i5;
                while (true) {
                    if (i7 >= size2) {
                        numValueOf = null;
                        break;
                    }
                    CameraRequest cameraRequest4 = list.get(i7);
                    if (cameraRequest4 instanceof RequestCloseById) {
                        zContains = setY0.contains(CameraId.m351boximpl(((RequestCloseById) cameraRequest4).m824getActiveCameraIdDz_R5H8()));
                    } else if (cameraRequest4 instanceof RequestOpen) {
                        int i8 = (requestOpen.isPrewarm() || !((RequestOpen) cameraRequest4).isPrewarm()) ? i2 : i;
                        RequestOpen requestOpen2 = (RequestOpen) cameraRequest4;
                        String strM842getCameraIdDz_R5H9 = requestOpen2.getVirtualCamera().m842getCameraIdDz_R5H8();
                        Set setY1 = qn1.y0(qn1.i0(CameraId.m351boximpl(strM842getCameraIdDz_R5H9), requestOpen2.getSharedCameraIds()));
                        if (i8 == 0 || (!CameraId.m354equalsimpl0(strM842getCameraIdDz_R5H8, strM842getCameraIdDz_R5H9) && setY0.equals(setY1))) {
                            zContains = false;
                        } else {
                            zContains = true;
                        }
                    } else {
                        zContains = false;
                    }
                    if (zContains) {
                        numValueOf = Integer.valueOf(i7);
                        break;
                    } else {
                        i7++;
                        i = 0;
                        i2 = 1;
                    }
                }
            }
            if (numValueOf != null) {
                CameraRequest cameraRequest5 = list.get(numValueOf.intValue());
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d(Log.TAG, cameraRequest2 + " is pruned by " + cameraRequest5);
                }
                linkedHashSet.add(Integer.valueOf(i4));
                if ((cameraRequest2 instanceof RequestCloseById) && (cameraRequest5 instanceof RequestCloseById)) {
                    ((RequestCloseById) cameraRequest5).getDeferred().g(new im1((RequestCloseById) cameraRequest2, 2));
                }
            }
            i4 = i5;
            i = 0;
            i2 = 1;
        }
        Iterator it2 = removeIndices(list, linkedHashSet).iterator();
        while (it2.hasNext()) {
            onRemoved((CameraRequest) it2.next());
        }
    }

    public interface OpenVirtualCameraResult {

        public static final class Success implements OpenVirtualCameraResult {
            private final ActiveCamera activeCamera;

            public Success(ActiveCamera activeCamera) {
                activeCamera.getClass();
                this.activeCamera = activeCamera;
            }

            public static /* synthetic */ Success copy$default(Success success, ActiveCamera activeCamera, int i, Object obj) {
                if ((i & 1) != 0) {
                    activeCamera = success.activeCamera;
                }
                return success.copy(activeCamera);
            }

            public final ActiveCamera component1() {
                return this.activeCamera;
            }

            public final Success copy(ActiveCamera activeCamera) {
                activeCamera.getClass();
                return new Success(activeCamera);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Success) && aa4.e(this.activeCamera, ((Success) obj).activeCamera);
            }

            public final ActiveCamera getActiveCamera() {
                return this.activeCamera;
            }

            public int hashCode() {
                return this.activeCamera.hashCode();
            }

            public String toString() {
                return "Success(activeCamera=" + this.activeCamera + ')';
            }
        }

        public static final class Error implements OpenVirtualCameraResult {
            private final CameraError lastCameraError;

            private Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            /* JADX INFO: renamed from: copy-TPqeGZw$default, reason: not valid java name */
            public static /* synthetic */ Error m816copyTPqeGZw$default(Error error, CameraError cameraError, int i, Object obj) {
                if ((i & 1) != 0) {
                    cameraError = error.lastCameraError;
                }
                return error.m818copyTPqeGZw(cameraError);
            }

            /* JADX INFO: renamed from: component1-mVEW8x0, reason: not valid java name */
            public final CameraError m817component1mVEW8x0() {
                return this.lastCameraError;
            }

            /* JADX INFO: renamed from: copy-TPqeGZw, reason: not valid java name */
            public final Error m818copyTPqeGZw(CameraError cameraError) {
                return new Error(cameraError, null);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && aa4.e(this.lastCameraError, ((Error) obj).lastCameraError);
            }

            /* JADX INFO: renamed from: getLastCameraError-mVEW8x0, reason: not valid java name */
            public final CameraError m819getLastCameraErrormVEW8x0() {
                return this.lastCameraError;
            }

            public int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return CameraError.m280hashCodeimpl(cameraError.m283unboximpl());
            }

            public String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }

            public /* synthetic */ Error(CameraError cameraError, jh2 jh2Var) {
                this(cameraError);
            }
        }
    }

    public interface RetrieveActiveCameraResult {

        public static final class Success implements RetrieveActiveCameraResult {
            private final ActiveCamera activeCamera;
            private final Token token;

            public Success(ActiveCamera activeCamera, Token token) {
                activeCamera.getClass();
                token.getClass();
                this.activeCamera = activeCamera;
                this.token = token;
            }

            public static /* synthetic */ Success copy$default(Success success, ActiveCamera activeCamera, Token token, int i, Object obj) {
                if ((i & 1) != 0) {
                    activeCamera = success.activeCamera;
                }
                if ((i & 2) != 0) {
                    token = success.token;
                }
                return success.copy(activeCamera, token);
            }

            public final ActiveCamera component1() {
                return this.activeCamera;
            }

            public final Token component2() {
                return this.token;
            }

            public final Success copy(ActiveCamera activeCamera, Token token) {
                activeCamera.getClass();
                token.getClass();
                return new Success(activeCamera, token);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return aa4.e(this.activeCamera, success.activeCamera) && aa4.e(this.token, success.token);
            }

            public final ActiveCamera getActiveCamera() {
                return this.activeCamera;
            }

            public final Token getToken() {
                return this.token;
            }

            public int hashCode() {
                return this.token.hashCode() + (this.activeCamera.hashCode() * 31);
            }

            public String toString() {
                return "Success(activeCamera=" + this.activeCamera + ", token=" + this.token + ')';
            }
        }

        public static final class Error implements RetrieveActiveCameraResult {
            private final CameraError lastCameraError;

            private Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            /* JADX INFO: renamed from: copy-TPqeGZw$default, reason: not valid java name */
            public static /* synthetic */ Error m820copyTPqeGZw$default(Error error, CameraError cameraError, int i, Object obj) {
                if ((i & 1) != 0) {
                    cameraError = error.lastCameraError;
                }
                return error.m822copyTPqeGZw(cameraError);
            }

            /* JADX INFO: renamed from: component1-mVEW8x0, reason: not valid java name */
            public final CameraError m821component1mVEW8x0() {
                return this.lastCameraError;
            }

            /* JADX INFO: renamed from: copy-TPqeGZw, reason: not valid java name */
            public final Error m822copyTPqeGZw(CameraError cameraError) {
                return new Error(cameraError, null);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && aa4.e(this.lastCameraError, ((Error) obj).lastCameraError);
            }

            /* JADX INFO: renamed from: getLastCameraError-mVEW8x0, reason: not valid java name */
            public final CameraError m823getLastCameraErrormVEW8x0() {
                return this.lastCameraError;
            }

            public int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return CameraError.m280hashCodeimpl(cameraError.m283unboximpl());
            }

            public String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }

            public /* synthetic */ Error(CameraError cameraError, jh2 jh2Var) {
                this(cameraError);
            }
        }
    }
}
