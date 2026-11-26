package androidx.compose.ui.graphics;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public class ColorFilter {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final android.graphics.ColorFilter nativeColorFilter;

    public ColorFilter(android.graphics.ColorFilter colorFilter) {
        this.nativeColorFilter = colorFilter;
    }

    public final android.graphics.ColorFilter getNativeColorFilter$ui_graphics() {
        return this.nativeColorFilter;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: tint-xETnrds$default, reason: not valid java name */
        public static /* synthetic */ ColorFilter m6273tintxETnrds$default(Companion companion, long j, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = BlendMode.Companion.m6170getSrcIn0nO6VwU();
            }
            return companion.m6276tintxETnrds(j, i);
        }

        /* JADX INFO: renamed from: colorMatrix-jHG-Opc, reason: not valid java name */
        public final ColorFilter m6274colorMatrixjHGOpc(float[] fArr) {
            return new ColorMatrixColorFilter(fArr, (jh2) null);
        }

        /* JADX INFO: renamed from: lighting--OWjLjI, reason: not valid java name */
        public final ColorFilter m6275lightingOWjLjI(long j, long j2) {
            return new LightingColorFilter(j, j2, (jh2) null);
        }

        /* JADX INFO: renamed from: tint-xETnrds, reason: not valid java name */
        public final ColorFilter m6276tintxETnrds(long j, int i) {
            return new BlendModeColorFilter(j, i, (jh2) null);
        }

        private Companion() {
        }
    }
}
