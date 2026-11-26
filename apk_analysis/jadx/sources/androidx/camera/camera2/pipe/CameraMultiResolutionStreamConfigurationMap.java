package androidx.camera.camera2.pipe;

import android.hardware.camera2.params.MultiResolutionStreamInfo;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CameraMultiResolutionStreamConfigurationMap extends UnsafeWrapper {
    List<StreamFormat> getInputFormats();

    /* JADX INFO: renamed from: getInputInfo-hNQ4ISI, reason: not valid java name */
    List<MultiResolutionStreamInfo> mo372getInputInfohNQ4ISI(int i);

    List<StreamFormat> getOutputFormats();

    /* JADX INFO: renamed from: getOutputInfo-hNQ4ISI, reason: not valid java name */
    List<MultiResolutionStreamInfo> mo373getOutputInfohNQ4ISI(int i);

    /* JADX INFO: renamed from: isConcurrentReadersSupported-hNQ4ISI, reason: not valid java name */
    boolean mo374isConcurrentReadersSupportedhNQ4ISI(int i);
}
