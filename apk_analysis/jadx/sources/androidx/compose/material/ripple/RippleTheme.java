package androidx.compose.material.ripple;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@ul2
public interface RippleTheme {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @ul2
        /* JADX INFO: renamed from: defaultRippleAlpha-DxMtmZc, reason: not valid java name */
        public final RippleAlpha m3064defaultRippleAlphaDxMtmZc(long j, boolean z) {
            if (z) {
                return ((double) ColorKt.m6284luminance8_81llA(j)) > 0.5d ? RippleThemeKt.LightThemeHighContrastRippleAlpha : RippleThemeKt.LightThemeLowContrastRippleAlpha;
            }
            return RippleThemeKt.DarkThemeRippleAlpha;
        }

        @ul2
        /* JADX INFO: renamed from: defaultRippleColor-5vOe2sY, reason: not valid java name */
        public final long m3065defaultRippleColor5vOe2sY(long j, boolean z) {
            return (z || ((double) ColorKt.m6284luminance8_81llA(j)) >= 0.5d) ? j : Color.Companion.m6269getWhite0d7_KjU();
        }
    }

    @ul2
    /* JADX INFO: renamed from: defaultColor-WaAFU9c */
    long mo3053defaultColorWaAFU9c(Composer composer, int i);

    @ul2
    RippleAlpha rippleAlpha(Composer composer, int i);
}
