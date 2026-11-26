package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureRequest;
import android.media.Image;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.UseCaseCameraScope;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2ImplConfigKt;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.InputRequest;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.media.AndroidImage;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraCaptureResults;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import defpackage.ah;
import defpackage.ar4;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.n05;
import defpackage.u96;
import defpackage.vh;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
@UseCaseCameraScope
public final class CaptureConfigAdapter {
    public static final Companion Companion = new Companion(null);
    private final boolean isLegacyDevice;
    private final TemplateParamsOverride templateParamsOverride;
    private final UseCaseThreads threads;
    private final UseCaseGraphContext useCaseGraphContext;
    private final ZslControl zslControl;

    public CaptureConfigAdapter(CameraProperties cameraProperties, UseCaseGraphContext useCaseGraphContext, ZslControl zslControl, UseCaseThreads useCaseThreads, TemplateParamsOverride templateParamsOverride) {
        cameraProperties.getClass();
        useCaseGraphContext.getClass();
        zslControl.getClass();
        useCaseThreads.getClass();
        templateParamsOverride.getClass();
        this.useCaseGraphContext = useCaseGraphContext;
        this.zslControl = zslControl;
        this.threads = useCaseThreads;
        this.templateParamsOverride = templateParamsOverride;
        this.isLegacyDevice = CameraMetadata.Companion.isHardwareLevelLegacy(cameraProperties.getMetadata());
    }

    private final Request.Listener buildImageClosingRequestListener(ImageProxy imageProxy) {
        final AtomicReference atomicReference = new AtomicReference(imageProxy);
        return new Request.Listener() { // from class: androidx.camera.camera2.adapter.CaptureConfigAdapter.buildImageClosingRequestListener.1
            @Override // androidx.camera.camera2.pipe.Request.Listener
            public void onAborted(Request request) {
                request.getClass();
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onComplete-CcXjc1I, reason: not valid java name */
            public void mo9onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                requestMetadata.getClass();
                frameInfo.getClass();
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onFailed-CcXjc1I, reason: not valid java name */
            public void mo10onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                requestMetadata.getClass();
                requestFailure.getClass();
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }

            @Override // androidx.camera.camera2.pipe.Request.Listener
            /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I, reason: not valid java name */
            public void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
                requestMetadata.getClass();
                frameInfo.getClass();
                CaptureConfigAdapter.buildImageClosingRequestListener$closeImageProxy(atomicReference);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildImageClosingRequestListener$closeImageProxy(AtomicReference<ImageProxy> atomicReference) {
        ImageProxy andSet = atomicReference.getAndSet(null);
        if (andSet != null) {
            andSet.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: mapToRequest-nAberiA$default, reason: not valid java name */
    public static /* synthetic */ Request m6mapToRequestnAberiA$default(CaptureConfigAdapter captureConfigAdapter, CaptureConfig captureConfig, int i, Config config, List list, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            list = kx2.b;
        }
        return captureConfigAdapter.m7mapToRequestnAberiA(captureConfig, i, config, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: mapToRequest-nAberiA, reason: not valid java name */
    public final Request m7mapToRequestnAberiA(CaptureConfig captureConfig, int i, Config config, List<? extends Request.Listener> list) {
        InputRequest inputRequest;
        ImageProxy imageProxyDequeueImageFromBuffer;
        Object objBuildImageClosingRequestListener;
        captureConfig.getClass();
        config.getClass();
        list.getClass();
        List<DeferrableSurface> surfaces = captureConfig.getSurfaces();
        surfaces.getClass();
        Object inputRequest2 = null;
        if (surfaces.isEmpty()) {
            vh.e(captureConfig, "Attempted to issue a capture without surfaces using ");
            return null;
        }
        List<DeferrableSurface> list2 = surfaces;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        for (DeferrableSurface deferrableSurface : list2) {
            StreamId streamId = this.useCaseGraphContext.getSurfaceToStreamMap().get(deferrableSurface);
            if (streamId == null) {
                vh.e(deferrableSurface, "Attempted to issue a capture with an unrecognized surface: ");
                return null;
            }
            arrayList.add(StreamId.m723boximpl(streamId.m729unboximpl()));
        }
        CameraCallbackMap cameraCallbackMap = new CameraCallbackMap();
        List<CameraCaptureCallback> cameraCaptureCallbacks = captureConfig.getCameraCaptureCallbacks();
        cameraCaptureCallbacks.getClass();
        for (CameraCaptureCallback cameraCaptureCallback : cameraCaptureCallbacks) {
            cameraCaptureCallback.getClass();
            cameraCallbackMap.addCaptureCallback(cameraCaptureCallback, this.threads.getSequentialExecutor());
        }
        Config implementationOptions = captureConfig.getImplementationOptions();
        implementationOptions.getClass();
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(config);
        builder.insertAllOptions(implementationOptions);
        Config.Option<Integer> option = CaptureConfig.OPTION_ROTATION;
        if (implementationOptions.containsOption(option)) {
            CaptureRequest.Key key = CaptureRequest.JPEG_ORIENTATION;
            key.getClass();
            Object objRetrieveOption = implementationOptions.retrieveOption(option);
            objRetrieveOption.getClass();
            builder.setCaptureRequestOption(key, objRetrieveOption);
        }
        Config.Option<Integer> option2 = CaptureConfig.OPTION_JPEG_QUALITY;
        if (implementationOptions.containsOption(option2)) {
            CaptureRequest.Key key2 = CaptureRequest.JPEG_QUALITY;
            key2.getClass();
            Object objRetrieveOption2 = implementationOptions.retrieveOption(option2);
            objRetrieveOption2.getClass();
            builder.setCaptureRequestOption(key2, Byte.valueOf((byte) ((Number) objRetrieveOption2).intValue()));
        }
        int iM647constructorimpl = RequestTemplate.m647constructorimpl(captureConfig.getTemplateType());
        if (captureConfig.getTemplateType() != 5 || this.zslControl.isZslDisabledByUserCaseConfig() || this.zslControl.isZslDisabledByFlashMode() || (imageProxyDequeueImageFromBuffer = this.zslControl.dequeueImageFromBuffer()) == null) {
            inputRequest = 0;
        } else {
            CameraCaptureResult cameraCaptureResultRetrieveCameraCaptureResult = CameraCaptureResults.retrieveCameraCaptureResult(imageProxyDequeueImageFromBuffer.getImageInfo());
            if (cameraCaptureResultRetrieveCameraCaptureResult == null) {
                objBuildImageClosingRequestListener = null;
            } else {
                if (!(cameraCaptureResultRetrieveCameraCaptureResult instanceof CaptureResultAdapter)) {
                    vh.e(cameraCaptureResultRetrieveCameraCaptureResult.getClass(), "Unexpected capture result type: ");
                    return null;
                }
                Image image = imageProxyDequeueImageFromBuffer.getImage();
                if (image == null) {
                    ah.f("Required value was null.");
                    return null;
                }
                AndroidImage androidImage = new AndroidImage(image);
                Object objUnwrapAs = ((CaptureResultAdapter) cameraCaptureResultRetrieveCameraCaptureResult).unwrapAs(x07.a(FrameInfo.class));
                if (objUnwrapAs == null) {
                    ah.f("Required value was null.");
                    return null;
                }
                inputRequest2 = new InputRequest(androidImage, (FrameInfo) objUnwrapAs);
                objBuildImageClosingRequestListener = buildImageClosingRequestListener(imageProxyDequeueImageFromBuffer);
            }
            inputRequest = inputRequest2;
            inputRequest2 = objBuildImageClosingRequestListener;
        }
        if (inputRequest == 0) {
            iM647constructorimpl = Companion.m8getStillCaptureTemplateCMLptTo$camera_camera2(captureConfig, i, this.isLegacyDevice);
        }
        LinkedHashMap linkedHashMapG = n05.g(this.templateParamsOverride.mo38getOverrideParamsxlOpshk(RequestTemplate.m646boximpl(iM647constructorimpl)), Camera2ImplConfigKt.toParameters(builder.build()));
        ar4 ar4VarE = u96.e();
        ar4VarE.add(cameraCallbackMap);
        if (inputRequest2 != null) {
            ar4VarE.add(inputRequest2);
        }
        ar4VarE.addAll(list);
        ar4 ar4VarD = u96.d(ar4VarE);
        Map mapSingletonMap = Collections.singletonMap(TagsKt.getCAMERAX_TAG_BUNDLE(), captureConfig.getTagBundle());
        mapSingletonMap.getClass();
        return new Request(arrayList, linkedHashMapG, mapSingletonMap, ar4VarD, RequestTemplate.m646boximpl(iM647constructorimpl), inputRequest, null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getStillCaptureTemplate-CMLptTo$camera_camera2, reason: not valid java name */
        public final int m8getStillCaptureTemplateCMLptTo$camera_camera2(CaptureConfig captureConfig, int i, boolean z) {
            int i2;
            captureConfig.getClass();
            if (!RequestTemplate.m649equalsimpl0(i, RequestTemplate.m647constructorimpl(3)) || z) {
                i2 = (captureConfig.getTemplateType() == -1 || captureConfig.getTemplateType() == 5) ? 2 : -1;
            } else {
                i2 = 4;
            }
            return i2 != -1 ? RequestTemplate.m647constructorimpl(i2) : RequestTemplate.m647constructorimpl(captureConfig.getTemplateType());
        }

        private Companion() {
        }
    }
}
