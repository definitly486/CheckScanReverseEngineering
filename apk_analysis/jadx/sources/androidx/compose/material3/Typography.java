package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyTokens;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.text.TextStyle;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.jn;

/* JADX INFO: loaded from: classes2.dex */
public final class Typography {
    public static final int $stable = 0;
    private final TextStyle bodyLarge;
    private final TextStyle bodyLargeEmphasized;
    private final TextStyle bodyMedium;
    private final TextStyle bodyMediumEmphasized;
    private final TextStyle bodySmall;
    private final TextStyle bodySmallEmphasized;
    private final TextStyle displayLarge;
    private final TextStyle displayLargeEmphasized;
    private final TextStyle displayMedium;
    private final TextStyle displayMediumEmphasized;
    private final TextStyle displaySmall;
    private final TextStyle displaySmallEmphasized;
    private final TextStyle headlineLarge;
    private final TextStyle headlineLargeEmphasized;
    private final TextStyle headlineMedium;
    private final TextStyle headlineMediumEmphasized;
    private final TextStyle headlineSmall;
    private final TextStyle headlineSmallEmphasized;
    private final TextStyle labelLarge;
    private final TextStyle labelLargeEmphasized;
    private final TextStyle labelMedium;
    private final TextStyle labelMediumEmphasized;
    private final TextStyle labelSmall;
    private final TextStyle labelSmallEmphasized;
    private final TextStyle titleLarge;
    private final TextStyle titleLargeEmphasized;
    private final TextStyle titleMedium;
    private final TextStyle titleMediumEmphasized;
    private final TextStyle titleSmall;
    private final TextStyle titleSmallEmphasized;

    public /* synthetic */ Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16, TextStyle textStyle17, TextStyle textStyle18, TextStyle textStyle19, TextStyle textStyle20, TextStyle textStyle21, TextStyle textStyle22, TextStyle textStyle23, TextStyle textStyle24, TextStyle textStyle25, TextStyle textStyle26, TextStyle textStyle27, TextStyle textStyle28, TextStyle textStyle29, TextStyle textStyle30, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? TypographyTokens.INSTANCE.getDisplayLarge() : textStyle, (i & 2) != 0 ? TypographyTokens.INSTANCE.getDisplayMedium() : textStyle2, (i & 4) != 0 ? TypographyTokens.INSTANCE.getDisplaySmall() : textStyle3, (i & 8) != 0 ? TypographyTokens.INSTANCE.getHeadlineLarge() : textStyle4, (i & 16) != 0 ? TypographyTokens.INSTANCE.getHeadlineMedium() : textStyle5, (i & 32) != 0 ? TypographyTokens.INSTANCE.getHeadlineSmall() : textStyle6, (i & 64) != 0 ? TypographyTokens.INSTANCE.getTitleLarge() : textStyle7, (i & 128) != 0 ? TypographyTokens.INSTANCE.getTitleMedium() : textStyle8, (i & 256) != 0 ? TypographyTokens.INSTANCE.getTitleSmall() : textStyle9, (i & 512) != 0 ? TypographyTokens.INSTANCE.getBodyLarge() : textStyle10, (i & 1024) != 0 ? TypographyTokens.INSTANCE.getBodyMedium() : textStyle11, (i & 2048) != 0 ? TypographyTokens.INSTANCE.getBodySmall() : textStyle12, (i & 4096) != 0 ? TypographyTokens.INSTANCE.getLabelLarge() : textStyle13, (i & 8192) != 0 ? TypographyTokens.INSTANCE.getLabelMedium() : textStyle14, (i & 16384) != 0 ? TypographyTokens.INSTANCE.getLabelSmall() : textStyle15, (i & 32768) != 0 ? TypographyTokens.INSTANCE.getDisplayLargeEmphasized() : textStyle16, (i & 65536) != 0 ? TypographyTokens.INSTANCE.getDisplayMediumEmphasized() : textStyle17, (i & 131072) != 0 ? TypographyTokens.INSTANCE.getDisplaySmallEmphasized() : textStyle18, (i & 262144) != 0 ? TypographyTokens.INSTANCE.getHeadlineLargeEmphasized() : textStyle19, (i & 524288) != 0 ? TypographyTokens.INSTANCE.getHeadlineMediumEmphasized() : textStyle20, (i & 1048576) != 0 ? TypographyTokens.INSTANCE.getHeadlineSmallEmphasized() : textStyle21, (i & 2097152) != 0 ? TypographyTokens.INSTANCE.getTitleLargeEmphasized() : textStyle22, (i & 4194304) != 0 ? TypographyTokens.INSTANCE.getTitleMediumEmphasized() : textStyle23, (i & 8388608) != 0 ? TypographyTokens.INSTANCE.getTitleSmallEmphasized() : textStyle24, (i & 16777216) != 0 ? TypographyTokens.INSTANCE.getBodyLargeEmphasized() : textStyle25, (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? TypographyTokens.INSTANCE.getBodyMediumEmphasized() : textStyle26, (i & 67108864) != 0 ? TypographyTokens.INSTANCE.getBodySmallEmphasized() : textStyle27, (i & 134217728) != 0 ? TypographyTokens.INSTANCE.getLabelLargeEmphasized() : textStyle28, (i & 268435456) != 0 ? TypographyTokens.INSTANCE.getLabelMediumEmphasized() : textStyle29, (i & 536870912) != 0 ? TypographyTokens.INSTANCE.getLabelSmallEmphasized() : textStyle30);
    }

    public static /* synthetic */ Typography copy$material3$default(Typography typography, TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16, TextStyle textStyle17, TextStyle textStyle18, TextStyle textStyle19, TextStyle textStyle20, TextStyle textStyle21, TextStyle textStyle22, TextStyle textStyle23, TextStyle textStyle24, TextStyle textStyle25, TextStyle textStyle26, TextStyle textStyle27, TextStyle textStyle28, TextStyle textStyle29, TextStyle textStyle30, int i, Object obj) {
        TextStyle textStyle31;
        TextStyle textStyle32;
        TextStyle textStyle33 = (i & 1) != 0 ? typography.displayLarge : textStyle;
        TextStyle textStyle34 = (i & 2) != 0 ? typography.displayMedium : textStyle2;
        TextStyle textStyle35 = (i & 4) != 0 ? typography.displaySmall : textStyle3;
        TextStyle textStyle36 = (i & 8) != 0 ? typography.headlineLarge : textStyle4;
        TextStyle textStyle37 = (i & 16) != 0 ? typography.headlineMedium : textStyle5;
        TextStyle textStyle38 = (i & 32) != 0 ? typography.headlineSmall : textStyle6;
        TextStyle textStyle39 = (i & 64) != 0 ? typography.titleLarge : textStyle7;
        TextStyle textStyle40 = (i & 128) != 0 ? typography.titleMedium : textStyle8;
        TextStyle textStyle41 = (i & 256) != 0 ? typography.titleSmall : textStyle9;
        TextStyle textStyle42 = (i & 512) != 0 ? typography.bodyLarge : textStyle10;
        TextStyle textStyle43 = (i & 1024) != 0 ? typography.bodyMedium : textStyle11;
        TextStyle textStyle44 = (i & 2048) != 0 ? typography.bodySmall : textStyle12;
        TextStyle textStyle45 = (i & 4096) != 0 ? typography.labelLarge : textStyle13;
        TextStyle textStyle46 = (i & 8192) != 0 ? typography.labelMedium : textStyle14;
        TextStyle textStyle47 = textStyle33;
        TextStyle textStyle48 = (i & 16384) != 0 ? typography.labelSmall : textStyle15;
        TextStyle textStyle49 = (i & 32768) != 0 ? typography.displayLargeEmphasized : textStyle16;
        TextStyle textStyle50 = (i & 65536) != 0 ? typography.displayMediumEmphasized : textStyle17;
        TextStyle textStyle51 = (i & 131072) != 0 ? typography.displaySmallEmphasized : textStyle18;
        TextStyle textStyle52 = (i & 262144) != 0 ? typography.headlineLargeEmphasized : textStyle19;
        TextStyle textStyle53 = (i & 524288) != 0 ? typography.headlineMediumEmphasized : textStyle20;
        TextStyle textStyle54 = (i & 1048576) != 0 ? typography.headlineSmallEmphasized : textStyle21;
        TextStyle textStyle55 = (i & 2097152) != 0 ? typography.titleLargeEmphasized : textStyle22;
        TextStyle textStyle56 = (i & 4194304) != 0 ? typography.titleMediumEmphasized : textStyle23;
        TextStyle textStyle57 = (i & 8388608) != 0 ? typography.titleSmallEmphasized : textStyle24;
        TextStyle textStyle58 = (i & 16777216) != 0 ? typography.bodyLargeEmphasized : textStyle25;
        TextStyle textStyle59 = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? typography.bodyMediumEmphasized : textStyle26;
        TextStyle textStyle60 = (i & 67108864) != 0 ? typography.bodySmallEmphasized : textStyle27;
        TextStyle textStyle61 = (i & 134217728) != 0 ? typography.labelLargeEmphasized : textStyle28;
        TextStyle textStyle62 = (i & 268435456) != 0 ? typography.labelMediumEmphasized : textStyle29;
        if ((i & 536870912) != 0) {
            textStyle32 = textStyle62;
            textStyle31 = typography.labelSmallEmphasized;
        } else {
            textStyle31 = textStyle30;
            textStyle32 = textStyle62;
        }
        return typography.copy$material3(textStyle47, textStyle34, textStyle35, textStyle36, textStyle37, textStyle38, textStyle39, textStyle40, textStyle41, textStyle42, textStyle43, textStyle44, textStyle45, textStyle46, textStyle48, textStyle49, textStyle50, textStyle51, textStyle52, textStyle53, textStyle54, textStyle55, textStyle56, textStyle57, textStyle58, textStyle59, textStyle60, textStyle61, textStyle32, textStyle31);
    }

    public final Typography copy(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15) {
        return copy$material3(textStyle, textStyle2, textStyle3, textStyle4, textStyle5, textStyle6, textStyle7, textStyle8, textStyle9, textStyle10, textStyle11, textStyle12, textStyle13, textStyle14, textStyle15, this.displayLargeEmphasized, this.displayMediumEmphasized, this.displaySmallEmphasized, this.headlineLargeEmphasized, this.headlineMediumEmphasized, this.headlineSmallEmphasized, this.titleLargeEmphasized, this.titleMediumEmphasized, this.titleSmallEmphasized, this.bodyLargeEmphasized, this.bodyMediumEmphasized, this.bodySmallEmphasized, this.labelLargeEmphasized, this.labelMediumEmphasized, this.labelSmallEmphasized);
    }

    public final Typography copy$material3(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16, TextStyle textStyle17, TextStyle textStyle18, TextStyle textStyle19, TextStyle textStyle20, TextStyle textStyle21, TextStyle textStyle22, TextStyle textStyle23, TextStyle textStyle24, TextStyle textStyle25, TextStyle textStyle26, TextStyle textStyle27, TextStyle textStyle28, TextStyle textStyle29, TextStyle textStyle30) {
        return new Typography(textStyle, textStyle2, textStyle3, textStyle4, textStyle5, textStyle6, textStyle7, textStyle8, textStyle9, textStyle10, textStyle11, textStyle12, textStyle13, textStyle14, textStyle15, textStyle16, textStyle17, textStyle18, textStyle19, textStyle20, textStyle21, textStyle22, textStyle23, textStyle24, textStyle25, textStyle26, textStyle27, textStyle28, textStyle29, textStyle30);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Typography)) {
            return false;
        }
        Typography typography = (Typography) obj;
        return aa4.e(this.displayLarge, typography.displayLarge) && aa4.e(this.displayMedium, typography.displayMedium) && aa4.e(this.displaySmall, typography.displaySmall) && aa4.e(this.headlineLarge, typography.headlineLarge) && aa4.e(this.headlineMedium, typography.headlineMedium) && aa4.e(this.headlineSmall, typography.headlineSmall) && aa4.e(this.titleLarge, typography.titleLarge) && aa4.e(this.titleMedium, typography.titleMedium) && aa4.e(this.titleSmall, typography.titleSmall) && aa4.e(this.bodyLarge, typography.bodyLarge) && aa4.e(this.bodyMedium, typography.bodyMedium) && aa4.e(this.bodySmall, typography.bodySmall) && aa4.e(this.labelLarge, typography.labelLarge) && aa4.e(this.labelMedium, typography.labelMedium) && aa4.e(this.labelSmall, typography.labelSmall) && aa4.e(this.displayLargeEmphasized, typography.displayLargeEmphasized) && aa4.e(this.displayMediumEmphasized, typography.displayMediumEmphasized) && aa4.e(this.displaySmallEmphasized, typography.displaySmallEmphasized) && aa4.e(this.headlineLargeEmphasized, typography.headlineLargeEmphasized) && aa4.e(this.headlineMediumEmphasized, typography.headlineMediumEmphasized) && aa4.e(this.headlineSmallEmphasized, typography.headlineSmallEmphasized) && aa4.e(this.titleLargeEmphasized, typography.titleLargeEmphasized) && aa4.e(this.titleMediumEmphasized, typography.titleMediumEmphasized) && aa4.e(this.titleSmallEmphasized, typography.titleSmallEmphasized) && aa4.e(this.bodyLargeEmphasized, typography.bodyLargeEmphasized) && aa4.e(this.bodyMediumEmphasized, typography.bodyMediumEmphasized) && aa4.e(this.bodySmallEmphasized, typography.bodySmallEmphasized) && aa4.e(this.labelLargeEmphasized, typography.labelLargeEmphasized) && aa4.e(this.labelMediumEmphasized, typography.labelMediumEmphasized) && aa4.e(this.labelSmallEmphasized, typography.labelSmallEmphasized);
    }

    public final TextStyle getBodyLarge() {
        return this.bodyLarge;
    }

    public final TextStyle getBodyLargeEmphasized$material3() {
        return this.bodyLargeEmphasized;
    }

    public final TextStyle getBodyMedium() {
        return this.bodyMedium;
    }

    public final TextStyle getBodyMediumEmphasized$material3() {
        return this.bodyMediumEmphasized;
    }

    public final TextStyle getBodySmall() {
        return this.bodySmall;
    }

    public final TextStyle getBodySmallEmphasized$material3() {
        return this.bodySmallEmphasized;
    }

    public final TextStyle getDisplayLarge() {
        return this.displayLarge;
    }

    public final TextStyle getDisplayLargeEmphasized$material3() {
        return this.displayLargeEmphasized;
    }

    public final TextStyle getDisplayMedium() {
        return this.displayMedium;
    }

    public final TextStyle getDisplayMediumEmphasized$material3() {
        return this.displayMediumEmphasized;
    }

    public final TextStyle getDisplaySmall() {
        return this.displaySmall;
    }

    public final TextStyle getDisplaySmallEmphasized$material3() {
        return this.displaySmallEmphasized;
    }

    public final TextStyle getHeadlineLarge() {
        return this.headlineLarge;
    }

    public final TextStyle getHeadlineLargeEmphasized$material3() {
        return this.headlineLargeEmphasized;
    }

    public final TextStyle getHeadlineMedium() {
        return this.headlineMedium;
    }

    public final TextStyle getHeadlineMediumEmphasized$material3() {
        return this.headlineMediumEmphasized;
    }

    public final TextStyle getHeadlineSmall() {
        return this.headlineSmall;
    }

    public final TextStyle getHeadlineSmallEmphasized$material3() {
        return this.headlineSmallEmphasized;
    }

    public final TextStyle getLabelLarge() {
        return this.labelLarge;
    }

    public final TextStyle getLabelLargeEmphasized$material3() {
        return this.labelLargeEmphasized;
    }

    public final TextStyle getLabelMedium() {
        return this.labelMedium;
    }

    public final TextStyle getLabelMediumEmphasized$material3() {
        return this.labelMediumEmphasized;
    }

    public final TextStyle getLabelSmall() {
        return this.labelSmall;
    }

    public final TextStyle getLabelSmallEmphasized$material3() {
        return this.labelSmallEmphasized;
    }

    public final TextStyle getTitleLarge() {
        return this.titleLarge;
    }

    public final TextStyle getTitleLargeEmphasized$material3() {
        return this.titleLargeEmphasized;
    }

    public final TextStyle getTitleMedium() {
        return this.titleMedium;
    }

    public final TextStyle getTitleMediumEmphasized$material3() {
        return this.titleMediumEmphasized;
    }

    public final TextStyle getTitleSmall() {
        return this.titleSmall;
    }

    public final TextStyle getTitleSmallEmphasized$material3() {
        return this.titleSmallEmphasized;
    }

    public int hashCode() {
        return this.labelSmallEmphasized.hashCode() + jn.c(this.labelMediumEmphasized, jn.c(this.labelLargeEmphasized, jn.c(this.bodySmallEmphasized, jn.c(this.bodyMediumEmphasized, jn.c(this.bodyLargeEmphasized, jn.c(this.titleSmallEmphasized, jn.c(this.titleMediumEmphasized, jn.c(this.titleLargeEmphasized, jn.c(this.headlineSmallEmphasized, jn.c(this.headlineMediumEmphasized, jn.c(this.headlineLargeEmphasized, jn.c(this.displaySmallEmphasized, jn.c(this.displayMediumEmphasized, jn.c(this.displayLargeEmphasized, jn.c(this.labelSmall, jn.c(this.labelMedium, jn.c(this.labelLarge, jn.c(this.bodySmall, jn.c(this.bodyMedium, jn.c(this.bodyLarge, jn.c(this.titleSmall, jn.c(this.titleMedium, jn.c(this.titleLarge, jn.c(this.headlineSmall, jn.c(this.headlineMedium, jn.c(this.headlineLarge, jn.c(this.displaySmall, jn.c(this.displayMedium, this.displayLarge.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public String toString() {
        return "Typography(displayLarge=" + this.displayLarge + ", displayMedium=" + this.displayMedium + ",displaySmall=" + this.displaySmall + ", headlineLarge=" + this.headlineLarge + ", headlineMedium=" + this.headlineMedium + ", headlineSmall=" + this.headlineSmall + ", titleLarge=" + this.titleLarge + ", titleMedium=" + this.titleMedium + ", titleSmall=" + this.titleSmall + ", bodyLarge=" + this.bodyLarge + ", bodyMedium=" + this.bodyMedium + ", bodySmall=" + this.bodySmall + ", labelLarge=" + this.labelLarge + ", labelMedium=" + this.labelMedium + ", labelSmall=" + this.labelSmall + ", displayLargeEmphasized=" + this.displayLargeEmphasized + ", displayMediumEmphasized=" + this.displayMediumEmphasized + ", displaySmallEmphasized=" + this.displaySmallEmphasized + ", headlineLargeEmphasized=" + this.headlineLargeEmphasized + ", headlineMediumEmphasized=" + this.headlineMediumEmphasized + ", headlineSmallEmphasized=" + this.headlineSmallEmphasized + ", titleLargeEmphasized=" + this.titleLargeEmphasized + ", titleMediumEmphasized=" + this.titleMediumEmphasized + ", titleSmallEmphasized=" + this.titleSmallEmphasized + ", bodyLargeEmphasized=" + this.bodyLargeEmphasized + ", bodyMediumEmphasized=" + this.bodyMediumEmphasized + ", bodySmallEmphasized=" + this.bodySmallEmphasized + ", labelLargeEmphasized=" + this.labelLargeEmphasized + ", labelMediumEmphasized=" + this.labelMediumEmphasized + ", labelSmallEmphasized=" + this.labelSmallEmphasized + ')';
    }

    public Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16, TextStyle textStyle17, TextStyle textStyle18, TextStyle textStyle19, TextStyle textStyle20, TextStyle textStyle21, TextStyle textStyle22, TextStyle textStyle23, TextStyle textStyle24, TextStyle textStyle25, TextStyle textStyle26, TextStyle textStyle27, TextStyle textStyle28, TextStyle textStyle29, TextStyle textStyle30) {
        this.displayLarge = textStyle;
        this.displayMedium = textStyle2;
        this.displaySmall = textStyle3;
        this.headlineLarge = textStyle4;
        this.headlineMedium = textStyle5;
        this.headlineSmall = textStyle6;
        this.titleLarge = textStyle7;
        this.titleMedium = textStyle8;
        this.titleSmall = textStyle9;
        this.bodyLarge = textStyle10;
        this.bodyMedium = textStyle11;
        this.bodySmall = textStyle12;
        this.labelLarge = textStyle13;
        this.labelMedium = textStyle14;
        this.labelSmall = textStyle15;
        this.displayLargeEmphasized = textStyle16;
        this.displayMediumEmphasized = textStyle17;
        this.displaySmallEmphasized = textStyle18;
        this.headlineLargeEmphasized = textStyle19;
        this.headlineMediumEmphasized = textStyle20;
        this.headlineSmallEmphasized = textStyle21;
        this.titleLargeEmphasized = textStyle22;
        this.titleMediumEmphasized = textStyle23;
        this.titleSmallEmphasized = textStyle24;
        this.bodyLargeEmphasized = textStyle25;
        this.bodyMediumEmphasized = textStyle26;
        this.bodySmallEmphasized = textStyle27;
        this.labelLargeEmphasized = textStyle28;
        this.labelMediumEmphasized = textStyle29;
        this.labelSmallEmphasized = textStyle30;
    }

    public Typography() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1073741823, null);
    }

    public /* synthetic */ Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? TypographyTokens.INSTANCE.getDisplayLarge() : textStyle, (i & 2) != 0 ? TypographyTokens.INSTANCE.getDisplayMedium() : textStyle2, (i & 4) != 0 ? TypographyTokens.INSTANCE.getDisplaySmall() : textStyle3, (i & 8) != 0 ? TypographyTokens.INSTANCE.getHeadlineLarge() : textStyle4, (i & 16) != 0 ? TypographyTokens.INSTANCE.getHeadlineMedium() : textStyle5, (i & 32) != 0 ? TypographyTokens.INSTANCE.getHeadlineSmall() : textStyle6, (i & 64) != 0 ? TypographyTokens.INSTANCE.getTitleLarge() : textStyle7, (i & 128) != 0 ? TypographyTokens.INSTANCE.getTitleMedium() : textStyle8, (i & 256) != 0 ? TypographyTokens.INSTANCE.getTitleSmall() : textStyle9, (i & 512) != 0 ? TypographyTokens.INSTANCE.getBodyLarge() : textStyle10, (i & 1024) != 0 ? TypographyTokens.INSTANCE.getBodyMedium() : textStyle11, (i & 2048) != 0 ? TypographyTokens.INSTANCE.getBodySmall() : textStyle12, (i & 4096) != 0 ? TypographyTokens.INSTANCE.getLabelLarge() : textStyle13, (i & 8192) != 0 ? TypographyTokens.INSTANCE.getLabelMedium() : textStyle14, (i & 16384) != 0 ? TypographyTokens.INSTANCE.getLabelSmall() : textStyle15);
    }

    public Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15) {
        this(textStyle, textStyle2, textStyle3, textStyle4, textStyle5, textStyle6, textStyle7, textStyle8, textStyle9, textStyle10, textStyle11, textStyle12, textStyle13, textStyle14, textStyle15, textStyle, textStyle2, textStyle3, textStyle4, textStyle5, textStyle6, textStyle7, textStyle8, textStyle9, textStyle10, textStyle11, textStyle12, textStyle13, textStyle14, textStyle15);
    }
}
