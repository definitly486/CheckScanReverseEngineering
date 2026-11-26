package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.DurationNs;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class CameraStateClosed extends CameraState {
    private final DurationNs cameraActiveDurationNs;
    private final ClosedReason cameraClosedReason;
    private final DurationNs cameraClosingDurationNs;
    private final CameraError cameraErrorCode;
    private final Throwable cameraException;
    private final String cameraId;
    private final DurationNs cameraOpenDurationNs;
    private final Integer cameraRetryCount;
    private final DurationNs cameraRetryDurationNs;

    public /* synthetic */ CameraStateClosed(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError, int i, jh2 jh2Var) {
        this(str, closedReason, (i & 4) != 0 ? null : num, (i & 8) != 0 ? null : durationNs, (i & 16) != 0 ? null : th, (i & 32) != 0 ? null : durationNs2, (i & 64) != 0 ? null : durationNs3, (i & 128) != 0 ? null : durationNs4, (i & 256) != 0 ? null : cameraError, null);
    }

    /* JADX INFO: renamed from: copy-21rfiog$default, reason: not valid java name */
    public static /* synthetic */ CameraStateClosed m785copy21rfiog$default(CameraStateClosed cameraStateClosed, String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cameraStateClosed.cameraId;
        }
        if ((i & 2) != 0) {
            closedReason = cameraStateClosed.cameraClosedReason;
        }
        if ((i & 4) != 0) {
            num = cameraStateClosed.cameraRetryCount;
        }
        if ((i & 8) != 0) {
            durationNs = cameraStateClosed.cameraRetryDurationNs;
        }
        if ((i & 16) != 0) {
            th = cameraStateClosed.cameraException;
        }
        if ((i & 32) != 0) {
            durationNs2 = cameraStateClosed.cameraOpenDurationNs;
        }
        if ((i & 64) != 0) {
            durationNs3 = cameraStateClosed.cameraActiveDurationNs;
        }
        if ((i & 128) != 0) {
            durationNs4 = cameraStateClosed.cameraClosingDurationNs;
        }
        if ((i & 256) != 0) {
            cameraError = cameraStateClosed.cameraErrorCode;
        }
        DurationNs durationNs5 = durationNs4;
        CameraError cameraError2 = cameraError;
        DurationNs durationNs6 = durationNs2;
        DurationNs durationNs7 = durationNs3;
        Throwable th2 = th;
        Integer num2 = num;
        return cameraStateClosed.m792copy21rfiog(str, closedReason, num2, durationNs, th2, durationNs6, durationNs7, durationNs5, cameraError2);
    }

    /* JADX INFO: renamed from: component1-Dz_R5H8, reason: not valid java name */
    public final String m786component1Dz_R5H8() {
        return this.cameraId;
    }

    public final ClosedReason component2() {
        return this.cameraClosedReason;
    }

    public final Integer component3() {
        return this.cameraRetryCount;
    }

    /* JADX INFO: renamed from: component4-QWez1Bs, reason: not valid java name */
    public final DurationNs m787component4QWez1Bs() {
        return this.cameraRetryDurationNs;
    }

    public final Throwable component5() {
        return this.cameraException;
    }

    /* JADX INFO: renamed from: component6-QWez1Bs, reason: not valid java name */
    public final DurationNs m788component6QWez1Bs() {
        return this.cameraOpenDurationNs;
    }

    /* JADX INFO: renamed from: component7-QWez1Bs, reason: not valid java name */
    public final DurationNs m789component7QWez1Bs() {
        return this.cameraActiveDurationNs;
    }

    /* JADX INFO: renamed from: component8-QWez1Bs, reason: not valid java name */
    public final DurationNs m790component8QWez1Bs() {
        return this.cameraClosingDurationNs;
    }

    /* JADX INFO: renamed from: component9-mVEW8x0, reason: not valid java name */
    public final CameraError m791component9mVEW8x0() {
        return this.cameraErrorCode;
    }

    /* JADX INFO: renamed from: copy-21rfiog, reason: not valid java name */
    public final CameraStateClosed m792copy21rfiog(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError) {
        str.getClass();
        closedReason.getClass();
        return new CameraStateClosed(str, closedReason, num, durationNs, th, durationNs2, durationNs3, durationNs4, cameraError, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraStateClosed)) {
            return false;
        }
        CameraStateClosed cameraStateClosed = (CameraStateClosed) obj;
        return CameraId.m354equalsimpl0(this.cameraId, cameraStateClosed.cameraId) && this.cameraClosedReason == cameraStateClosed.cameraClosedReason && aa4.e(this.cameraRetryCount, cameraStateClosed.cameraRetryCount) && aa4.e(this.cameraRetryDurationNs, cameraStateClosed.cameraRetryDurationNs) && aa4.e(this.cameraException, cameraStateClosed.cameraException) && aa4.e(this.cameraOpenDurationNs, cameraStateClosed.cameraOpenDurationNs) && aa4.e(this.cameraActiveDurationNs, cameraStateClosed.cameraActiveDurationNs) && aa4.e(this.cameraClosingDurationNs, cameraStateClosed.cameraClosingDurationNs) && aa4.e(this.cameraErrorCode, cameraStateClosed.cameraErrorCode);
    }

    /* JADX INFO: renamed from: getCameraActiveDurationNs-QWez1Bs, reason: not valid java name */
    public final DurationNs m793getCameraActiveDurationNsQWez1Bs() {
        return this.cameraActiveDurationNs;
    }

    public final ClosedReason getCameraClosedReason() {
        return this.cameraClosedReason;
    }

    /* JADX INFO: renamed from: getCameraClosingDurationNs-QWez1Bs, reason: not valid java name */
    public final DurationNs m794getCameraClosingDurationNsQWez1Bs() {
        return this.cameraClosingDurationNs;
    }

    /* JADX INFO: renamed from: getCameraErrorCode-mVEW8x0, reason: not valid java name */
    public final CameraError m795getCameraErrorCodemVEW8x0() {
        return this.cameraErrorCode;
    }

    public final Throwable getCameraException() {
        return this.cameraException;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m796getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    /* JADX INFO: renamed from: getCameraOpenDurationNs-QWez1Bs, reason: not valid java name */
    public final DurationNs m797getCameraOpenDurationNsQWez1Bs() {
        return this.cameraOpenDurationNs;
    }

    public final Integer getCameraRetryCount() {
        return this.cameraRetryCount;
    }

    /* JADX INFO: renamed from: getCameraRetryDurationNs-QWez1Bs, reason: not valid java name */
    public final DurationNs m798getCameraRetryDurationNsQWez1Bs() {
        return this.cameraRetryDurationNs;
    }

    public int hashCode() {
        int iHashCode = (this.cameraClosedReason.hashCode() + (CameraId.m355hashCodeimpl(this.cameraId) * 31)) * 31;
        Integer num = this.cameraRetryCount;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        DurationNs durationNs = this.cameraRetryDurationNs;
        int iM848hashCodeimpl = (iHashCode2 + (durationNs == null ? 0 : DurationNs.m848hashCodeimpl(durationNs.m853unboximpl()))) * 31;
        Throwable th = this.cameraException;
        int iHashCode3 = (iM848hashCodeimpl + (th == null ? 0 : th.hashCode())) * 31;
        DurationNs durationNs2 = this.cameraOpenDurationNs;
        int iM848hashCodeimpl2 = (iHashCode3 + (durationNs2 == null ? 0 : DurationNs.m848hashCodeimpl(durationNs2.m853unboximpl()))) * 31;
        DurationNs durationNs3 = this.cameraActiveDurationNs;
        int iM848hashCodeimpl3 = (iM848hashCodeimpl2 + (durationNs3 == null ? 0 : DurationNs.m848hashCodeimpl(durationNs3.m853unboximpl()))) * 31;
        DurationNs durationNs4 = this.cameraClosingDurationNs;
        int iM848hashCodeimpl4 = (iM848hashCodeimpl3 + (durationNs4 == null ? 0 : DurationNs.m848hashCodeimpl(durationNs4.m853unboximpl()))) * 31;
        CameraError cameraError = this.cameraErrorCode;
        return iM848hashCodeimpl4 + (cameraError != null ? CameraError.m280hashCodeimpl(cameraError.m283unboximpl()) : 0);
    }

    public String toString() {
        return "CameraStateClosed(cameraId=" + ((Object) CameraId.m357toStringimpl(this.cameraId)) + ", cameraClosedReason=" + this.cameraClosedReason + ", cameraRetryCount=" + this.cameraRetryCount + ", cameraRetryDurationNs=" + this.cameraRetryDurationNs + ", cameraException=" + this.cameraException + ", cameraOpenDurationNs=" + this.cameraOpenDurationNs + ", cameraActiveDurationNs=" + this.cameraActiveDurationNs + ", cameraClosingDurationNs=" + this.cameraClosingDurationNs + ", cameraErrorCode=" + this.cameraErrorCode + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraStateClosed(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError) {
        super(null);
        str.getClass();
        closedReason.getClass();
        this.cameraId = str;
        this.cameraClosedReason = closedReason;
        this.cameraRetryCount = num;
        this.cameraRetryDurationNs = durationNs;
        this.cameraException = th;
        this.cameraOpenDurationNs = durationNs2;
        this.cameraActiveDurationNs = durationNs3;
        this.cameraClosingDurationNs = durationNs4;
        this.cameraErrorCode = cameraError;
    }

    public /* synthetic */ CameraStateClosed(String str, ClosedReason closedReason, Integer num, DurationNs durationNs, Throwable th, DurationNs durationNs2, DurationNs durationNs3, DurationNs durationNs4, CameraError cameraError, jh2 jh2Var) {
        this(str, closedReason, num, durationNs, th, durationNs2, durationNs3, durationNs4, cameraError);
    }
}
