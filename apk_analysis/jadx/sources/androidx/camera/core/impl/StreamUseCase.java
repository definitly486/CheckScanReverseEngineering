package androidx.camera.core.impl;

import defpackage.g03;
import defpackage.h03;

/* JADX INFO: loaded from: classes.dex */
public enum StreamUseCase {
    DEFAULT(0),
    PREVIEW(1),
    VIDEO_RECORD(3),
    STILL_CAPTURE(2),
    VIDEO_CALL(5),
    PREVIEW_VIDEO_STILL(4),
    CROPPED_RAW(6);

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    private final long value;

    StreamUseCase(int i) {
        this.value = i;
    }

    public static g03<StreamUseCase> getEntries() {
        return $ENTRIES;
    }

    public final long getValue() {
        return this.value;
    }
}
