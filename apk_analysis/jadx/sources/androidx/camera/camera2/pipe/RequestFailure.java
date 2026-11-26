package androidx.camera.camera2.pipe;

/* JADX INFO: loaded from: classes.dex */
public interface RequestFailure extends UnsafeWrapper {
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM, reason: not valid java name */
    long mo638getFrameNumberUgla2oM();

    int getReason();

    RequestMetadata getRequestMetadata();

    boolean getWasImageCaptured();
}
