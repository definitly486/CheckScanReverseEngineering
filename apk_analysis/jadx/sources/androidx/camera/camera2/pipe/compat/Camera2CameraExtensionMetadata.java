package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraExtensionCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.os.Trace;
import android.util.Size;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.cl4;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.ne4;
import defpackage.nm4;
import defpackage.ox2;
import defpackage.po4;
import defpackage.qn1;
import defpackage.rg;
import defpackage.vh;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraExtensionMetadata implements CameraExtensionMetadata {
    private final cl4<Boolean> _isCaptureProgressSupported;
    private final cl4<Boolean> _isPostviewSupported;
    private final cl4<Set<CaptureRequest.Key<?>>> _requestKeys;
    private final cl4<Set<CaptureResult.Key<?>>> _resultKeys;
    private final String camera;
    private final int cameraExtension;
    private final CameraExtensionCharacteristics extensionCharacteristics;
    private final boolean isRedacted;
    private final Map<Metadata.Key<?>, Object> metadata;
    private final Map<Class<?>, cl4<Set<Size>>> supportedExtensionSizesByClass;
    private final Map<Integer, cl4<Set<Size>>> supportedExtensionSizesByFormat;
    private final Map<Size, cl4<Set<Size>>> supportedPostviewSizes;

    private Camera2CameraExtensionMetadata(String str, boolean z, int i, CameraExtensionCharacteristics cameraExtensionCharacteristics, Map<Metadata.Key<?>, ? extends Object> map) {
        str.getClass();
        cameraExtensionCharacteristics.getClass();
        map.getClass();
        this.camera = str;
        this.isRedacted = z;
        this.cameraExtension = i;
        this.extensionCharacteristics = cameraExtensionCharacteristics;
        this.metadata = map;
        this.supportedExtensionSizesByFormat = new LinkedHashMap();
        this.supportedExtensionSizesByClass = new LinkedHashMap();
        this.supportedPostviewSizes = new LinkedHashMap();
        po4 po4Var = po4.PUBLICATION;
        this._requestKeys = nm4.a(po4Var, new ll3<Set<? extends CaptureRequest.Key<Object>>>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$1
            @Override // defpackage.ll3
            public final Set<? extends CaptureRequest.Key<Object>> invoke() {
                ox2 ox2Var = ox2.b;
                String str2 = ((Object) CameraId.m357toStringimpl(this.this$0.mo301getCameraDz_R5H8())) + "#availableCaptureRequestKeys";
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
                        return Build.VERSION.SDK_INT >= 33 ? qn1.y0(Api33Compat.getAvailableCaptureRequestKeys(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension())) : ox2Var;
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching {} and ignoring exception.", th);
                    }
                    return ox2Var;
                }
            }
        });
        this._resultKeys = nm4.a(po4Var, new ll3<Set<? extends CaptureResult.Key<Object>>>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrEmptySet$2
            @Override // defpackage.ll3
            public final Set<? extends CaptureResult.Key<Object>> invoke() {
                ox2 ox2Var = ox2.b;
                String str2 = ((Object) CameraId.m357toStringimpl(this.this$0.mo301getCameraDz_R5H8())) + "#availableCaptureResultKeys";
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
                        return Build.VERSION.SDK_INT >= 33 ? qn1.y0(Api33Compat.getAvailableCaptureResultKeys(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension())) : ox2Var;
                    } finally {
                        Trace.endSection();
                    }
                } catch (Throwable th) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching {} and ignoring exception.", th);
                    }
                    return ox2Var;
                }
            }
        });
        this._isPostviewSupported = nm4.a(po4Var, new ll3<Boolean>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // defpackage.ll3
            public final Boolean invoke() {
                String str2 = ((Object) CameraId.m357toStringimpl(this.this$0.mo301getCameraDz_R5H8())) + "#isPostviewSupported";
                boolean z2 = false;
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
                        boolean zIsPostviewAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isPostviewAvailable(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()) : false;
                        Trace.endSection();
                        z2 = zIsPostviewAvailable;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching false and ignoring exception.", th2);
                    }
                }
                return Boolean.valueOf(z2);
            }
        });
        this._isCaptureProgressSupported = nm4.a(po4Var, new ll3<Boolean>(this) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$special$$inlined$lazyOrFalse$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // defpackage.ll3
            public final Boolean invoke() {
                String str2 = ((Object) CameraId.m357toStringimpl(this.this$0.mo301getCameraDz_R5H8())) + "#isCaptureProgressSupported";
                boolean z2 = false;
                try {
                    Debug debug = Debug.INSTANCE;
                    try {
                        Trace.beginSection(str2);
                        boolean zIsCaptureProcessProgressAvailable = Build.VERSION.SDK_INT >= 34 ? Api34Compat.isCaptureProcessProgressAvailable(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension()) : false;
                        Trace.endSection();
                        z2 = zIsCaptureProcessProgressAvailable;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching false and ignoring exception.", th2);
                    }
                }
                return Boolean.valueOf(z2);
            }
        });
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T get(Metadata.Key<T> key) {
        key.getClass();
        return (T) this.metadata.get(key);
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    public String mo301getCameraDz_R5H8() {
        return this.camera;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public int getCameraExtension() {
        return this.cameraExtension;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public Set<CameraCharacteristics.Key<?>> getKeys() {
        return ox2.b;
    }

    @Override // androidx.camera.camera2.pipe.Metadata
    public <T> T getOrDefault(Metadata.Key<T> key, T t) {
        key.getClass();
        T t2 = (T) this.metadata.get(key);
        return t2 == null ? t : t2;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public Set<Size> getOutputSizes(final Class<?> cls) {
        cl4<Set<Size>> cl4Var;
        cls.getClass();
        synchronized (this.supportedExtensionSizesByClass) {
            try {
                Map<Class<?>, cl4<Set<Size>>> map = this.supportedExtensionSizesByClass;
                cl4<Set<Size>> cl4VarA = map.get(cls);
                if (cl4VarA == null) {
                    final String str = ((Object) CameraId.m357toStringimpl(mo301getCameraDz_R5H8())) + "#getExtensionSupportedSizes(" + cls.getName() + ')';
                    cl4VarA = nm4.a(po4.PUBLICATION, new ll3<Set<? extends Size>>() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$getOutputSizes$lambda$1$0$$inlined$lazyOrEmptySet$1
                        @Override // defpackage.ll3
                        public final Set<? extends Size> invoke() {
                            String str2 = str;
                            try {
                                Debug debug = Debug.INSTANCE;
                                try {
                                    Trace.beginSection(str2);
                                    return qn1.y0(Api31Compat.getExtensionSupportedSizes(this.extensionCharacteristics, this.getCameraExtension(), (Class<?>) cls));
                                } finally {
                                    Trace.endSection();
                                }
                            } catch (Throwable th) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching {} and ignoring exception.", th);
                                }
                                return ox2.b;
                            }
                        }
                    });
                    map.put(cls, cl4VarA);
                }
                cl4Var = cl4VarA;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cl4Var.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public Set<Size> getPostviewSizes(final Size size, final int i) {
        cl4<Set<Size>> cl4Var;
        size.getClass();
        if (Build.VERSION.SDK_INT < 34) {
            return ox2.b;
        }
        synchronized (this.supportedPostviewSizes) {
            try {
                Map<Size, cl4<Set<Size>>> map = this.supportedPostviewSizes;
                cl4<Set<Size>> cl4VarA = map.get(size);
                if (cl4VarA == null) {
                    final String str = ((Object) CameraId.m357toStringimpl(mo301getCameraDz_R5H8())) + "#getPostviewSupportedSizes(" + size + ", " + i + ')';
                    cl4VarA = nm4.a(po4.PUBLICATION, new ll3<Set<? extends Size>>() { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$getPostviewSizes$lambda$0$0$$inlined$lazyOrEmptySet$1
                        @Override // defpackage.ll3
                        public final Set<? extends Size> invoke() {
                            String str2 = str;
                            try {
                                Debug debug = Debug.INSTANCE;
                                try {
                                    Trace.beginSection(str2);
                                    return qn1.y0(Api34Compat.getPostviewSupportedSizes(this.extensionCharacteristics, this.getCameraExtension(), size, i));
                                } finally {
                                    Trace.endSection();
                                }
                            } catch (Throwable th) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to get " + str2 + "! Caching {} and ignoring exception.", th);
                                }
                                return ox2.b;
                            }
                        }
                    });
                    map.put(size, cl4VarA);
                }
                cl4Var = cl4VarA;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cl4Var.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public Set<CaptureRequest.Key<?>> getRequestKeys() {
        return this._requestKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public Set<CaptureResult.Key<?>> getResultKeys() {
        return this._resultKeys.getValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public boolean isCaptureProgressSupported() {
        return this._isCaptureProgressSupported.getValue().booleanValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public boolean isPostviewSupported() {
        return this._isPostviewSupported.getValue().booleanValue();
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public boolean isRedacted() {
        return this.isRedacted;
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        if (!vh.g(ne4Var, CameraExtensionCharacteristics.class)) {
            return null;
        }
        T t = (T) this.extensionCharacteristics;
        t.getClass();
        return t;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public <T> T get(CameraCharacteristics.Key<T> key) {
        key.getClass();
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public <T> T getOrDefault(CameraCharacteristics.Key<T> key, T t) {
        key.getClass();
        return t;
    }

    @Override // androidx.camera.camera2.pipe.CameraExtensionMetadata
    public Set<Size> getOutputSizes(final int i) {
        cl4<Set<Size>> cl4Var;
        synchronized (this.supportedExtensionSizesByFormat) {
            try {
                Map<Integer, cl4<Set<Size>>> map = this.supportedExtensionSizesByFormat;
                Integer numValueOf = Integer.valueOf(i);
                cl4<Set<Size>> cl4VarA = map.get(numValueOf);
                if (cl4VarA == null) {
                    cl4VarA = nm4.a(po4.PUBLICATION, new ll3<Set<? extends Size>>(i, this, i) { // from class: androidx.camera.camera2.pipe.compat.Camera2CameraExtensionMetadata$getOutputSizes$lambda$0$0$$inlined$lazyOrEmptySet$1
                        final /* synthetic */ int $imageFormat$inlined;
                        final /* synthetic */ int $imageFormat$inlined$1;

                        {
                            this.$imageFormat$inlined$1 = i;
                        }

                        @Override // defpackage.ll3
                        public final Set<? extends Size> invoke() {
                            StringBuilder sb = new StringBuilder();
                            sb.append((Object) CameraId.m357toStringimpl(this.this$0.mo301getCameraDz_R5H8()));
                            sb.append("#getExtensionSupportedSizes(");
                            String strH = rg.h(sb, this.$imageFormat$inlined, ')');
                            try {
                                Debug debug = Debug.INSTANCE;
                                try {
                                    Trace.beginSection(strH);
                                    return qn1.y0(Api31Compat.getExtensionSupportedSizes(this.this$0.extensionCharacteristics, this.this$0.getCameraExtension(), this.$imageFormat$inlined$1));
                                } finally {
                                    Trace.endSection();
                                }
                            } catch (Throwable th) {
                                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                    android.util.Log.w(Log.TAG, "Failed to get " + strH + "! Caching {} and ignoring exception.", th);
                                }
                                return ox2.b;
                            }
                        }
                    });
                    map.put(numValueOf, cl4VarA);
                }
                cl4Var = cl4VarA;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cl4Var.getValue();
    }

    public /* synthetic */ Camera2CameraExtensionMetadata(String str, boolean z, int i, CameraExtensionCharacteristics cameraExtensionCharacteristics, Map map, jh2 jh2Var) {
        this(str, z, i, cameraExtensionCharacteristics, map);
    }
}
