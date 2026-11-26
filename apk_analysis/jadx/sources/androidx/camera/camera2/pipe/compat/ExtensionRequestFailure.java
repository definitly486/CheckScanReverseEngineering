package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestFailure;
import androidx.camera.camera2.pipe.RequestMetadata;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ne4;
import defpackage.rg;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
public final class ExtensionRequestFailure implements RequestFailure {
    private final long frameNumber;
    private final int reason;
    private final RequestMetadata requestMetadata;
    private final boolean wasImageCaptured;

    private ExtensionRequestFailure(RequestMetadata requestMetadata, boolean z, long j, int i) {
        requestMetadata.getClass();
        this.requestMetadata = requestMetadata;
        this.wasImageCaptured = z;
        this.frameNumber = j;
        this.reason = i;
    }

    /* JADX INFO: renamed from: copy-FsN21Hw$default, reason: not valid java name */
    public static /* synthetic */ ExtensionRequestFailure m805copyFsN21Hw$default(ExtensionRequestFailure extensionRequestFailure, RequestMetadata requestMetadata, boolean z, long j, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            requestMetadata = extensionRequestFailure.requestMetadata;
        }
        if ((i2 & 2) != 0) {
            z = extensionRequestFailure.wasImageCaptured;
        }
        if ((i2 & 4) != 0) {
            j = extensionRequestFailure.frameNumber;
        }
        if ((i2 & 8) != 0) {
            i = extensionRequestFailure.reason;
        }
        int i3 = i;
        return extensionRequestFailure.m807copyFsN21Hw(requestMetadata, z, j, i3);
    }

    public final RequestMetadata component1() {
        return this.requestMetadata;
    }

    public final boolean component2() {
        return this.wasImageCaptured;
    }

    /* JADX INFO: renamed from: component3-Ugla2oM, reason: not valid java name */
    public final long m806component3Ugla2oM() {
        return this.frameNumber;
    }

    public final int component4() {
        return this.reason;
    }

    /* JADX INFO: renamed from: copy-FsN21Hw, reason: not valid java name */
    public final ExtensionRequestFailure m807copyFsN21Hw(RequestMetadata requestMetadata, boolean z, long j, int i) {
        requestMetadata.getClass();
        return new ExtensionRequestFailure(requestMetadata, z, j, i, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExtensionRequestFailure)) {
            return false;
        }
        ExtensionRequestFailure extensionRequestFailure = (ExtensionRequestFailure) obj;
        return aa4.e(this.requestMetadata, extensionRequestFailure.requestMetadata) && this.wasImageCaptured == extensionRequestFailure.wasImageCaptured && FrameNumber.m466equalsimpl0(this.frameNumber, extensionRequestFailure.frameNumber) && this.reason == extensionRequestFailure.reason;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    /* JADX INFO: renamed from: getFrameNumber-Ugla2oM */
    public long mo638getFrameNumberUgla2oM() {
        return this.frameNumber;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public int getReason() {
        return this.reason;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public RequestMetadata getRequestMetadata() {
        return this.requestMetadata;
    }

    @Override // androidx.camera.camera2.pipe.RequestFailure
    public boolean getWasImageCaptured() {
        return this.wasImageCaptured;
    }

    public int hashCode() {
        return Integer.hashCode(this.reason) + ((FrameNumber.m467hashCodeimpl(this.frameNumber) + tg.c(this.requestMetadata.hashCode() * 31, 31, this.wasImageCaptured)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ExtensionRequestFailure(requestMetadata=");
        sb.append(this.requestMetadata);
        sb.append(", wasImageCaptured=");
        sb.append(this.wasImageCaptured);
        sb.append(", frameNumber=");
        sb.append((Object) FrameNumber.m468toStringimpl(this.frameNumber));
        sb.append(", reason=");
        return rg.h(sb, this.reason, ')');
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public <T> T unwrapAs(ne4<T> ne4Var) {
        ne4Var.getClass();
        return null;
    }

    public /* synthetic */ ExtensionRequestFailure(RequestMetadata requestMetadata, boolean z, long j, int i, jh2 jh2Var) {
        this(requestMetadata, z, j, i);
    }
}
