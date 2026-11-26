package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.RequestNumber;
import defpackage.kt;
import defpackage.lt;
import defpackage.mt;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CaptureSequenceProcessorKt {
    private static final boolean REQUIRE_SURFACE_FOR_ALL_STREAMS = false;
    private static final lt captureSequenceProcessorDebugIds = kt.b(0);
    private static final mt captureSequenceDebugIds = kt.c();
    private static final mt requestTags = kt.c();

    public static final mt getCaptureSequenceDebugIds() {
        return captureSequenceDebugIds;
    }

    public static final lt getCaptureSequenceProcessorDebugIds() {
        return captureSequenceProcessorDebugIds;
    }

    public static final mt getRequestTags() {
        return requestTags;
    }

    public static final long nextRequestNumber() {
        return RequestNumber.m640constructorimpl(requestTags.a());
    }
}
