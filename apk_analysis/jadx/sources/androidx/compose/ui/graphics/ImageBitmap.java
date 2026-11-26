package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorSpace;
import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public interface ImageBitmap {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    public static final class DefaultImpls {
    }

    static /* synthetic */ void readPixels$default(ImageBitmap imageBitmap, int[] iArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: readPixels");
            return;
        }
        if ((i7 & 2) != 0) {
            i = 0;
        }
        if ((i7 & 4) != 0) {
            i2 = 0;
        }
        if ((i7 & 8) != 0) {
            i3 = imageBitmap.getWidth();
        }
        if ((i7 & 16) != 0) {
            i4 = imageBitmap.getHeight();
        }
        if ((i7 & 32) != 0) {
            i5 = 0;
        }
        if ((i7 & 64) != 0) {
            i6 = i3;
        }
        imageBitmap.readPixels(iArr, i, i2, i3, i4, i5, i6);
    }

    ColorSpace getColorSpace();

    /* JADX INFO: renamed from: getConfig-_sVssgQ */
    int mo6096getConfig_sVssgQ();

    boolean getHasAlpha();

    int getHeight();

    int getWidth();

    void prepareToDraw();

    void readPixels(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6);
}
