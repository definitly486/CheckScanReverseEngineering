package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Trace;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.config.CameraPipeContext;
import androidx.camera.camera2.pipe.config.CameraPipeJob;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import defpackage.a32;
import defpackage.aa4;
import defpackage.af3;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.bt7;
import defpackage.c32;
import defpackage.cl4;
import defpackage.du7;
import defpackage.e02;
import defpackage.eu7;
import defpackage.fh8;
import defpackage.fy6;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jd8;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.kz1;
import defpackage.ll3;
import defpackage.lz0;
import defpackage.mb4;
import defpackage.me0;
import defpackage.mk2;
import defpackage.nh;
import defpackage.o22;
import defpackage.ox2;
import defpackage.p91;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.s0;
import defpackage.sg6;
import defpackage.t91;
import defpackage.ug6;
import defpackage.w22;
import defpackage.w68;
import defpackage.ws6;
import defpackage.y22;
import defpackage.z22;
import defpackage.zd3;
import defpackage.zs7;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2DeviceCache {
    private final Map<CameraId, mk2<Camera2DeviceSetupWrapper>> camera2DeviceSetupWrapperCache;
    private final Map<CameraId, mk2<CameraDeviceSetupCompat>> cameraDeviceSetupCache;
    private final cl4 cameraDeviceSetupCompatFactory$delegate;
    private final ws6<CameraDeviceSetupCompatFactory> cameraDeviceSetupCompatFactoryProvider;
    private final CameraErrorListener cameraErrorListener;
    private final hd3<List<CameraId>> cameraIds;
    private final ws6<CameraManager> cameraManager;
    private Set<? extends Set<CameraId>> concurrentCameras;
    private final Context context;
    private final Object lock;
    private final int minimumCameraCount;
    private List<CameraId> openableCameras;
    private final y22 scope;
    private final Threads threads;

    public Camera2DeviceCache(ws6<CameraManager> ws6Var, Threads threads, @CameraPipeContext Context context, PackageManager packageManager, CameraErrorListener cameraErrorListener, ws6<CameraDeviceSetupCompatFactory> ws6Var2, CameraPipeLifetime cameraPipeLifetime, @CameraPipeJob mb4 mb4Var) {
        ws6Var.getClass();
        threads.getClass();
        context.getClass();
        packageManager.getClass();
        cameraErrorListener.getClass();
        ws6Var2.getClass();
        cameraPipeLifetime.getClass();
        mb4Var.getClass();
        this.cameraManager = ws6Var;
        this.threads = threads;
        this.context = context;
        this.cameraErrorListener = cameraErrorListener;
        this.cameraDeviceSetupCompatFactoryProvider = ws6Var2;
        kz1 kz1VarA = z22.a(o22.a.C0306a.d(new jd8(mb4Var), threads.getLightweightDispatcher()).plus(new w22("Camera2DeviceCache")));
        this.scope = kz1VarA;
        this.lock = new Object();
        this.cameraDeviceSetupCache = new LinkedHashMap();
        this.camera2DeviceSetupWrapperCache = new LinkedHashMap();
        this.minimumCameraCount = estimateMinInternalCameraCount(packageManager);
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Camera2DeviceCache: Expected minimum camera count = " + this.minimumCameraCount);
        }
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new nh(this, 1));
        hd3 hd3VarC = zd3.c(createCameraIdListFlow());
        w68 w68Var = new w68(0L, Long.MAX_VALUE);
        du7 du7VarC = bf3.c(hd3VarC);
        zs7 zs7VarA = bt7.a(1, du7VarC.b, du7VarC.c);
        this.cameraIds = new fy6(zs7VarA, av0.b(kz1VarA, du7VarC.d, w68Var.equals(eu7.a.a) ? c32.DEFAULT : c32.UNDISPATCHED, new af3(w68Var, du7VarC.a, zs7VarA, bt7.b, null)));
        this.cameraDeviceSetupCompatFactory$delegate = new fh8(new lz0(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(Camera2DeviceCache camera2DeviceCache) {
        z22.b(camera2DeviceCache.scope, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraDeviceSetupCompatFactory cameraDeviceSetupCompatFactory_delegate$lambda$0(Camera2DeviceCache camera2DeviceCache) {
        return camera2DeviceCache.cameraDeviceSetupCompatFactoryProvider.get();
    }

    private final hd3<List<CameraId>> createCameraIdListFlow() {
        return s0.a(new AnonymousClass1(null));
    }

    private final int estimateMinInternalCameraCount(PackageManager packageManager) {
        boolean zHasSystemFeature = packageManager.hasSystemFeature("android.hardware.camera");
        return packageManager.hasSystemFeature("android.hardware.camera.front") ? (zHasSystemFeature ? 1 : 0) + 1 : zHasSystemFeature ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CameraDeviceSetupCompatFactory getCameraDeviceSetupCompatFactory() {
        return (CameraDeviceSetupCompatFactory) this.cameraDeviceSetupCompatFactory$delegate.getValue();
    }

    private final List<CameraId> getUpdatedCameraIds(List<CameraId> list, List<CameraId> list2) {
        return (list2 == null || !(isValidCameraIds(list2) || list == null)) ? list : list2;
    }

    private final boolean isValidCameraIds(List<CameraId> list) {
        return list.size() >= this.minimumCameraCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0039  */
    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    /* JADX WARN: Code duplicated, block: B:38:0x0095  */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x0041, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x0095, please report this as an issue */
    public final void onCameraAvailabilityChanged(ug6<? super List<CameraId>> ug6Var, String str, boolean z) {
        List<CameraId> list;
        synchronized (this.lock) {
            list = this.openableCameras;
        }
        List<CameraId> cameraIds = null;
        if (z) {
            if (list != null) {
                List<CameraId> list2 = list;
                if ((list2 instanceof Collection) && list2.isEmpty()) {
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i(Log.TAG, "New camera " + str + " detected");
                    }
                    cameraIds = readCameraIds();
                } else {
                    Iterator<T> it = list2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            if (Log.INSTANCE.getINFO_LOGGABLE()) {
                                android.util.Log.i(Log.TAG, "New camera " + str + " detected");
                            }
                            cameraIds = readCameraIds();
                        } else if (aa4.e(((CameraId) it.next()).m358unboximpl(), str)) {
                        }
                    }
                }
            } else {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "New camera " + str + " detected");
                }
                cameraIds = readCameraIds();
            }
        } else {
            if (z) {
                me0.e();
                return;
            }
            if (list != null) {
                List<CameraId> list3 = list;
                if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                    Iterator<T> it2 = list3.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (aa4.e(((CameraId) it2.next()).m358unboximpl(), str)) {
                                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                                    android.util.Log.i(Log.TAG, "Unavailable camera " + str + " detected");
                                }
                                cameraIds = readCameraIds();
                            }
                        }
                    }
                }
            } else {
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "Unavailable camera " + str + " detected");
                }
                cameraIds = readCameraIds();
            }
        }
        List<CameraId> updatedCameraIds = getUpdatedCameraIds(list, cameraIds);
        if (updatedCameraIds != null) {
            sendCameraIdList(ug6Var, updatedCameraIds);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<CameraId> readCameraIds() {
        try {
            String[] cameraIdList = this.cameraManager.get().getCameraIdList();
            cameraIdList.getClass();
            ArrayList arrayList = new ArrayList();
            for (String str : cameraIdList) {
                str.getClass();
                String strM352constructorimpl = CameraId.m352constructorimpl(str);
                CameraId cameraIdM351boximpl = strM352constructorimpl != null ? CameraId.m351boximpl(strM352constructorimpl) : null;
                if (cameraIdM351boximpl != null) {
                    arrayList.add(cameraIdM351boximpl);
                }
            }
            if (isValidCameraIds(arrayList)) {
                synchronized (this.lock) {
                    this.openableCameras = arrayList;
                    j59 j59Var = j59.a;
                }
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "Loaded CameraIdList " + arrayList);
                    return arrayList;
                }
            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to query camera ID list: Invalid list returned: " + arrayList + '.');
            }
            return arrayList;
        } catch (CameraAccessException e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to query CameraManager#getCameraIdList!", e);
            }
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to query CameraManager#getCameraIdList!Unexpected ArrayIndexOutOfBoundsException thrown by framework.", e2);
            }
            return null;
        } catch (NullPointerException e3) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to query CameraManager#getCameraIdList!Null was returned by framework.", e3);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendCameraIdList(ug6<? super List<CameraId>> ug6Var, List<CameraId> list) {
        Log log = Log.INSTANCE;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Emitting camera ID list: " + list);
        }
        if ((t91.a(ug6Var, list) instanceof p91.b) && log.getERROR_LOGGABLE()) {
            android.util.Log.e(Log.TAG, "Failed to send camera ID list: " + list + '!');
        }
    }

    public final List<CameraId> awaitCameraIds() {
        List<CameraId> list;
        synchronized (this.lock) {
            list = this.openableCameras;
        }
        return list != null ? list : readCameraIds();
    }

    public final Set<Set<CameraId>> awaitConcurrentCameraIds() {
        Set set;
        if (Build.VERSION.SDK_INT < 30) {
            return ox2.b;
        }
        synchronized (this.lock) {
            set = this.concurrentCameras;
        }
        Set set2 = set;
        if (set2 != null && !set2.isEmpty()) {
            return set;
        }
        CameraManager cameraManager = this.cameraManager.get();
        try {
            cameraManager.getClass();
            Set<Set<String>> concurrentCameraIds = Api30Compat.getConcurrentCameraIds(cameraManager);
            if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                android.util.Log.d(Log.TAG, "Loaded ConcurrentCameraIdsSet " + concurrentCameraIds);
            }
            Set<Set<String>> set3 = concurrentCameraIds;
            ArrayList arrayList = new ArrayList(kn1.q(set3, 10));
            Iterator<T> it = set3.iterator();
            while (it.hasNext()) {
                Set set4 = (Set) it.next();
                ArrayList arrayList2 = new ArrayList(kn1.q(set4, 10));
                Iterator it2 = set4.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(CameraId.m351boximpl(CameraId.m352constructorimpl((String) it2.next())));
                }
                arrayList.add(qn1.y0(arrayList2));
            }
            return qn1.y0(arrayList);
        } catch (CameraAccessException e) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w(Log.TAG, "Failed to query CameraManager#getConcurrentStreamingCameraIds", e);
            return null;
        }
    }

    public final Object getCameraIds(e02<? super List<CameraId>> e02Var) {
        List<CameraId> list;
        synchronized (this.lock) {
            list = this.openableCameras;
        }
        return list != null ? list : av0.d(this.threads.getBackgroundDispatcher(), new AnonymousClass2(null), e02Var);
    }

    public final Object getConcurrentCameraIds(e02<? super Set<? extends Set<CameraId>>> e02Var) {
        Set<? extends Set<CameraId>> set;
        synchronized (this.lock) {
            set = this.concurrentCameras;
        }
        Set<? extends Set<CameraId>> set2 = set;
        return (set2 == null || set2.isEmpty()) ? av0.d(this.threads.getBackgroundDispatcher(), new C04082(null), e02Var) : set;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX INFO: renamed from: getOrInitializeDeviceSetupCompat-0r8Bogc, reason: not valid java name */
    public final Object m764getOrInitializeDeviceSetupCompat0r8Bogc(String str, e02<? super CameraDeviceSetupCompat> e02Var) {
        Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 camera2DeviceCache$getOrInitializeDeviceSetupCompat$1;
        mk2<CameraDeviceSetupCompat> mk2Var;
        if (e02Var instanceof Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1) {
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 = (Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1) e02Var;
            int i = camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label = i - Integer.MIN_VALUE;
            } else {
                camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 = new Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1(this, e02Var);
            }
        } else {
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 = new Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1(this, e02Var);
        }
        Object objZ = camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label;
        if (i2 == 0) {
            r57.b(objZ);
            if (Build.VERSION.SDK_INT < 35) {
                return null;
            }
            synchronized (this.lock) {
                try {
                    Map<CameraId, mk2<CameraDeviceSetupCompat>> map = this.cameraDeviceSetupCache;
                    CameraId cameraIdM351boximpl = CameraId.m351boximpl(str);
                    mk2<CameraDeviceSetupCompat> mk2VarA = map.get(cameraIdM351boximpl);
                    if (mk2VarA == null) {
                        mk2VarA = av0.a(this.scope, this.threads.getBackgroundDispatcher(), null, new Camera2DeviceCache$getOrInitializeDeviceSetupCompat$deferred$1$1$1(str, this, null), 2);
                        map.put(cameraIdM351boximpl, mk2VarA);
                    }
                    mk2Var = mk2VarA;
                } catch (Throwable th) {
                    throw th;
                }
            }
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$0 = str;
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$1 = mk2Var;
            camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.label = 1;
            objZ = mk2Var.Z(camera2DeviceCache$getOrInitializeDeviceSetupCompat$1);
            if (objZ == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mk2<CameraDeviceSetupCompat> mk2Var2 = (mk2) camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$1;
            String str2 = (String) camera2DeviceCache$getOrInitializeDeviceSetupCompat$1.L$0;
            r57.b(objZ);
            mk2Var = mk2Var2;
            str = str2;
        }
        CameraDeviceSetupCompat cameraDeviceSetupCompat = (CameraDeviceSetupCompat) objZ;
        if (cameraDeviceSetupCompat != null) {
            return cameraDeviceSetupCompat;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Removing null CameraDeviceSetupCompat from cache for " + ((Object) CameraId.m357toStringimpl(str)));
        }
        synchronized (this.lock) {
            this.cameraDeviceSetupCache.remove(CameraId.m351boximpl(str), mk2Var);
        }
        return cameraDeviceSetupCompat;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX INFO: renamed from: getOrInitializeDeviceSetupWrapper-0r8Bogc, reason: not valid java name */
    public final Object m765getOrInitializeDeviceSetupWrapper0r8Bogc(String str, e02<? super Camera2DeviceSetupWrapper> e02Var) {
        Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1;
        mk2<Camera2DeviceSetupWrapper> mk2Var;
        if (e02Var instanceof Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1) {
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 = (Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1) e02Var;
            int i = camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label = i - Integer.MIN_VALUE;
            } else {
                camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 = new Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1(this, e02Var);
            }
        } else {
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 = new Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1(this, e02Var);
        }
        Object objZ = camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label;
        if (i2 == 0) {
            r57.b(objZ);
            synchronized (this.lock) {
                try {
                    Map<CameraId, mk2<Camera2DeviceSetupWrapper>> map = this.camera2DeviceSetupWrapperCache;
                    CameraId cameraIdM351boximpl = CameraId.m351boximpl(str);
                    mk2<Camera2DeviceSetupWrapper> mk2VarA = map.get(cameraIdM351boximpl);
                    if (mk2VarA == null) {
                        mk2VarA = av0.a(this.scope, this.threads.getBackgroundDispatcher(), null, new Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1(str, this, null), 2);
                        map.put(cameraIdM351boximpl, mk2VarA);
                    }
                    mk2Var = mk2VarA;
                } catch (Throwable th) {
                    throw th;
                }
            }
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$0 = str;
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$1 = mk2Var;
            camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.label = 1;
            objZ = mk2Var.Z(camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1);
            if (objZ == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mk2<Camera2DeviceSetupWrapper> mk2Var2 = (mk2) camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$1;
            String str2 = (String) camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1.L$0;
            r57.b(objZ);
            mk2Var = mk2Var2;
            str = str2;
        }
        Camera2DeviceSetupWrapper camera2DeviceSetupWrapper = (Camera2DeviceSetupWrapper) objZ;
        if (camera2DeviceSetupWrapper != null) {
            return camera2DeviceSetupWrapper;
        }
        if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
            android.util.Log.d(Log.TAG, "Removing null camera2DeviceSetupWrapper from cache for " + ((Object) CameraId.m357toStringimpl(str)));
        }
        synchronized (this.lock) {
            this.camera2DeviceSetupWrapperCache.remove(CameraId.m351boximpl(str), mk2Var);
        }
        return camera2DeviceSetupWrapper;
    }

    public final void shutdown() {
        z22.b(this.scope, null);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1", f = "Camera2DeviceCache.kt", l = {235}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super List<? extends CameraId>>, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(CameraManager cameraManager, Camera2DeviceCache$createCameraIdListFlow$1$callback$1 camera2DeviceCache$createCameraIdListFlow$1$callback$1) {
            cameraManager.unregisterAvailabilityCallback(camera2DeviceCache$createCameraIdListFlow$1$callback$1);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = Camera2DeviceCache.this.new AnonymousClass1(e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(ug6<? super List<CameraId>> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [android.hardware.camera2.CameraManager$AvailabilityCallback, androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1$callback$1] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            List list;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final Camera2DeviceCache camera2DeviceCache = Camera2DeviceCache.this;
                final ?? r1 = new CameraManager.AvailabilityCallback() { // from class: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$createCameraIdListFlow$1$callback$1
                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraAvailable(String str) {
                        str.getClass();
                        camera2DeviceCache.onCameraAvailabilityChanged(ug6Var, str, true);
                    }

                    @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
                    public void onCameraUnavailable(String str) {
                        str.getClass();
                        camera2DeviceCache.onCameraAvailabilityChanged(ug6Var, str, false);
                    }
                };
                final CameraManager cameraManager = (CameraManager) Camera2DeviceCache.this.cameraManager.get();
                cameraManager.registerAvailabilityCallback((CameraManager.AvailabilityCallback) r1, Camera2DeviceCache.this.threads.getCamera2Handler());
                Object obj2 = Camera2DeviceCache.this.lock;
                Camera2DeviceCache camera2DeviceCache2 = Camera2DeviceCache.this;
                synchronized (obj2) {
                    list = camera2DeviceCache2.openableCameras;
                }
                Camera2DeviceCache camera2DeviceCache3 = Camera2DeviceCache.this;
                if (list != null) {
                    camera2DeviceCache3.sendCameraIdList(ug6Var, list);
                } else {
                    List cameraIds = camera2DeviceCache3.readCameraIds();
                    if (cameraIds != null) {
                        Camera2DeviceCache.this.sendCameraIdList(ug6Var, cameraIds);
                    }
                }
                ll3 ll3Var = new ll3() { // from class: androidx.camera.camera2.pipe.compat.c
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Camera2DeviceCache.AnonymousClass1.invokeSuspend$lambda$1(cameraManager, r1);
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

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(ug6<? super List<? extends CameraId>> ug6Var, e02<? super j59> e02Var) {
            return invoke2((ug6<? super List<CameraId>>) ug6Var, e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getCameraIds$2, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getCameraIds$2", f = "Camera2DeviceCache.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super List<? extends CameraId>>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Camera2DeviceCache.this.new AnonymousClass2(e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(y22 y22Var, e02<? super List<CameraId>> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Debug debug = Debug.INSTANCE;
            Camera2DeviceCache camera2DeviceCache = Camera2DeviceCache.this;
            try {
                Trace.beginSection("readCameraIds");
                Object cameraIds = camera2DeviceCache.readCameraIds();
                if (cameraIds == null) {
                    cameraIds = kx2.b;
                }
                return cameraIds;
            } finally {
                Trace.endSection();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super List<? extends CameraId>> e02Var) {
            return invoke2(y22Var, (e02<? super List<CameraId>>) e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getConcurrentCameraIds$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getConcurrentCameraIds$2", f = "Camera2DeviceCache.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C04082 extends pg8 implements bm3<y22, e02<? super Set<? extends Set<? extends CameraId>>>, Object> {
        int label;

        public C04082(e02<? super C04082> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return Camera2DeviceCache.this.new C04082(e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(y22 y22Var, e02<? super Set<? extends Set<CameraId>>> e02Var) {
            return ((C04082) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Debug debug = Debug.INSTANCE;
            Camera2DeviceCache camera2DeviceCache = Camera2DeviceCache.this;
            try {
                Trace.beginSection("readConcurrentCameraIds");
                Set<Set<CameraId>> setAwaitConcurrentCameraIds = camera2DeviceCache.awaitConcurrentCameraIds();
                Set<Set<CameraId>> set = setAwaitConcurrentCameraIds;
                if (set == null || set.isEmpty()) {
                    setAwaitConcurrentCameraIds = ox2.b;
                } else {
                    synchronized (camera2DeviceCache.lock) {
                        camera2DeviceCache.concurrentCameras = setAwaitConcurrentCameraIds;
                        j59 j59Var = j59.a;
                    }
                }
                Trace.endSection();
                return setAwaitConcurrentCameraIds;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, e02<? super Set<? extends Set<? extends CameraId>>> e02Var) {
            return invoke2(y22Var, (e02<? super Set<? extends Set<CameraId>>>) e02Var);
        }
    }

    public final hd3<List<CameraId>> getCameraIds() {
        return this.cameraIds;
    }
}
