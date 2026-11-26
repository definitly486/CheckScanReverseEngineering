package androidx.compose.ui.text;

import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.kx6;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TextMeasurer {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final int cacheSize;
    private final Density defaultDensity;
    private final FontFamily.Resolver defaultFontFamilyResolver;
    private final LayoutDirection defaultLayoutDirection;
    private final TextLayoutCache textLayoutCache;

    public TextMeasurer(FontFamily.Resolver resolver, Density density, LayoutDirection layoutDirection, int i) {
        this.defaultFontFamilyResolver = resolver;
        this.defaultDensity = density;
        this.defaultLayoutDirection = layoutDirection;
        this.cacheSize = i;
        this.textLayoutCache = i > 0 ? new TextLayoutCache(i) : null;
    }

    /* JADX INFO: renamed from: measure-wNUYSr0$default, reason: not valid java name */
    public static /* synthetic */ TextLayoutResult m8464measurewNUYSr0$default(TextMeasurer textMeasurer, String str, TextStyle textStyle, int i, boolean z, int i2, long j, LayoutDirection layoutDirection, Density density, FontFamily.Resolver resolver, boolean z2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            textStyle = TextStyle.Companion.getDefault();
        }
        TextStyle textStyle2 = textStyle;
        if ((i3 & 4) != 0) {
            i = TextOverflow.Companion.m8977getClipgIe3tQ8();
        }
        return textMeasurer.m8466measurewNUYSr0(str, textStyle2, i, (i3 & 8) != 0 ? true : z, (i3 & 16) != 0 ? Integer.MAX_VALUE : i2, (i3 & 32) != 0 ? ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null) : j, (i3 & 64) != 0 ? textMeasurer.defaultLayoutDirection : layoutDirection, (i3 & 128) != 0 ? textMeasurer.defaultDensity : density, (i3 & 256) != 0 ? textMeasurer.defaultFontFamilyResolver : resolver, (i3 & 512) != 0 ? false : z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: measure-xDpz5zY$default, reason: not valid java name */
    public static /* synthetic */ TextLayoutResult m8465measurexDpz5zY$default(TextMeasurer textMeasurer, AnnotatedString annotatedString, TextStyle textStyle, int i, boolean z, int i2, List list, long j, LayoutDirection layoutDirection, Density density, FontFamily.Resolver resolver, boolean z2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            textStyle = TextStyle.Companion.getDefault();
        }
        return textMeasurer.m8467measurexDpz5zY(annotatedString, textStyle, (i3 & 4) != 0 ? TextOverflow.Companion.m8977getClipgIe3tQ8() : i, (i3 & 8) != 0 ? true : z, (i3 & 16) != 0 ? Integer.MAX_VALUE : i2, (i3 & 32) != 0 ? kx2.b : list, (i3 & 64) != 0 ? ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null) : j, (i3 & 128) != 0 ? textMeasurer.defaultLayoutDirection : layoutDirection, (i3 & 256) != 0 ? textMeasurer.defaultDensity : density, (i3 & 512) != 0 ? textMeasurer.defaultFontFamilyResolver : resolver, (i3 & 1024) != 0 ? false : z2);
    }

    /* JADX INFO: renamed from: measure-wNUYSr0, reason: not valid java name */
    public final TextLayoutResult m8466measurewNUYSr0(String str, TextStyle textStyle, int i, boolean z, int i2, long j, LayoutDirection layoutDirection, Density density, FontFamily.Resolver resolver, boolean z2) {
        return m8465measurexDpz5zY$default(this, new AnnotatedString(str, null, 2, null), textStyle, i, z, i2, null, j, layoutDirection, density, resolver, z2, 32, null);
    }

    /* JADX INFO: renamed from: measure-xDpz5zY, reason: not valid java name */
    public final TextLayoutResult m8467measurexDpz5zY(AnnotatedString annotatedString, TextStyle textStyle, int i, boolean z, int i2, List<AnnotatedString.Range<Placeholder>> list, long j, LayoutDirection layoutDirection, Density density, FontFamily.Resolver resolver, boolean z2) {
        TextLayoutCache textLayoutCache;
        TextLayoutInput textLayoutInput = new TextLayoutInput(annotatedString, textStyle, list, i2, z, i, density, layoutDirection, resolver, j, (jh2) null);
        TextLayoutResult textLayoutResult = (z2 || (textLayoutCache = this.textLayoutCache) == null) ? null : textLayoutCache.get(textLayoutInput);
        if (textLayoutResult != null) {
            return textLayoutResult.m8460copyO0kMr_c(textLayoutInput, ConstraintsKt.m9009constrain4WqzIAM(j, IntSize.m9208constructorimpl((((long) ParagraphKt.ceilToInt(textLayoutResult.getMultiParagraph().getWidth())) << 32) | (((long) ParagraphKt.ceilToInt(textLayoutResult.getMultiParagraph().getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
        }
        TextLayoutResult textLayoutResultLayout = Companion.layout(textLayoutInput);
        TextLayoutCache textLayoutCache2 = this.textLayoutCache;
        if (textLayoutCache2 != null) {
            textLayoutCache2.put(textLayoutInput, textLayoutResultLayout);
        }
        return textLayoutResultLayout;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final TextLayoutResult layout(TextLayoutInput textLayoutInput) {
            MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(textLayoutInput.getText(), TextStyleKt.resolveDefaults(textLayoutInput.getStyle(), textLayoutInput.getLayoutDirection()), textLayoutInput.getPlaceholders(), textLayoutInput.getDensity(), textLayoutInput.getFontFamilyResolver());
            int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(textLayoutInput.m8457getConstraintsmsEJaDk());
            int iM8995getMaxWidthimpl = ((textLayoutInput.getSoftWrap() || TextMeasurerKt.m8469isEllipsisMW5ApA(textLayoutInput.m8458getOverflowgIe3tQ8())) && Constraints.m8991getHasBoundedWidthimpl(textLayoutInput.m8457getConstraintsmsEJaDk())) ? Constraints.m8995getMaxWidthimpl(textLayoutInput.m8457getConstraintsmsEJaDk()) : Integer.MAX_VALUE;
            int maxLines = (textLayoutInput.getSoftWrap() || !TextMeasurerKt.m8469isEllipsisMW5ApA(textLayoutInput.m8458getOverflowgIe3tQ8())) ? textLayoutInput.getMaxLines() : 1;
            if (iM8997getMinWidthimpl != iM8995getMaxWidthimpl) {
                iM8995getMaxWidthimpl = kx6.f(ParagraphKt.ceilToInt(multiParagraphIntrinsics.getMaxIntrinsicWidth()), iM8997getMinWidthimpl, iM8995getMaxWidthimpl);
            }
            MultiParagraph multiParagraph = new MultiParagraph(multiParagraphIntrinsics, Constraints.Companion.m9004fitPrioritizingWidthZbe2FdA(0, iM8995getMaxWidthimpl, 0, Constraints.m8994getMaxHeightimpl(textLayoutInput.m8457getConstraintsmsEJaDk())), maxLines, textLayoutInput.m8458getOverflowgIe3tQ8(), (jh2) null);
            return new TextLayoutResult(textLayoutInput, multiParagraph, ConstraintsKt.m9009constrain4WqzIAM(textLayoutInput.m8457getConstraintsmsEJaDk(), IntSize.m9208constructorimpl((((long) ((int) Math.ceil(multiParagraph.getWidth()))) << 32) | (((long) ((int) Math.ceil(multiParagraph.getHeight()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ TextMeasurer(FontFamily.Resolver resolver, Density density, LayoutDirection layoutDirection, int i, int i2, jh2 jh2Var) {
        this(resolver, density, layoutDirection, (i2 & 8) != 0 ? 8 : i);
    }
}
