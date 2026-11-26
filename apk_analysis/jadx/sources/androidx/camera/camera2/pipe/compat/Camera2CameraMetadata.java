package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.os.Trace;
import android.util.ArrayMap;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c9;
import defpackage.cl4;
import defpackage.dz0;
import defpackage.e02;
import defpackage.eh0;
import defpackage.ez0;
import defpackage.f02;
import defpackage.fz0;
import defpackage.gz0;
import defpackage.hz0;
import defpackage.iz0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.ne4;
import defpackage.nm4;
import defpackage.ox2;
import defpackage.po4;
import defpackage.qn1;
import defpackage.r57;
import defpackage.vba;
import defpackage.vh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraMetadata implements CameraMetadata {
    private final cl4<Set<CameraCharacteristics.Key<?>>> _keys;
    private final cl4<Set<CameraId>> _physicalCameraIds;
    private final cl4<Set<CaptureRequest.Key<?>>> _physicalRequestKeys;
    private final cl4<Set<CaptureRequest.Key<?>>> _requestKeys;
    private final cl4<Set<CaptureResult.Key<?>>> _resultKeys;
    private final cl4<Set<CameraCharacteristics.Key<?>>> _sessionCharacteristicsKeys;
    private final cl4<Set<CaptureRequest.Key<?>>> _sessionKeys;
    private final cl4<Set<Integer>> _supportedExtensions;
    private final Set<CameraCharacteristics.Key<?>> cacheBlocklist;
    private final String camera;
    private final CameraCharacteristics characteristics;
    private final ArrayMap<Integer, CameraExtensionMetadata> extensionCache;
    private final boolean isRedacted;
    private final Map<Metadata.Key<?>, Object> metadata;
    private final Camera2MetadataProvider metadataProvider;
    private final ArrayMap<CameraCharacteristics.Key<?>, Object> values;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2CameraMetadata$getExtensionMetadata$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.compat.Camera2CameraMetadata", f = "Camera2CameraMetadata.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA}, m = "getExtensionMetadata", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int I$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Camera2CameraMetadata.this.getExtensionMetadata(0, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CameraMetadata(String str, boolean z, CameraCharacteristics cameraCharacteristics, Camera2MetadataProvider camera2MetadataProvider, Map<Metadata.Key<?>, ? extends Object> map, Set<? extends CameraCharacteristics.Key<?>> set) {
        str.getClass();
        cameraCharacteristics.getClass();
        camera2MetadataProvider.getClass();
        map.getClass();
        set.getClass();
        this.camera = str;
        this.isRedacted = z;
        this.characteristics = cameraCharacteristics;
        this.metadataProvider = camera2MetadataProvider;
        this.metadata = map;
        this.cacheBlocklist = set;
        this.values = new ArrayMap<>();
        this.extensionCache = new ArrayMap<>();
        po4 po4Var = po4.PUBLICATION;
        int i = 0;
        this._supportedExtensions = nm4.a(po4Var, new dz0(this, i));
        this._keys = nm4.a(po4Var, new ez0(this, i));
        this._requestKeys = nm4.a(po4Var, new vba(this, 6));
        this._resultKeys = nm4.a(po4Var, new eh0(this, 1));
        this._physicalCameraIds = nm4.a(po4Var, new fz0(this, i));
        this._physicalRequestKeys = nm4.a(po4Var, new gz0(this, i));
        this._sessionCharacteristicsKeys = nm4.a(po4Var, new hz0(this, i));
        this._sessionKeys = nm4.a(po4Var, new iz0(this, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _keys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())) + "#keys");
                List<CameraCharacteristics.Key<?>> keys = camera2CameraMetadata.characteristics.getKeys();
                if (keys == null) {
                    keys = kx2.b;
                }
                return qn1.y0(keys);
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to getKeys from " + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())) + '}', e);
            }
            return ox2.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _physicalCameraIds$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        int i = Build.VERSION.SDK_INT;
        ox2 ox2Var = ox2.b;
        if (i < 28) {
            return ox2Var;
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())) + "#physicalCameraIds");
                Set<String> physicalCameraIds = Api28Compat.getPhysicalCameraIds(camera2CameraMetadata.characteristics);
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i(Log.TAG, "Loaded physicalCameraIds from " + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())) + ": " + physicalCameraIds);
                }
                if (physicalCameraIds == null) {
                    physicalCameraIds = ox2Var;
                }
                Set<String> set = physicalCameraIds;
                ArrayList arrayList = new ArrayList(kn1.q(set, 10));
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    arrayList.add(CameraId.m351boximpl(CameraId.m352constructorimpl((String) it.next())));
                }
                return qn1.y0(arrayList);
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return ox2Var;
            }
            android.util.Log.w(Log.TAG, "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())), e);
            return ox2Var;
        } catch (NullPointerException e2) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return ox2Var;
            }
            android.util.Log.w(Log.TAG, "Failed to getPhysicalCameraIds from " + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())), e2);
            return ox2Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _physicalRequestKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        int i = Build.VERSION.SDK_INT;
        ox2 ox2Var = ox2.b;
        if (i < 28) {
            return ox2Var;
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.mo370getCameraDz_R5H8() + "#availablePhysicalCameraRequestKeys");
                Iterable availablePhysicalCameraRequestKeys = Api28Compat.getAvailablePhysicalCameraRequestKeys(camera2CameraMetadata.characteristics);
                if (availablePhysicalCameraRequestKeys == null) {
                    availablePhysicalCameraRequestKeys = kx2.b;
                }
                return qn1.y0(availablePhysicalCameraRequestKeys);
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return ox2Var;
            }
            android.util.Log.w(Log.TAG, "Failed to getAvailablePhysicalCameraRequestKeys from Camera-" + camera2CameraMetadata.mo370getCameraDz_R5H8(), e);
            return ox2Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _requestKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())) + "#availableCaptureRequestKeys");
                List<CaptureRequest.Key<?>> availableCaptureRequestKeys = camera2CameraMetadata.characteristics.getAvailableCaptureRequestKeys();
                if (availableCaptureRequestKeys == null) {
                    availableCaptureRequestKeys = kx2.b;
                }
                return qn1.y0(availableCaptureRequestKeys);
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to getAvailableCaptureRequestKeys from " + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())), e);
            }
            return ox2.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _resultKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection(((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())) + "#availableCaptureResultKeys");
                List<CaptureResult.Key<?>> availableCaptureResultKeys = camera2CameraMetadata.characteristics.getAvailableCaptureResultKeys();
                if (availableCaptureResultKeys == null) {
                    availableCaptureResultKeys = kx2.b;
                }
                return qn1.y0(availableCaptureResultKeys);
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to getAvailableCaptureResultKeys from " + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())), e);
            }
            return ox2.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _sessionCharacteristicsKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        int i = Build.VERSION.SDK_INT;
        ox2 ox2Var = ox2.b;
        if (i < 35) {
            return ox2Var;
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.mo370getCameraDz_R5H8() + "#getAvailableSessionCharacteristicsKeys");
                Iterable availableSessionCharacteristicsKeys = Api35Compat.getAvailableSessionCharacteristicsKeys(camera2CameraMetadata.characteristics);
                if (availableSessionCharacteristicsKeys == null) {
                    availableSessionCharacteristicsKeys = kx2.b;
                }
                return qn1.y0(availableSessionCharacteristicsKeys);
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return ox2Var;
            }
            android.util.Log.w(Log.TAG, "Failed to getAvailableSessionCharacteristicsKeys from Camera-" + camera2CameraMetadata.mo370getCameraDz_R5H8(), e);
            return ox2Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _sessionKeys$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        int i = Build.VERSION.SDK_INT;
        ox2 ox2Var = ox2.b;
        if (i < 28) {
            return ox2Var;
        }
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + camera2CameraMetadata.mo370getCameraDz_R5H8() + "#availableSessionKeys");
                Iterable availableSessionKeys = Api28Compat.getAvailableSessionKeys(camera2CameraMetadata.characteristics);
                if (availableSessionKeys == null) {
                    availableSessionKeys = kx2.b;
                }
                return qn1.y0(availableSessionKeys);
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return ox2Var;
            }
            android.util.Log.w(Log.TAG, "Failed to getAvailableSessionKeys from Camera-" + camera2CameraMetadata.mo370getCameraDz_R5H8(), e);
            return ox2Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set _supportedExtensions$lambda$0(Camera2CameraMetadata camera2CameraMetadata) {
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("Camera-" + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())) + "#supportedExtensions");
                return camera2CameraMetadata.metadataProvider.mo781getSupportedCameraExtensionsEfqyGwQ(camera2CameraMetadata.mo370getCameraDz_R5H8());
            } finally {
                Trace.endSection();
            }
        } catch (AssertionError e) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to getSupportedExtensions from Camera-" + ((Object) CameraId.m357toStringimpl(camera2CameraMetadata.mo370getCameraDz_R5H8())), e);
            }
            return ox2.b;
        }
    }

    private final <T> T getOrThrow(CameraCharacteristics cameraCharacteristics, CameraCharacteristics.Key<T> key) {
        try {
            return (T) cameraCharacteristics.get(key);
        } catch (AssertionError unused) {
            c9.g(key, "Failed to get characteristic for ", ": Framework throw an AssertionError");
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public CameraExtensionMetadata awaitExtensionMetadata(int i) {
        CameraExtensionMetadata cameraExtensionMetadata;
        synchronized (this.extensionCache) {
            cameraExtensionMetadata = this.extensionCache.get(Integer.valueOf(i));
        }
        if (cameraExtensionMetadata != null) {
            return cameraExtensionMetadata;
        }
        CameraExtensionMetadata cameraExtensionMetadataMo777awaitCameraExtensionMetadata0r8Bogc = this.metadataProvider.mo777awaitCameraExtensionMetadata0r8Bogc(mo370getCameraDz_R5H8(), i);
        synchronized (this.extensionCache) {
            this.extensionCache.put(Integer.valueOf(i), cameraExtensionMetadataMo777awaitCameraExtensionMetadata0r8Bogc);
            j59 j59Var = j59.a;
        }
        return cameraExtensionMetadataMo777awaitCameraExtensionMetadata0r8Bogc;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    /* JADX INFO: renamed from: awaitPhysicalMetadata-EfqyGwQ */
    public CameraMetadata mo369awaitPhysicalMetadataEfqyGwQ(String str) {
        str.getClass();
        if (getPhysicalCameraIds().contains(CameraId.m351boximpl(str))) {
            return this.metadataProvider.mo778awaitCameraMetadataEfqyGwQ(str);
        }
        throw new IllegalStateException((((Object) CameraId.m357toStringimpl(str)) + " is not a valid physical camera on " + this).toString());
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public <T> T get(CameraCharacteristics.Key<T> key) {
        T t;
        key.getClass();
        if (this.cacheBlocklist.contains(key)) {
            return (T) getOrThrow(this.characteristics, key);
        }
        synchronized (this.values) {
            t = (T) this.values.get(key);
        }
        if (t != null) {
            return t;
        }
        T t2 = (T) getOrThrow(this.characteristics, key);
        if (t2 == null) {
            return t2;
        }
        synchronized (this.values) {
            this.values.put((CameraCharacteristics.Key<?>) key, t2);
            j59 j59Var = j59.a;
        }
        return t2;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    public String mo370getCameraDz_R5H8() {
        return this.camera;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Object getExtensionMetadata(int i, e02<? super CameraExtensionMetadata> e02Var) {
        AnonymousClass1 anonymousClass1;
        CameraExtensionMetadata cameraExtensionMetadata;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i2 = anonymousClass1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i2 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objMo779getCameraExtensionMetadataRzXb1QE = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.label;
        if (i3 == 0) {
            r57.b(objMo779getCameraExtensionMetadataRzXb1QE);
            synchronized (this.extensionCache) {
                cameraExtensionMetadata = this.extensionCache.get(new Integer(i));
            }
            if (cameraExtensionMetadata != null) {
                return cameraExtensionMetadata;
            }
            Camera2MetadataProvider camera2MetadataProvider = this.metadataProvider;
            String strMo370getCameraDz_R5H8 = mo370getCameraDz_R5H8();
            anonymousClass1.I$0 = i;
            anonymousClass1.label = 1;
            objMo779getCameraExtensionMetadataRzXb1QE = camera2MetadataProvider.mo779getCameraExtensionMetadataRzXb1QE(strMo370getCameraDz_R5H8, i, anonymousClass1);
            if (objMo779getCameraExtensionMetadataRzXb1QE == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = anonymousClass1.I$0;
            r57.b(objMo779getCameraExtensionMetadataRzXb1QE);
        }
        CameraExtensionMetadata cameraExtensionMetadata2 = (CameraExtensionMetadata) objMo779getCameraExtensionMetadataRzXb1QE;
        synchronized (this.extensionCache) {
            this.extensionCache.put(new Integer(i), cameraExtensionMetadata2);
            j59 j59Var = j59.a;
        }
        return cameraExtensionMetadata2;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CameraCharacteristics.Key<?>> getKeys() {
        return this._keys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T getOrDefault(Metadata.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) this.metadata.get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CameraId> getPhysicalCameraIds() {
        return this._physicalCameraIds.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    /* JADX INFO: renamed from: getPhysicalMetadata-0r8Bogc */
    public Object mo371getPhysicalMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var) {
        if (getPhysicalCameraIds().contains(CameraId.m351boximpl(str))) {
            return this.metadataProvider.mo780getCameraMetadata0r8Bogc(str, e02Var);
        }
        throw new IllegalStateException((((Object) CameraId.m357toStringimpl(str)) + " is not a valid physical camera on " + this).toString());
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CaptureRequest.Key<?>> getPhysicalRequestKeys() {
        return this._physicalRequestKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CaptureRequest.Key<?>> getRequestKeys() {
        return this._requestKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CaptureResult.Key<?>> getResultKeys() {
        return this._resultKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CameraCharacteristics.Key<?>> getSessionCharacteristicsKeys() {
        return this._sessionCharacteristicsKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<CaptureRequest.Key<?>> getSessionKeys() {
        return this._sessionKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public Set<Integer> getSupportedExtensions() {
        return this._supportedExtensions.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public boolean isRedacted() {
        return this.isRedacted;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (!vh.g(ne4Var, CameraCharacteristics.class)) {
            return null;
        }
        T t = (T) this.characteristics;
        t.getClass();
        return t;
    }

    @Override // androidx.camera.camera2.pipe.CameraMetadata
    public <T> T getOrDefault(CameraCharacteristics.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T get(Metadata.Key<T> key) {
        key.getClass();
        return (T) this.metadata.get(key);
    }

    public /* synthetic */ Camera2CameraMetadata(String str, boolean z, CameraCharacteristics cameraCharacteristics, Camera2MetadataProvider camera2MetadataProvider, Map map, Set set, jh2 jh2Var) {
        this(str, z, cameraCharacteristics, camera2MetadataProvider, map, set);
    }
}
