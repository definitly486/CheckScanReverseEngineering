package androidx.media3.common;

import defpackage.o8;

/* JADX INFO: loaded from: classes3.dex */
public class FrameInfo {
    public final Format format;
    public final long offsetToAddUs;

    public FrameInfo(Format format, long j) {
        o8.f(format.colorInfo != null, "format colorInfo must be set");
        int i = format.width;
        o8.b(i, "format width must be positive, but is: %s", i > 0);
        int i2 = format.height;
        o8.b(i2, "format height must be positive, but is: %s", i2 > 0);
        this.format = format;
        this.offsetToAddUs = j;
    }
}
