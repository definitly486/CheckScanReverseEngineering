package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsicsKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.jh2;
import defpackage.k2;
import defpackage.kx2;

/* JADX INFO: loaded from: classes.dex */
public final class ParagraphLayoutCache {
    public static final int $stable = 8;
    private int cachedIntrinsicHeight;
    private int cachedIntrinsicHeightInputWidth;
    private Density density;
    private boolean didOverflow;
    private FontFamily.Resolver fontFamilyResolver;
    private long historyFlag;
    private LayoutDirection intrinsicsLayoutDirection;
    private long lastDensity;
    private long layoutSize;
    private MinLinesConstrainer mMinLinesConstrainer;
    private int maxLines;
    private int minLines;
    private int overflow;
    private Paragraph paragraph;
    private ParagraphIntrinsics paragraphIntrinsics;
    private long prevConstraints;
    private boolean softWrap;
    private TextStyle style;
    private String text;

    private ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.lastDensity = InlineDensity.Companion.m2904getUnspecifiedL26CHvs();
        this.layoutSize = IntSize.m9208constructorimpl(0L);
        this.prevConstraints = Constraints.Companion.m9005fixedJhjzzOo(0, 0);
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
    }

    public static /* synthetic */ void getHistoryFlag$foundation$annotations() {
    }

    private final void markDirty() {
        this.paragraph = null;
        this.paragraphIntrinsics = null;
        this.intrinsicsLayoutDirection = null;
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
        this.prevConstraints = Constraints.Companion.m9005fixedJhjzzOo(0, 0);
        this.layoutSize = IntSize.m9208constructorimpl(0L);
        this.didOverflow = false;
    }

    /* JADX INFO: renamed from: newLayoutWillBeDifferent-K40F9xA, reason: not valid java name */
    private final boolean m2935newLayoutWillBeDifferentK40F9xA(long j, LayoutDirection layoutDirection) {
        ParagraphIntrinsics paragraphIntrinsics;
        Paragraph paragraph = this.paragraph;
        if (paragraph == null || (paragraphIntrinsics = this.paragraphIntrinsics) == null || paragraphIntrinsics.getHasStaleResolvedFonts() || layoutDirection != this.intrinsicsLayoutDirection) {
            return true;
        }
        if (Constraints.m8988equalsimpl0(j, this.prevConstraints)) {
            return false;
        }
        return Constraints.m8995getMaxWidthimpl(j) != Constraints.m8995getMaxWidthimpl(this.prevConstraints) || Constraints.m8997getMinWidthimpl(j) != Constraints.m8997getMinWidthimpl(this.prevConstraints) || ((float) Constraints.m8994getMaxHeightimpl(j)) < paragraph.getHeight() || paragraph.getDidExceedMaxLines();
    }

    /* JADX INFO: renamed from: recordHistory-4ETZmGE, reason: not valid java name */
    private final void m2936recordHistory4ETZmGE(long j) {
        this.historyFlag = j | (this.historyFlag << 2);
    }

    private final ParagraphIntrinsics setLayoutDirection(LayoutDirection layoutDirection) {
        ParagraphIntrinsics ParagraphIntrinsics = this.paragraphIntrinsics;
        if (ParagraphIntrinsics == null || layoutDirection != this.intrinsicsLayoutDirection || ParagraphIntrinsics.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            String str = this.text;
            TextStyle textStyleResolveDefaults = TextStyleKt.resolveDefaults(this.style, layoutDirection);
            Density density = this.density;
            density.getClass();
            FontFamily.Resolver resolver = this.fontFamilyResolver;
            kx2 kx2Var = kx2.b;
            ParagraphIntrinsics = ParagraphIntrinsicsKt.ParagraphIntrinsics(str, textStyleResolveDefaults, kx2Var, density, resolver, kx2Var);
        }
        this.paragraphIntrinsics = ParagraphIntrinsics;
        return ParagraphIntrinsics;
    }

    /* JADX INFO: renamed from: useMinLinesConstrainer-euUD3Qg, reason: not valid java name */
    private final long m2937useMinLinesConstrainereuUD3Qg(long j, LayoutDirection layoutDirection, TextStyle textStyle) {
        MinLinesConstrainer.Companion companion = MinLinesConstrainer.Companion;
        MinLinesConstrainer minLinesConstrainer = this.mMinLinesConstrainer;
        Density density = this.density;
        density.getClass();
        MinLinesConstrainer minLinesConstrainerFrom = companion.from(minLinesConstrainer, layoutDirection, textStyle, density, this.fontFamilyResolver);
        this.mMinLinesConstrainer = minLinesConstrainerFrom;
        return minLinesConstrainerFrom.m2920coerceMinLinesOh53vG4$foundation(j, this.minLines);
    }

    /* JADX INFO: renamed from: useMinLinesConstrainer-euUD3Qg$default, reason: not valid java name */
    public static /* synthetic */ long m2938useMinLinesConstrainereuUD3Qg$default(ParagraphLayoutCache paragraphLayoutCache, long j, LayoutDirection layoutDirection, TextStyle textStyle, int i, Object obj) {
        if ((i & 4) != 0) {
            textStyle = paragraphLayoutCache.style;
        }
        return paragraphLayoutCache.m2937useMinLinesConstrainereuUD3Qg(j, layoutDirection, textStyle);
    }

    public final Density getDensity$foundation() {
        return this.density;
    }

    public final boolean getDidOverflow$foundation() {
        return this.didOverflow;
    }

    public final long getHistoryFlag$foundation() {
        return this.historyFlag;
    }

    /* JADX INFO: renamed from: getLayoutSize-YbymL2g$foundation, reason: not valid java name */
    public final long m2939getLayoutSizeYbymL2g$foundation() {
        return this.layoutSize;
    }

    public final j59 getObserveFontChanges$foundation() {
        ParagraphIntrinsics paragraphIntrinsics = this.paragraphIntrinsics;
        if (paragraphIntrinsics != null) {
            paragraphIntrinsics.getHasStaleResolvedFonts();
        }
        return j59.a;
    }

    public final Paragraph getParagraph$foundation() {
        return this.paragraph;
    }

    public final int intrinsicHeight(int i, LayoutDirection layoutDirection) {
        ParagraphLayoutCache paragraphLayoutCache;
        LayoutDirection layoutDirection2;
        int i2 = this.cachedIntrinsicHeightInputWidth;
        int i3 = this.cachedIntrinsicHeight;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long jConstraints = ConstraintsKt.Constraints(0, i, 0, Integer.MAX_VALUE);
        if (this.minLines > 1) {
            paragraphLayoutCache = this;
            layoutDirection2 = layoutDirection;
            jConstraints = m2938useMinLinesConstrainereuUD3Qg$default(paragraphLayoutCache, jConstraints, layoutDirection2, null, 4, null);
        } else {
            paragraphLayoutCache = this;
            layoutDirection2 = layoutDirection;
        }
        int iCeilToIntPx = TextDelegateKt.ceilToIntPx(paragraphLayoutCache.m2940layoutTextK40F9xA$foundation(jConstraints, layoutDirection2).getHeight());
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(jConstraints);
        if (iCeilToIntPx < iM8996getMinHeightimpl) {
            iCeilToIntPx = iM8996getMinHeightimpl;
        }
        paragraphLayoutCache.cachedIntrinsicHeightInputWidth = i;
        paragraphLayoutCache.cachedIntrinsicHeight = iCeilToIntPx;
        return iCeilToIntPx;
    }

    /* JADX INFO: renamed from: layoutText-K40F9xA$foundation, reason: not valid java name */
    public final Paragraph m2940layoutTextK40F9xA$foundation(long j, LayoutDirection layoutDirection) {
        ParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        return ParagraphKt.m8374ParagraphczeNHc(layoutDirection2, LayoutUtilsKt.m2916finalConstraintstfFHcEY(j, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth()), LayoutUtilsKt.m2917finalMaxLinesxdlQI24(this.softWrap, this.overflow, this.maxLines), this.overflow);
    }

    /* JADX INFO: renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m2941layoutWithConstraintsK40F9xA(long j, LayoutDirection layoutDirection) {
        ParagraphLayoutCache paragraphLayoutCache;
        LayoutDirection layoutDirection2;
        m2936recordHistory4ETZmGE(LayoutCacheOperation.Companion.m2912getLayoutWithConstraintsDEKiAbY());
        boolean z = true;
        if (this.minLines > 1) {
            paragraphLayoutCache = this;
            layoutDirection2 = layoutDirection;
            j = m2938useMinLinesConstrainereuUD3Qg$default(paragraphLayoutCache, j, layoutDirection2, null, 4, null);
        } else {
            paragraphLayoutCache = this;
            layoutDirection2 = layoutDirection;
        }
        boolean z2 = false;
        if (paragraphLayoutCache.m2935newLayoutWillBeDifferentK40F9xA(j, layoutDirection2)) {
            Paragraph paragraphM2940layoutTextK40F9xA$foundation = paragraphLayoutCache.m2940layoutTextK40F9xA$foundation(j, layoutDirection2);
            paragraphLayoutCache.prevConstraints = j;
            long jM9009constrain4WqzIAM = ConstraintsKt.m9009constrain4WqzIAM(j, IntSize.m9208constructorimpl((((long) TextDelegateKt.ceilToIntPx(paragraphM2940layoutTextK40F9xA$foundation.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) TextDelegateKt.ceilToIntPx(paragraphM2940layoutTextK40F9xA$foundation.getWidth())) << 32)));
            paragraphLayoutCache.layoutSize = jM9009constrain4WqzIAM;
            if (!TextOverflow.m8968equalsimpl0(paragraphLayoutCache.overflow, TextOverflow.Companion.m8981getVisiblegIe3tQ8()) && (((int) (jM9009constrain4WqzIAM >> 32)) < paragraphM2940layoutTextK40F9xA$foundation.getWidth() || ((int) (jM9009constrain4WqzIAM & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) < paragraphM2940layoutTextK40F9xA$foundation.getHeight())) {
                z2 = true;
            }
            paragraphLayoutCache.didOverflow = z2;
            paragraphLayoutCache.paragraph = paragraphM2940layoutTextK40F9xA$foundation;
            return true;
        }
        if (!Constraints.m8988equalsimpl0(j, paragraphLayoutCache.prevConstraints)) {
            Paragraph paragraph = paragraphLayoutCache.paragraph;
            paragraph.getClass();
            long jM9009constrain4WqzIAM2 = ConstraintsKt.m9009constrain4WqzIAM(j, IntSize.m9208constructorimpl((((long) TextDelegateKt.ceilToIntPx(paragraph.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) TextDelegateKt.ceilToIntPx(Math.min(paragraph.getMaxIntrinsicWidth(), paragraph.getWidth()))) << 32)));
            paragraphLayoutCache.layoutSize = jM9009constrain4WqzIAM2;
            if (TextOverflow.m8968equalsimpl0(paragraphLayoutCache.overflow, TextOverflow.Companion.m8981getVisiblegIe3tQ8()) || (((int) (jM9009constrain4WqzIAM2 >> 32)) >= paragraph.getWidth() && ((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jM9009constrain4WqzIAM2)) >= paragraph.getHeight())) {
                z = false;
            }
            paragraphLayoutCache.didOverflow = z;
            paragraphLayoutCache.prevConstraints = j;
        }
        return false;
    }

    public final int maxIntrinsicWidth(LayoutDirection layoutDirection) {
        return TextDelegateKt.ceilToIntPx(setLayoutDirection(layoutDirection).getMaxIntrinsicWidth());
    }

    public final int minIntrinsicWidth(LayoutDirection layoutDirection) {
        return TextDelegateKt.ceilToIntPx(setLayoutDirection(layoutDirection).getMinIntrinsicWidth());
    }

    public final void setDensity$foundation(Density density) {
        Density density2 = this.density;
        long jM2896constructorimpl = density != null ? InlineDensity.m2896constructorimpl(density) : InlineDensity.Companion.m2904getUnspecifiedL26CHvs();
        if (density2 == null) {
            this.density = density;
            this.lastDensity = jM2896constructorimpl;
        } else if (density == null || !InlineDensity.m2898equalsimpl0(this.lastDensity, jM2896constructorimpl)) {
            this.density = density;
            this.lastDensity = jM2896constructorimpl;
            m2936recordHistory4ETZmGE(LayoutCacheOperation.Companion.m2913getMarkDirtyDensityDEKiAbY());
            markDirty();
        }
    }

    public final void setDidOverflow$foundation(boolean z) {
        this.didOverflow = z;
    }

    public final void setHistoryFlag$foundation(long j) {
        this.historyFlag = j;
    }

    /* JADX INFO: renamed from: setLayoutSize-ozmzZPI$foundation, reason: not valid java name */
    public final void m2942setLayoutSizeozmzZPI$foundation(long j) {
        this.layoutSize = j;
    }

    public final void setParagraph$foundation(Paragraph paragraph) {
        this.paragraph = paragraph;
    }

    public final TextLayoutResult slowCreateTextLayoutResultOrNull(TextStyle textStyle) {
        Density density;
        LayoutDirection layoutDirection = this.intrinsicsLayoutDirection;
        if (layoutDirection == null || (density = this.density) == null) {
            return null;
        }
        AnnotatedString annotatedString = new AnnotatedString(this.text, null, 2, null);
        if (this.paragraph == null || this.paragraphIntrinsics == null) {
            return null;
        }
        long jM8983constructorimpl = Constraints.m8983constructorimpl(this.prevConstraints & ConstraintsKt.MaxDimensionsAndFocusMask);
        int i = this.maxLines;
        boolean z = this.softWrap;
        int i2 = this.overflow;
        FontFamily.Resolver resolver = this.fontFamilyResolver;
        kx2 kx2Var = kx2.b;
        return new TextLayoutResult(new TextLayoutInput(annotatedString, textStyle, kx2Var, i, z, i2, density, layoutDirection, resolver, jM8983constructorimpl, (jh2) null), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString, textStyle, kx2Var, density, this.fontFamilyResolver), jM8983constructorimpl, this.maxLines, this.overflow, (jh2) null), this.layoutSize, null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ParagraphLayoutCache(paragraph=");
        sb.append(this.paragraph != null ? "<paragraph>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.m2902toStringimpl(this.lastDensity));
        sb.append(", history=");
        return k2.b(this.historyFlag, ", constraints=$)", sb);
    }

    /* JADX INFO: renamed from: update-L6sJoHM, reason: not valid java name */
    public final void m2943updateL6sJoHM(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3) {
        this.text = str;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        m2936recordHistory4ETZmGE(LayoutCacheOperation.Companion.m2914getMarkDirtyNodeDEKiAbY());
        markDirty();
    }

    public /* synthetic */ ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, jh2 jh2Var) {
        this(str, textStyle, resolver, i, z, i2, i3);
    }

    public /* synthetic */ ParagraphLayoutCache(String str, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, int i4, jh2 jh2Var) {
        this(str, textStyle, resolver, (i4 & 8) != 0 ? TextOverflow.Companion.m8977getClipgIe3tQ8() : i, (i4 & 16) != 0 ? true : z, (i4 & 32) != 0 ? Integer.MAX_VALUE : i2, (i4 & 64) != 0 ? 1 : i3, null);
    }
}
