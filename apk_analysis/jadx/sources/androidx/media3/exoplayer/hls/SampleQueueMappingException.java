package androidx.media3.exoplayer.hls;

import defpackage.me0;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(String str) {
        super(me0.c("Unable to bind a sample queue to TrackGroup with MIME type ", str, "."));
    }
}
