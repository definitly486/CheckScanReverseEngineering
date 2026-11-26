package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import androidx.camera.camera2.adapter.EncoderProfilesProviderAdapter;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SizeFilteredEncoderProfilesProvider;
import androidx.camera.core.internal.utils.SizeUtil;
import defpackage.bm3;
import defpackage.ht1;
import defpackage.jh2;
import defpackage.k57;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.yr;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class EncoderProfilesProviderFallback {
    private final bm3<String, Quirks, EncoderProfilesProvider> providerFactory;

    public /* synthetic */ EncoderProfilesProviderFallback(bm3 bm3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new ht1(2) : bm3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EncoderProfilesProviderAdapter _init_$lambda$0(String str, Quirks quirks) {
        str.getClass();
        quirks.getClass();
        return new EncoderProfilesProviderAdapter(str, quirks);
    }

    private final EncoderProfilesProvider findProviderWithLargestSize(CameraDevices cameraDevices) {
        Object aVar;
        List<EncoderProfilesProxy.VideoProfileProxy> videoProfiles;
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy;
        try {
            aVar = CameraDevices.m236awaitCameraIdsSeavPBo$default(cameraDevices, null, 1, null);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        List list = (List) aVar;
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        EncoderProfilesProvider encoderProfilesProvider = null;
        int i = 0;
        while (it.hasNext()) {
            String strM358unboximpl = ((CameraId) it.next()).m358unboximpl();
            EncoderProfilesProvider encoderProfilesProviderInvoke = this.providerFactory.invoke(strM358unboximpl, getQuirks(CameraDevices.m237awaitCameraMetadataFpsL5FU$default(cameraDevices, strM358unboximpl, null, 2, null)));
            EncoderProfilesProxy all = encoderProfilesProviderInvoke.getAll(1);
            int area = (all == null || (videoProfiles = all.getVideoProfiles()) == null || (videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) qn1.V(videoProfiles)) == null) ? 0 : SizeUtil.getArea(videoProfileProxy.getWidth(), videoProfileProxy.getHeight());
            if (area > i) {
                encoderProfilesProvider = encoderProfilesProviderInvoke;
                i = area;
            }
        }
        return encoderProfilesProvider;
    }

    private final List<Size> getPrivateFormatSizes(CameraMetadata cameraMetadata) {
        Size[] outputSizes;
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        key.getClass();
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(key);
        return (streamConfigurationMap == null || (outputSizes = streamConfigurationMap.getOutputSizes(34)) == null) ? kx2.b : yr.h0(outputSizes);
    }

    private final Quirks getQuirks(CameraMetadata cameraMetadata) {
        if (cameraMetadata == null) {
            return new Quirks(kx2.b);
        }
        CameraCharacteristics.Key key = CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP;
        key.getClass();
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraMetadata.get(key);
        return new CameraQuirks(cameraMetadata, new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(cameraMetadata, streamConfigurationMap))).getQuirks();
    }

    private final boolean isExternalCamera(CameraMetadata cameraMetadata) {
        CameraCharacteristics.Key key = CameraCharacteristics.LENS_FACING;
        key.getClass();
        Integer num = (Integer) cameraMetadata.get(key);
        return num != null && num.intValue() == 2;
    }

    private final boolean needFallback(CameraMetadata cameraMetadata, EncoderProfilesProvider encoderProfilesProvider) {
        return isExternalCamera(cameraMetadata) && !encoderProfilesProvider.hasProfile(1);
    }

    public final EncoderProfilesProvider resolveProvider(String str, Quirks quirks, CameraDevices cameraDevices) {
        str.getClass();
        quirks.getClass();
        cameraDevices.getClass();
        EncoderProfilesProvider encoderProfilesProviderInvoke = this.providerFactory.invoke(str, quirks);
        EncoderProfilesProvider encoderProfilesProviderFindProviderWithLargestSize = null;
        CameraMetadata cameraMetadataM237awaitCameraMetadataFpsL5FU$default = CameraDevices.m237awaitCameraMetadataFpsL5FU$default(cameraDevices, CameraId.m352constructorimpl(str), null, 2, null);
        if (cameraMetadataM237awaitCameraMetadataFpsL5FU$default != null) {
            if (needFallback(cameraMetadataM237awaitCameraMetadataFpsL5FU$default, encoderProfilesProviderInvoke) && (encoderProfilesProviderFindProviderWithLargestSize = findProviderWithLargestSize(cameraDevices)) != null) {
                encoderProfilesProviderFindProviderWithLargestSize = new SizeFilteredEncoderProfilesProvider(encoderProfilesProviderFindProviderWithLargestSize, getPrivateFormatSizes(cameraMetadataM237awaitCameraMetadataFpsL5FU$default));
            }
            if (encoderProfilesProviderFindProviderWithLargestSize != null) {
                return encoderProfilesProviderFindProviderWithLargestSize;
            }
        }
        return encoderProfilesProviderInvoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EncoderProfilesProviderFallback(bm3<? super String, ? super Quirks, ? extends EncoderProfilesProvider> bm3Var) {
        bm3Var.getClass();
        this.providerFactory = bm3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EncoderProfilesProviderFallback() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
