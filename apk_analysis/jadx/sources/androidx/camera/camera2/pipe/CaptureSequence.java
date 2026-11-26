package androidx.camera.camera2.pipe;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CaptureSequence<TCaptureRequest> {

    public interface CaptureSequenceListener {
        void onCaptureSequenceComplete(CaptureSequence<?> captureSequence);
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    String mo400getCameraIdDz_R5H8();

    List<RequestMetadata> getCaptureMetadataList();

    List<TCaptureRequest> getCaptureRequestList();

    List<Request.Listener> getListeners();

    boolean getRepeating();

    CaptureSequenceListener getSequenceListener();

    int getSequenceNumber();

    void setSequenceNumber(int i);
}
