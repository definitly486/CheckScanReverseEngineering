package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextAutoSize;
import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
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
import androidx.compose.ui.unit.TextUnit;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ah;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.qz0;
import defpackage.vg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MultiParagraphLayoutCache {
    public static final int $stable = 8;
    private TextAutoSizeLayoutScopeImpl _textAutoSizeLayoutScope;
    private TextAutoSize autoSize;
    private int cachedIntrinsicHeight;
    private int cachedIntrinsicHeightInputWidth;
    private Density density;
    private FontFamily.Resolver fontFamilyResolver;
    private long historyFlag;
    private LayoutDirection intrinsicsLayoutDirection;
    private long lastDensity;
    private TextLayoutResult layoutCache;
    private MinLinesConstrainer mMinLinesConstrainer;
    private int maxLines;
    private int minLines;
    private int overflow;
    private MultiParagraphIntrinsics paragraphIntrinsics;
    private List<AnnotatedString.Range<Placeholder>> placeholders;
    private boolean softWrap;
    private TextStyle style;
    private AnnotatedString text;

    public final class TextAutoSizeLayoutScopeImpl implements TextAutoSizeLayoutScope {
        private TextLayoutResult lastLayoutResult;

        public TextAutoSizeLayoutScopeImpl() {
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            Density density$foundation = MultiParagraphLayoutCache.this.getDensity$foundation();
            density$foundation.getClass();
            return density$foundation.getDensity();
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public float getFontScale() {
            Density density$foundation = MultiParagraphLayoutCache.this.getDensity$foundation();
            density$foundation.getClass();
            return density$foundation.getFontScale();
        }

        public final TextLayoutResult getLastLayoutResult() {
            return this.lastLayoutResult;
        }

        @Override // androidx.compose.foundation.text.modifiers.TextAutoSizeLayoutScope
        /* JADX INFO: renamed from: performLayout-5ZSfY2I, reason: not valid java name */
        public TextLayoutResult mo2932performLayout5ZSfY2I(long j, AnnotatedString annotatedString, long j2) {
            long jM2929useMinLinesConstrainerOh53vG4;
            TextStyle textStyle = MultiParagraphLayoutCache.this.style;
            long jM2934timesNB67dxo = TextUnit.m9238isEmimpl(j2) ? MultiParagraphLayoutCacheKt.m2934timesNB67dxo(MultiParagraphLayoutCache.this.style.m8522getFontSizeXSAIIZE(), j2) : j2;
            if (!TextUnit.m9233equalsimpl0(jM2934timesNB67dxo, MultiParagraphLayoutCache.this.style.m8522getFontSizeXSAIIZE())) {
                MultiParagraphLayoutCache multiParagraphLayoutCache = MultiParagraphLayoutCache.this;
                multiParagraphLayoutCache.setStyle(TextStyle.m8504copyp1EtxEg$default(multiParagraphLayoutCache.style, 0L, jM2934timesNB67dxo, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16777213, null));
            }
            if (MultiParagraphLayoutCache.this.minLines > 1) {
                MultiParagraphLayoutCache multiParagraphLayoutCache2 = MultiParagraphLayoutCache.this;
                LayoutDirection layoutDirection = multiParagraphLayoutCache2.intrinsicsLayoutDirection;
                layoutDirection.getClass();
                jM2929useMinLinesConstrainerOh53vG4 = multiParagraphLayoutCache2.m2929useMinLinesConstrainerOh53vG4(j, layoutDirection);
            } else {
                jM2929useMinLinesConstrainerOh53vG4 = j;
            }
            MultiParagraphLayoutCache multiParagraphLayoutCache3 = MultiParagraphLayoutCache.this;
            LayoutDirection layoutDirection2 = multiParagraphLayoutCache3.intrinsicsLayoutDirection;
            layoutDirection2.getClass();
            MultiParagraph multiParagraphM2925layoutTextK40F9xA = multiParagraphLayoutCache3.m2925layoutTextK40F9xA(jM2929useMinLinesConstrainerOh53vG4, layoutDirection2);
            MultiParagraphLayoutCache multiParagraphLayoutCache4 = MultiParagraphLayoutCache.this;
            LayoutDirection layoutDirection3 = multiParagraphLayoutCache4.intrinsicsLayoutDirection;
            layoutDirection3.getClass();
            TextLayoutResult textLayoutResultM2928textLayoutResultVKLhPVY = multiParagraphLayoutCache4.m2928textLayoutResultVKLhPVY(layoutDirection3, jM2929useMinLinesConstrainerOh53vG4, multiParagraphM2925layoutTextK40F9xA);
            this.lastLayoutResult = textLayoutResultM2928textLayoutResultVKLhPVY;
            MultiParagraphLayoutCache.this.setStyle(textStyle);
            return textLayoutResultM2928textLayoutResultVKLhPVY;
        }

        @Override // androidx.compose.ui.unit.Density
        /* JADX INFO: renamed from: toPx--R2X_6o */
        public float mo1433toPxR2X_6o(long j) {
            if (!TextUnit.m9238isEmimpl(j)) {
                return mo1434toPx0680j_4(mo1429toDpGaN1DYA(j));
            }
            if (TextUnit.m9238isEmimpl(MultiParagraphLayoutCache.this.style.m8522getFontSizeXSAIIZE())) {
                ah.f("InternalAutoSize -> toPx(): Cannot convert Em to Px when style.fontSize is Em\nDeclare the composable's style.fontSize with Sp units instead.");
                return 0.0f;
            }
            if (TextUnit.m9233equalsimpl0(MultiParagraphLayoutCache.this.style.m8522getFontSizeXSAIIZE(), TextUnit.Companion.m9247getUnspecifiedXSAIIZE())) {
                ah.f("InternalAutoSize -> toPx(): Cannot convert Em to Px when style.fontSize is not set. Please specify a font size.");
                return 0.0f;
            }
            return TextUnit.m9236getValueimpl(j) * mo1433toPxR2X_6o(MultiParagraphLayoutCache.this.style.m8522getFontSizeXSAIIZE());
        }
    }

    public /* synthetic */ MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, List list, TextAutoSize textAutoSize, int i4, jh2 jh2Var) {
        this(annotatedString, textStyle, resolver, (i4 & 8) != 0 ? TextOverflow.Companion.m8977getClipgIe3tQ8() : i, (i4 & 16) != 0 ? true : z, (i4 & 32) != 0 ? Integer.MAX_VALUE : i2, (i4 & 64) != 0 ? 1 : i3, (i4 & 128) != 0 ? null : list, (i4 & 256) != 0 ? null : textAutoSize, null);
    }

    private final TextAutoSizeLayoutScopeImpl getFontSizeSearchScope() {
        TextAutoSizeLayoutScopeImpl textAutoSizeLayoutScopeImpl = this._textAutoSizeLayoutScope;
        if (textAutoSizeLayoutScopeImpl == null) {
            textAutoSizeLayoutScopeImpl = new TextAutoSizeLayoutScopeImpl();
            this._textAutoSizeLayoutScope = textAutoSizeLayoutScopeImpl;
        }
        textAutoSizeLayoutScopeImpl.getClass();
        return textAutoSizeLayoutScopeImpl;
    }

    public static /* synthetic */ void getHistoryFlag$foundation$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: layoutText-K40F9xA, reason: not valid java name */
    public final MultiParagraph m2925layoutTextK40F9xA(long j, LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics layoutDirection2 = setLayoutDirection(layoutDirection);
        return new MultiParagraph(layoutDirection2, LayoutUtilsKt.m2916finalConstraintstfFHcEY(j, this.softWrap, this.overflow, layoutDirection2.getMaxIntrinsicWidth()), LayoutUtilsKt.m2917finalMaxLinesxdlQI24(this.softWrap, this.overflow, this.maxLines), this.overflow, (jh2) null);
    }

    private final void markDirty() {
        this.paragraphIntrinsics = null;
        this.layoutCache = null;
        this.cachedIntrinsicHeight = -1;
        this.cachedIntrinsicHeightInputWidth = -1;
        this._textAutoSizeLayoutScope = null;
    }

    private final void markStyleAffectedDirty() {
        m2927recordHistory4ETZmGE(LayoutCacheOperation.Companion.m2915getMarkDirtyStyleDEKiAbY());
        this.paragraphIntrinsics = null;
        this.layoutCache = null;
        this.cachedIntrinsicHeight = -1;
        this.cachedIntrinsicHeightInputWidth = -1;
    }

    /* JADX INFO: renamed from: newLayoutWillBeDifferent-VKLhPVY, reason: not valid java name */
    private final boolean m2926newLayoutWillBeDifferentVKLhPVY(TextLayoutResult textLayoutResult, long j, LayoutDirection layoutDirection) {
        if (textLayoutResult == null || textLayoutResult.getMultiParagraph().getIntrinsics().getHasStaleResolvedFonts() || layoutDirection != textLayoutResult.getLayoutInput().getLayoutDirection()) {
            return true;
        }
        if (Constraints.m8988equalsimpl0(j, textLayoutResult.getLayoutInput().m8457getConstraintsmsEJaDk())) {
            return false;
        }
        return Constraints.m8995getMaxWidthimpl(j) != Constraints.m8995getMaxWidthimpl(textLayoutResult.getLayoutInput().m8457getConstraintsmsEJaDk()) || Constraints.m8997getMinWidthimpl(j) != Constraints.m8997getMinWidthimpl(textLayoutResult.getLayoutInput().m8457getConstraintsmsEJaDk()) || ((float) Constraints.m8994getMaxHeightimpl(j)) < textLayoutResult.getMultiParagraph().getHeight() || textLayoutResult.getMultiParagraph().getDidExceedMaxLines();
    }

    /* JADX INFO: renamed from: recordHistory-4ETZmGE, reason: not valid java name */
    private final void m2927recordHistory4ETZmGE(long j) {
        this.historyFlag = j | (this.historyFlag << 2);
    }

    private final MultiParagraphIntrinsics setLayoutDirection(LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.paragraphIntrinsics;
        if (multiParagraphIntrinsics == null || layoutDirection != this.intrinsicsLayoutDirection || multiParagraphIntrinsics.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            AnnotatedString annotatedString = this.text;
            TextStyle textStyleResolveDefaults = TextStyleKt.resolveDefaults(this.style, layoutDirection);
            Density density = this.density;
            density.getClass();
            FontFamily.Resolver resolver = this.fontFamilyResolver;
            List list = this.placeholders;
            if (list == null) {
                list = kx2.b;
            }
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, textStyleResolveDefaults, (List<AnnotatedString.Range<Placeholder>>) list, density, resolver);
        }
        this.paragraphIntrinsics = multiParagraphIntrinsics;
        return multiParagraphIntrinsics;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setStyle(TextStyle textStyle) {
        boolean zHasSameLayoutAffectingAttributes = textStyle.hasSameLayoutAffectingAttributes(this.style);
        this.style = textStyle;
        if (zHasSameLayoutAffectingAttributes) {
            return;
        }
        markStyleAffectedDirty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: textLayoutResult-VKLhPVY, reason: not valid java name */
    public final TextLayoutResult m2928textLayoutResultVKLhPVY(LayoutDirection layoutDirection, long j, MultiParagraph multiParagraph) {
        float fMin = Math.min(multiParagraph.getIntrinsics().getMaxIntrinsicWidth(), multiParagraph.getWidth());
        AnnotatedString annotatedString = this.text;
        TextStyle textStyle = this.style;
        List list = this.placeholders;
        if (list == null) {
            list = kx2.b;
        }
        int i = this.maxLines;
        boolean z = this.softWrap;
        int i2 = this.overflow;
        Density density = this.density;
        density.getClass();
        return new TextLayoutResult(new TextLayoutInput(annotatedString, textStyle, list, i, z, i2, density, layoutDirection, this.fontFamilyResolver, j, (jh2) null), multiParagraph, ConstraintsKt.m9009constrain4WqzIAM(j, IntSize.m9208constructorimpl((((long) TextDelegateKt.ceilToIntPx(multiParagraph.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) TextDelegateKt.ceilToIntPx(fMin)) << 32))), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: useMinLinesConstrainer-Oh53vG4, reason: not valid java name */
    public final long m2929useMinLinesConstrainerOh53vG4(long j, LayoutDirection layoutDirection) {
        MinLinesConstrainer.Companion companion = MinLinesConstrainer.Companion;
        MinLinesConstrainer minLinesConstrainer = this.mMinLinesConstrainer;
        TextStyle textStyle = this.style;
        Density density = this.density;
        density.getClass();
        MinLinesConstrainer minLinesConstrainerFrom = companion.from(minLinesConstrainer, layoutDirection, textStyle, density, this.fontFamilyResolver);
        this.mMinLinesConstrainer = minLinesConstrainerFrom;
        return minLinesConstrainerFrom.m2920coerceMinLinesOh53vG4$foundation(j, this.minLines);
    }

    public final Density getDensity$foundation() {
        return this.density;
    }

    public final long getHistoryFlag$foundation() {
        return this.historyFlag;
    }

    public final TextLayoutResult getLayoutOrNull() {
        return this.layoutCache;
    }

    public final TextLayoutResult getTextLayoutResult() {
        TextLayoutResult textLayoutResult = this.layoutCache;
        if (textLayoutResult != null) {
            return textLayoutResult;
        }
        qz0.i(this, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: ");
        return null;
    }

    public final int intrinsicHeight(int i, LayoutDirection layoutDirection) {
        int i2 = this.cachedIntrinsicHeightInputWidth;
        int i3 = this.cachedIntrinsicHeight;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long jConstraints = ConstraintsKt.Constraints(0, i, 0, Integer.MAX_VALUE);
        if (this.minLines > 1) {
            jConstraints = m2929useMinLinesConstrainerOh53vG4(jConstraints, layoutDirection);
        }
        int iCeilToIntPx = TextDelegateKt.ceilToIntPx(m2925layoutTextK40F9xA(jConstraints, layoutDirection).getHeight());
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(jConstraints);
        if (iCeilToIntPx < iM8996getMinHeightimpl) {
            iCeilToIntPx = iM8996getMinHeightimpl;
        }
        this.cachedIntrinsicHeightInputWidth = i;
        this.cachedIntrinsicHeight = iCeilToIntPx;
        return iCeilToIntPx;
    }

    /* JADX INFO: renamed from: layoutWithConstraints-K40F9xA, reason: not valid java name */
    public final boolean m2930layoutWithConstraintsK40F9xA(long j, LayoutDirection layoutDirection) {
        m2927recordHistory4ETZmGE(LayoutCacheOperation.Companion.m2912getLayoutWithConstraintsDEKiAbY());
        long jM2929useMinLinesConstrainerOh53vG4 = this.minLines > 1 ? m2929useMinLinesConstrainerOh53vG4(j, layoutDirection) : j;
        if (!m2926newLayoutWillBeDifferentVKLhPVY(this.layoutCache, jM2929useMinLinesConstrainerOh53vG4, layoutDirection)) {
            TextLayoutResult textLayoutResult = this.layoutCache;
            textLayoutResult.getClass();
            if (Constraints.m8988equalsimpl0(jM2929useMinLinesConstrainerOh53vG4, textLayoutResult.getLayoutInput().m8457getConstraintsmsEJaDk())) {
                return false;
            }
            TextLayoutResult textLayoutResult2 = this.layoutCache;
            textLayoutResult2.getClass();
            this.layoutCache = m2928textLayoutResultVKLhPVY(layoutDirection, jM2929useMinLinesConstrainerOh53vG4, textLayoutResult2.getMultiParagraph());
            return true;
        }
        if (this.autoSize != null) {
            this.intrinsicsLayoutDirection = layoutDirection;
            long jM8522getFontSizeXSAIIZE = this.style.m8522getFontSizeXSAIIZE();
            TextAutoSize textAutoSize = this.autoSize;
            textAutoSize.getClass();
            long jMo2446getFontSizeCi0_558 = textAutoSize.mo2446getFontSizeCi0_558(getFontSizeSearchScope(), j, this.text);
            if (TextUnit.m9238isEmimpl(jMo2446getFontSizeCi0_558)) {
                jMo2446getFontSizeCi0_558 = MultiParagraphLayoutCacheKt.m2934timesNB67dxo(jM8522getFontSizeXSAIIZE, jMo2446getFontSizeCi0_558);
            }
            long j2 = jMo2446getFontSizeCi0_558;
            TextLayoutResult lastLayoutResult = getFontSizeSearchScope().getLastLayoutResult();
            if (lastLayoutResult != null && TextUnit.m9233equalsimpl0(j2, lastLayoutResult.getLayoutInput().getStyle().m8522getFontSizeXSAIIZE()) && TextOverflow.m8968equalsimpl0(lastLayoutResult.getLayoutInput().m8458getOverflowgIe3tQ8(), this.overflow)) {
                this.layoutCache = lastLayoutResult;
                return true;
            }
            setStyle(TextStyle.m8504copyp1EtxEg$default(this.style, 0L, j2, null, null, null, null, null, 0L, null, null, null, 0L, null, null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16777213, null));
        }
        this.layoutCache = m2928textLayoutResultVKLhPVY(layoutDirection, jM2929useMinLinesConstrainerOh53vG4, m2925layoutTextK40F9xA(jM2929useMinLinesConstrainerOh53vG4, layoutDirection));
        return true;
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
            m2927recordHistory4ETZmGE(LayoutCacheOperation.Companion.m2913getMarkDirtyDensityDEKiAbY());
            markDirty();
        }
    }

    public final void setHistoryFlag$foundation(long j) {
        this.historyFlag = j;
    }

    public String toString() {
        TextLayoutInput layoutInput;
        StringBuilder sb = new StringBuilder("MultiParagraphLayoutCache(textLayoutResult=");
        Object objM8982boximpl = "null";
        sb.append(this.layoutCache != null ? "<TextLayoutResult>" : "null");
        sb.append(", lastDensity=");
        sb.append((Object) InlineDensity.m2902toStringimpl(this.lastDensity));
        sb.append(", history=");
        sb.append(this.historyFlag);
        sb.append(", constraints=");
        TextLayoutResult textLayoutResult = this.layoutCache;
        if (textLayoutResult != null && (layoutInput = textLayoutResult.getLayoutInput()) != null) {
            objM8982boximpl = Constraints.m8982boximpl(layoutInput.m8457getConstraintsmsEJaDk());
        }
        return vg.d(sb, objM8982boximpl, ')');
    }

    /* JADX INFO: renamed from: update-J2qo7bo, reason: not valid java name */
    public final void m2931updateJ2qo7bo(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, List<AnnotatedString.Range<Placeholder>> list, TextAutoSize textAutoSize) {
        this.text = annotatedString;
        setStyle(textStyle);
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.autoSize = textAutoSize;
        m2927recordHistory4ETZmGE(LayoutCacheOperation.Companion.m2914getMarkDirtyNodeDEKiAbY());
        markDirty();
    }

    private MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, List<AnnotatedString.Range<Placeholder>> list, TextAutoSize textAutoSize) {
        this.text = annotatedString;
        this.fontFamilyResolver = resolver;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.autoSize = textAutoSize;
        this.lastDensity = InlineDensity.Companion.m2904getUnspecifiedL26CHvs();
        this.style = textStyle;
        this.cachedIntrinsicHeightInputWidth = -1;
        this.cachedIntrinsicHeight = -1;
    }

    public /* synthetic */ MultiParagraphLayoutCache(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, int i, boolean z, int i2, int i3, List list, TextAutoSize textAutoSize, jh2 jh2Var) {
        this(annotatedString, textStyle, resolver, i, z, i2, i3, list, textAutoSize);
    }
}
