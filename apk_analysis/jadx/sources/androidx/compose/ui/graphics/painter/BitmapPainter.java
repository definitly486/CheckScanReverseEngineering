package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class BitmapPainter extends Painter {
    public static final int $stable = 8;
    private float alpha;
    private ColorFilter colorFilter;
    private int filterQuality;
    private final ImageBitmap image;
    private final long size;
    private final long srcOffset;
    private final long srcSize;

    public /* synthetic */ BitmapPainter(ImageBitmap imageBitmap, long j, long j2, int i, jh2 jh2Var) {
        this(imageBitmap, (i & 2) != 0 ? IntOffset.Companion.m9181getZeronOccac() : j, (i & 4) != 0 ? IntSize.m9208constructorimpl((((long) imageBitmap.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) imageBitmap.getWidth()) << 32)) : j2, null);
    }

    /* JADX INFO: renamed from: validateSize-N5eqBDc, reason: not valid java name */
    private final long m6924validateSizeN5eqBDc(long j, long j2) {
        int i;
        int i2;
        if (IntOffset.m9170getXimpl(j) >= 0 && IntOffset.m9171getYimpl(j) >= 0 && (i = (int) (j2 >> 32)) >= 0 && (i2 = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j2)) >= 0 && i <= this.image.getWidth() && i2 <= this.image.getHeight()) {
            return j2;
        }
        fg.c("Failed requirement.");
        return 0L;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public boolean applyAlpha(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public boolean applyColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapPainter)) {
            return false;
        }
        BitmapPainter bitmapPainter = (BitmapPainter) obj;
        return aa4.e(this.image, bitmapPainter.image) && IntOffset.m9169equalsimpl0(this.srcOffset, bitmapPainter.srcOffset) && IntSize.m9211equalsimpl0(this.srcSize, bitmapPainter.srcSize) && FilterQuality.m6327equalsimpl0(this.filterQuality, bitmapPainter.filterQuality);
    }

    /* JADX INFO: renamed from: getFilterQuality-f-v9h1I$ui_graphics, reason: not valid java name */
    public final int m6925getFilterQualityfv9h1I$ui_graphics() {
        return this.filterQuality;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc, reason: not valid java name */
    public long mo6926getIntrinsicSizeNHjbRc() {
        return IntSizeKt.m9225toSizeozmzZPI(this.size);
    }

    public int hashCode() {
        return FilterQuality.m6328hashCodeimpl(this.filterQuality) + ((IntSize.m9214hashCodeimpl(this.srcSize) + ((IntOffset.m9172hashCodeimpl(this.srcOffset) + (this.image.hashCode() * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(DrawScope drawScope) {
        ImageBitmap imageBitmap = this.image;
        long j = this.srcOffset;
        long j2 = this.srcSize;
        int iRound = Math.round(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)));
        long j3 = ((long) iRound) << 32;
        DrawScope.m6789drawImageAZ2fEMs$default(drawScope, imageBitmap, j, j2, 0L, IntSize.m9208constructorimpl((((long) Math.round(Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | j3), this.alpha, null, this.colorFilter, 0, this.filterQuality, 328, null);
    }

    /* JADX INFO: renamed from: setFilterQuality-vDHp3xo$ui_graphics, reason: not valid java name */
    public final void m6927setFilterQualityvDHp3xo$ui_graphics(int i) {
        this.filterQuality = i;
    }

    public String toString() {
        return "BitmapPainter(image=" + this.image + ", srcOffset=" + ((Object) IntOffset.m9177toStringimpl(this.srcOffset)) + ", srcSize=" + ((Object) IntSize.m9216toStringimpl(this.srcSize)) + ", filterQuality=" + ((Object) FilterQuality.m6329toStringimpl(this.filterQuality)) + ')';
    }

    private BitmapPainter(ImageBitmap imageBitmap, long j, long j2) {
        this.image = imageBitmap;
        this.srcOffset = j;
        this.srcSize = j2;
        this.filterQuality = FilterQuality.Companion.m6332getLowfv9h1I();
        this.size = m6924validateSizeN5eqBDc(j, j2);
        this.alpha = 1.0f;
    }

    public /* synthetic */ BitmapPainter(ImageBitmap imageBitmap, long j, long j2, jh2 jh2Var) {
        this(imageBitmap, j, j2);
    }
}
