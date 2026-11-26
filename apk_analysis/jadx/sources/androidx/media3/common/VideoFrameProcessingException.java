package androidx.media3.common;

import defpackage.ad2;
import defpackage.r01;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoFrameProcessingException extends Exception {
    public final long presentationTimeUs;

    /* JADX WARN: Illegal instructions before constructor call */
    public VideoFrameProcessingException(String str, long j) {
        StringBuilder sbC = ad2.c(str);
        sbC.append(getPresentationTimeUsString(j));
        super(sbC.toString());
        this.presentationTimeUs = j;
    }

    public static VideoFrameProcessingException from(Exception exc, long j) {
        return exc instanceof VideoFrameProcessingException ? (VideoFrameProcessingException) exc : new VideoFrameProcessingException(exc, j);
    }

    private static String getPresentationTimeUsString(long j) {
        return j == C.TIME_UNSET ? " @UNSET" : r01.c(j, " @");
    }

    public static VideoFrameProcessingException from(Exception exc) {
        return from(exc, C.TIME_UNSET);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public VideoFrameProcessingException(String str, Throwable th, long j) {
        StringBuilder sbC = ad2.c(str);
        sbC.append(getPresentationTimeUsString(j));
        super(sbC.toString(), th);
        this.presentationTimeUs = j;
    }

    public VideoFrameProcessingException(String str) {
        this(str, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(String str, Throwable th) {
        this(str, th, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(Throwable th) {
        this(th, C.TIME_UNSET);
    }

    public VideoFrameProcessingException(Throwable th, long j) {
        super(getPresentationTimeUsString(j), th);
        this.presentationTimeUs = j;
    }
}
