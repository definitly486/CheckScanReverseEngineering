package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.camera.camera2.impl.TagsKt;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.UnsafeWrapper;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;
import defpackage.jh2;
import defpackage.ne4;
import defpackage.vh;
import defpackage.wg;
import defpackage.x07;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureResultAdapter implements CameraCaptureResult, UnsafeWrapper {
    private final long frameNumber;
    private final RequestMetadata requestMetadata;
    private final FrameInfo result;

    private CaptureResultAdapter(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        this.requestMetadata = requestMetadata;
        this.frameNumber = j;
        this.result = frameInfo;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AeMode getAeMode() {
        return CaptureResultAdapterKt.getAeMode(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AeState getAeState() {
        return CaptureResultAdapterKt.getAeState(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AfMode getAfMode() {
        return CaptureResultAdapterKt.getAfMode(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AfState getAfState() {
        return CaptureResultAdapterKt.getAfState(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AwbMode getAwbMode() {
        return CaptureResultAdapterKt.getAwbMode(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.AwbState getAwbState() {
        return CaptureResultAdapterKt.getAwbState(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CaptureResult getCaptureResult() {
        Object objUnwrapAs = unwrapAs(x07.a(TotalCaptureResult.class));
        if (objUnwrapAs != null) {
            return (CaptureResult) objUnwrapAs;
        }
        wg.c(this, "Failed to unwrap ", " as TotalCaptureResult");
        return null;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public CameraCaptureMetaData.FlashState getFlashState() {
        return CaptureResultAdapterKt.getFlashState(this.result.getMetadata());
    }

    public final FrameInfo getResult$camera_camera2() {
        return this.result;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public TagBundle getTagBundle() {
        return (TagBundle) this.requestMetadata.getOrDefault(TagsKt.getCAMERAX_TAG_BUNDLE(), TagBundle.emptyBundle());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        return CaptureResultAdapterKt.getTimestamp(this.result.getMetadata());
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public void populateExifData(ExifData.Builder builder) {
        builder.getClass();
        super.populateExifData(builder);
        CaptureResultAdapterKt.populateExifData(this.result.getMetadata(), builder);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, androidx.camera.camera2.pipe.FrameInfo, androidx.camera.camera2.pipe.UnsafeWrapper, java.lang.Object] */
    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        boolean zG = vh.g(ne4Var, FrameInfo.class);
        ?? r1 = (T) this.result;
        if (!zG) {
            return (T) r1.unwrapAs(ne4Var);
        }
        r1.getClass();
        return r1;
    }

    public /* synthetic */ CaptureResultAdapter(RequestMetadata requestMetadata, long j, FrameInfo frameInfo, jh2 jh2Var) {
        this(requestMetadata, j, frameInfo);
    }
}
