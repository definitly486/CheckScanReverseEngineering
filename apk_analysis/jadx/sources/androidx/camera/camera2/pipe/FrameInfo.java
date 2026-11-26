package androidx.camera.camera2.pipe;

/* JADX INFO: loaded from: classes.dex */
public interface FrameInfo extends UnsafeWrapper {
    /* JADX INFO: renamed from: get-EfqyGwQ */
    FrameMetadata mo64getEfqyGwQ(String str);

    /* JADX INFO: renamed from: getCamera-Dz_R5H8 */
    String mo65getCameraDz_R5H8();

    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    long mo66getFrameNumberUgla2oM();

    FrameMetadata getMetadata();

    RequestMetadata getRequestMetadata();
}
