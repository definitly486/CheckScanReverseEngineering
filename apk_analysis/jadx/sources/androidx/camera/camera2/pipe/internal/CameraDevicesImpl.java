package androidx.camera.camera2.pipe.internal;

import android.os.Trace;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackendId;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.kx2;
import defpackage.mk2;
import defpackage.r57;
import defpackage.ul2;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class CameraDevicesImpl implements CameraDevices {
    private final CameraBackends cameraBackends;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.CameraDevicesImpl$ids$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.internal.CameraDevicesImpl", f = "CameraDevicesImpl.kt", l = {49}, m = "ids", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CameraDevicesImpl.this.ids(this);
        }
    }

    public CameraDevicesImpl(CameraBackends cameraBackends) {
        cameraBackends.getClass();
        this.cameraBackends = cameraBackends;
    }

    /* JADX INFO: renamed from: getCameraBackend-SeavPBo, reason: not valid java name */
    private final CameraBackend m927getCameraBackendSeavPBo(String str) {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("getCameraBackend");
            if (str == null) {
                str = this.cameraBackends.getDefault().mo178getIdQwmhuAM();
            }
            CameraBackend cameraBackendMo194getSG3A4s8 = this.cameraBackends.mo194getSG3A4s8(str);
            if (cameraBackendMo194getSG3A4s8 != null) {
                Trace.endSection();
                return cameraBackendMo194getSG3A4s8;
            }
            throw new IllegalStateException(("Failed to load CameraBackend " + ((Object) CameraBackendId.m192toStringimpl(str))).toString());
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitCameraIds-SeavPBo */
    public List<CameraId> mo248awaitCameraIdsSeavPBo(String str) {
        CameraBackend cameraBackendM927getCameraBackendSeavPBo = m927getCameraBackendSeavPBo(str);
        List<CameraId> listAwaitCameraIds = cameraBackendM927getCameraBackendSeavPBo.awaitCameraIds();
        if (listAwaitCameraIds == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to load cameraIds from " + ((Object) CameraBackendId.m192toStringimpl(cameraBackendM927getCameraBackendSeavPBo.mo178getIdQwmhuAM())));
        }
        return listAwaitCameraIds;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitCameraMetadata-FpsL5FU */
    public CameraMetadata mo249awaitCameraMetadataFpsL5FU(String str, String str2) {
        str.getClass();
        CameraBackend cameraBackendM927getCameraBackendSeavPBo = m927getCameraBackendSeavPBo(str2);
        CameraMetadata cameraMetadataMo174awaitCameraMetadataEfqyGwQ = cameraBackendM927getCameraBackendSeavPBo.mo174awaitCameraMetadataEfqyGwQ(str);
        if (cameraMetadataMo174awaitCameraMetadataEfqyGwQ == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to load metadata for " + ((Object) CameraId.m357toStringimpl(str)) + " from " + ((Object) CameraBackendId.m192toStringimpl(cameraBackendM927getCameraBackendSeavPBo.mo178getIdQwmhuAM())));
        }
        return cameraMetadataMo174awaitCameraMetadataEfqyGwQ;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: awaitConcurrentCameraIds-SeavPBo */
    public Set<Set<CameraId>> mo250awaitConcurrentCameraIdsSeavPBo(String str) {
        return m927getCameraBackendSeavPBo(str).awaitConcurrentCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    @ul2
    /* JADX INFO: renamed from: awaitMetadata-EfqyGwQ */
    public CameraMetadata mo251awaitMetadataEfqyGwQ(String str) {
        str.getClass();
        CameraMetadata cameraMetadataM237awaitCameraMetadataFpsL5FU$default = CameraDevices.m237awaitCameraMetadataFpsL5FU$default(this, str, null, 2, null);
        if (cameraMetadataM237awaitCameraMetadataFpsL5FU$default != null) {
            return cameraMetadataM237awaitCameraMetadataFpsL5FU$default;
        }
        ah.f("Required value was null.");
        return null;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: cameraIdsFlow-SeavPBo */
    public hd3<List<CameraId>> mo252cameraIdsFlowSeavPBo(String str) {
        return m927getCameraBackendSeavPBo(str).getCameraIds();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: disconnect-FpsL5FU */
    public void mo253disconnectFpsL5FU(String str, String str2) {
        str.getClass();
        m927getCameraBackendSeavPBo(str2).mo175disconnectEfqyGwQ(str);
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: disconnectAll-SeavPBo */
    public void mo254disconnectAllSeavPBo(String str) {
        m927getCameraBackendSeavPBo(str).disconnectAll();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: disconnectAllAsync-SeavPBo */
    public mk2<j59> mo255disconnectAllAsyncSeavPBo(String str) {
        return m927getCameraBackendSeavPBo(str).disconnectAllAsync();
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: disconnectAsync-FpsL5FU */
    public mk2<j59> mo256disconnectAsyncFpsL5FU(String str, String str2) {
        str.getClass();
        return m927getCameraBackendSeavPBo(str2).mo176disconnectAsyncEfqyGwQ(str);
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    @ul2
    public List<CameraId> findAll() {
        List<CameraId> listM236awaitCameraIdsSeavPBo$default = CameraDevices.m236awaitCameraIdsSeavPBo$default(this, null, 1, null);
        return listM236awaitCameraIdsSeavPBo$default == null ? kx2.b : listM236awaitCameraIdsSeavPBo$default;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: getCameraIds-iAq86To */
    public Object mo257getCameraIdsiAq86To(String str, e02<? super List<CameraId>> e02Var) {
        CameraDevicesImpl$getCameraIds$1 cameraDevicesImpl$getCameraIds$1;
        CameraBackend cameraBackendM927getCameraBackendSeavPBo;
        if (e02Var instanceof CameraDevicesImpl$getCameraIds$1) {
            cameraDevicesImpl$getCameraIds$1 = (CameraDevicesImpl$getCameraIds$1) e02Var;
            int i = cameraDevicesImpl$getCameraIds$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                cameraDevicesImpl$getCameraIds$1.label = i - Integer.MIN_VALUE;
            } else {
                cameraDevicesImpl$getCameraIds$1 = new CameraDevicesImpl$getCameraIds$1(this, e02Var);
            }
        } else {
            cameraDevicesImpl$getCameraIds$1 = new CameraDevicesImpl$getCameraIds$1(this, e02Var);
        }
        Object cameraIds = cameraDevicesImpl$getCameraIds$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = cameraDevicesImpl$getCameraIds$1.label;
        if (i2 == 0) {
            r57.b(cameraIds);
            cameraBackendM927getCameraBackendSeavPBo = m927getCameraBackendSeavPBo(str);
            cameraDevicesImpl$getCameraIds$1.L$0 = cameraBackendM927getCameraBackendSeavPBo;
            cameraDevicesImpl$getCameraIds$1.label = 1;
            cameraIds = cameraBackendM927getCameraBackendSeavPBo.getCameraIds(cameraDevicesImpl$getCameraIds$1);
            if (cameraIds == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            cameraBackendM927getCameraBackendSeavPBo = (CameraBackend) cameraDevicesImpl$getCameraIds$1.L$0;
            r57.b(cameraIds);
        }
        List list = (List) cameraIds;
        if (list == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to load cameraIds from " + ((Object) CameraBackendId.m192toStringimpl(cameraBackendM927getCameraBackendSeavPBo.mo178getIdQwmhuAM())));
        }
        return list;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: getCameraMetadata-_mltaTw */
    public Object mo258getCameraMetadata_mltaTw(String str, String str2, e02<? super CameraMetadata> e02Var) {
        CameraDevicesImpl$getCameraMetadata$1 cameraDevicesImpl$getCameraMetadata$1;
        CameraBackend cameraBackendM927getCameraBackendSeavPBo;
        if (e02Var instanceof CameraDevicesImpl$getCameraMetadata$1) {
            cameraDevicesImpl$getCameraMetadata$1 = (CameraDevicesImpl$getCameraMetadata$1) e02Var;
            int i = cameraDevicesImpl$getCameraMetadata$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                cameraDevicesImpl$getCameraMetadata$1.label = i - Integer.MIN_VALUE;
            } else {
                cameraDevicesImpl$getCameraMetadata$1 = new CameraDevicesImpl$getCameraMetadata$1(this, e02Var);
            }
        } else {
            cameraDevicesImpl$getCameraMetadata$1 = new CameraDevicesImpl$getCameraMetadata$1(this, e02Var);
        }
        Object objMo177getCameraMetadata0r8Bogc = cameraDevicesImpl$getCameraMetadata$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = cameraDevicesImpl$getCameraMetadata$1.label;
        if (i2 == 0) {
            r57.b(objMo177getCameraMetadata0r8Bogc);
            cameraBackendM927getCameraBackendSeavPBo = m927getCameraBackendSeavPBo(str2);
            cameraDevicesImpl$getCameraMetadata$1.L$0 = str;
            cameraDevicesImpl$getCameraMetadata$1.L$1 = cameraBackendM927getCameraBackendSeavPBo;
            cameraDevicesImpl$getCameraMetadata$1.label = 1;
            objMo177getCameraMetadata0r8Bogc = cameraBackendM927getCameraBackendSeavPBo.mo177getCameraMetadata0r8Bogc(str, cameraDevicesImpl$getCameraMetadata$1);
            if (objMo177getCameraMetadata0r8Bogc == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            cameraBackendM927getCameraBackendSeavPBo = (CameraBackend) cameraDevicesImpl$getCameraMetadata$1.L$1;
            str = (String) cameraDevicesImpl$getCameraMetadata$1.L$0;
            r57.b(objMo177getCameraMetadata0r8Bogc);
        }
        CameraMetadata cameraMetadata = (CameraMetadata) objMo177getCameraMetadata0r8Bogc;
        if (cameraMetadata == null && Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to load metadata for " + ((Object) CameraId.m357toStringimpl(str)) + " from " + ((Object) CameraBackendId.m192toStringimpl(cameraBackendM927getCameraBackendSeavPBo.mo178getIdQwmhuAM())));
        }
        return cameraMetadata;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: getConcurrentCameraIds-iAq86To */
    public Object mo259getConcurrentCameraIdsiAq86To(String str, e02<? super Set<? extends Set<CameraId>>> e02Var) {
        return m927getCameraBackendSeavPBo(str).getConcurrentCameraIds(e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Override // androidx.camera.camera2.pipe.CameraDevices
    @ul2
    /* JADX INFO: renamed from: getMetadata-0r8Bogc */
    public Object mo260getMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var) {
        CameraDevicesImpl$getMetadata$1 cameraDevicesImpl$getMetadata$1;
        if (e02Var instanceof CameraDevicesImpl$getMetadata$1) {
            cameraDevicesImpl$getMetadata$1 = (CameraDevicesImpl$getMetadata$1) e02Var;
            int i = cameraDevicesImpl$getMetadata$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                cameraDevicesImpl$getMetadata$1.label = i - Integer.MIN_VALUE;
            } else {
                cameraDevicesImpl$getMetadata$1 = new CameraDevicesImpl$getMetadata$1(this, e02Var);
            }
        } else {
            cameraDevicesImpl$getMetadata$1 = new CameraDevicesImpl$getMetadata$1(this, e02Var);
        }
        CameraDevicesImpl$getMetadata$1 cameraDevicesImpl$getMetadata$2 = cameraDevicesImpl$getMetadata$1;
        Object objM245getCameraMetadata_mltaTw$default = cameraDevicesImpl$getMetadata$2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = cameraDevicesImpl$getMetadata$2.label;
        if (i2 == 0) {
            r57.b(objM245getCameraMetadata_mltaTw$default);
            cameraDevicesImpl$getMetadata$2.label = 1;
            objM245getCameraMetadata_mltaTw$default = CameraDevices.m245getCameraMetadata_mltaTw$default(this, str, null, cameraDevicesImpl$getMetadata$2, 2, null);
            if (objM245getCameraMetadata_mltaTw$default == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objM245getCameraMetadata_mltaTw$default);
        }
        if (objM245getCameraMetadata_mltaTw$default != null) {
            return objM245getCameraMetadata_mltaTw$default;
        }
        ah.f("Required value was null.");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.camera.camera2.pipe.CameraDevices
    @ul2
    public Object ids(e02<? super List<CameraId>> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objM244getCameraIdsiAq86To$default = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objM244getCameraIdsiAq86To$default);
            anonymousClass1.label = 1;
            objM244getCameraIdsiAq86To$default = CameraDevices.m244getCameraIdsiAq86To$default(this, null, anonymousClass1, 1, null);
            if (objM244getCameraIdsiAq86To$default == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objM244getCameraIdsiAq86To$default);
        }
        List list = (List) objM244getCameraIdsiAq86To$default;
        return list == null ? kx2.b : list;
    }

    @Override // androidx.camera.camera2.pipe.CameraDevices
    /* JADX INFO: renamed from: prewarm-FpsL5FU */
    public void mo261prewarmFpsL5FU(String str, String str2) {
        str.getClass();
        m927getCameraBackendSeavPBo(str2).mo180prewarmEfqyGwQ(str);
    }
}
