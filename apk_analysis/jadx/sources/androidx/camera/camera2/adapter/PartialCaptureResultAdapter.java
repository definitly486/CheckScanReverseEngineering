package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;
import defpackage.jh2;
import defpackage.ne4;
import defpackage.wg;
import defpackage.x07;

/* JADX INFO: loaded from: classes.dex */
public final class PartialCaptureResultAdapter implements CameraCaptureResult, UnsafeWrapper {
    private final long frameNumber;
    private final RequestMetadata requestMetadata;
    private final FrameMetadata result;

    private PartialCaptureResultAdapter(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata) {
        requestMetadata.getClass();
        frameMetadata.getClass();
        this.requestMetadata = requestMetadata;
        this.frameNumber = j;
        this.result = frameMetadata;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AeMode getAeMode() {
        return CaptureResultAdapterKt.getAeMode(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AeState getAeState() {
        return CaptureResultAdapterKt.getAeState(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AfMode getAfMode() {
        return CaptureResultAdapterKt.getAfMode(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AfState getAfState() {
        return CaptureResultAdapterKt.getAfState(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AwbMode getAwbMode() {
        return CaptureResultAdapterKt.getAwbMode(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AwbState getAwbState() {
        return CaptureResultAdapterKt.getAwbState(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CaptureResult getCaptureResult() {
        Object objUnwrapAs = unwrapAs(x07.a(CaptureResult.class));
        if (objUnwrapAs != null) {
            return (CaptureResult) objUnwrapAs;
        }
        wg.c(this, "Failed to unwrap ", " as CaptureResult");
        return null;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.FlashState getFlashState() {
        return CaptureResultAdapterKt.getFlashState(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public TagBundle getTagBundle() {
        return (TagBundle) this.requestMetadata.getOrDefault(TagsKt.getCAMERAX_TAG_BUNDLE(), TagBundle.emptyBundle());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        return CaptureResultAdapterKt.getTimestamp(this.result);
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public void populateExifData(ExifData.Builder builder) {
        builder.getClass();
        super.populateExifData(builder);
        CaptureResultAdapterKt.populateExifData(this.result, builder);
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        ne4Var.getClass();
        return (T) this.result.unwrapAs(ne4Var);
    }

    public /* synthetic */ PartialCaptureResultAdapter(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata, jh2 jh2Var) {
        this(requestMetadata, j, frameMetadata);
    }
}
