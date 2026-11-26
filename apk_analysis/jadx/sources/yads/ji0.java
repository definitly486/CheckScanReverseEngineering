package yads;

import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class ji0 {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long k;
    public int l;

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = this.d;
        int i5 = this.e;
        int i6 = this.f;
        int i7 = this.g;
        int i8 = this.h;
        int i9 = this.i;
        int i10 = this.j;
        long j = this.k;
        int i11 = this.l;
        int i12 = u56.a;
        Locale locale = Locale.US;
        StringBuilder sbF = defpackage.bg.f(i, i2, "DecoderCounters {\n decoderInits=", ",\n decoderReleases=", "\n queuedInputBuffers=");
        defpackage.gg.e(sbF, i3, "\n skippedInputBuffers=", i4, "\n renderedOutputBuffers=");
        defpackage.gg.e(sbF, i5, "\n skippedOutputBuffers=", i6, "\n droppedBuffers=");
        defpackage.gg.e(sbF, i7, "\n droppedInputBuffers=", i8, "\n maxConsecutiveDroppedBuffers=");
        defpackage.gg.e(sbF, i9, "\n droppedToKeyframeEvents=", i10, "\n totalVideoFrameProcessingOffsetUs=");
        sbF.append(j);
        sbF.append("\n videoFrameProcessingOffsetCount=");
        sbF.append(i11);
        sbF.append("\n}");
        return sbF.toString();
    }
}
