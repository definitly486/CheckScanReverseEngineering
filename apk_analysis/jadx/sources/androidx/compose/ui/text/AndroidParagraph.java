package androidx.compose.ui.text;

import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.selection.WordBoundary_androidKt;
import androidx.compose.ui.text.android.selection.WordIterator;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ah;
import defpackage.bg;
import defpackage.hj;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.n7;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidParagraph implements Paragraph {
    public static final int $stable = 8;
    private final CharSequence charSequence;
    private final long constraints;
    private final TextLayout layout;
    private final int maxLines;
    private final int overflow;
    private final AndroidParagraphIntrinsics paragraphIntrinsics;
    private final List<Rect> placeholderRects;

    /* JADX WARN: Code duplicated, block: B:104:0x029c  */
    /* JADX WARN: Code duplicated, block: B:106:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:108:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:109:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:110:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:111:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:112:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:121:0x0296 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14, types: [int] */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [android.text.Spanned] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16, types: [int] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12, types: [androidx.compose.ui.text.android.TextLayout] */
    /* JADX WARN: Type inference failed for: r7v16, types: [androidx.compose.ui.text.android.TextLayout] */
    /* JADX WARN: Type inference failed for: r7v22, types: [androidx.compose.ui.text.android.TextLayout] */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private AndroidParagraph(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i, int i2, long j) {
        int i3;
        AndroidParagraph androidParagraph;
        ?? r12;
        List<Rect> list;
        Rect rect;
        float secondaryHorizontal;
        int widthPx;
        float primaryHorizontal;
        int widthPx2;
        TextLayout textLayout;
        float lineBaseline;
        int heightPx;
        float lineTop;
        float heightPx2;
        float lineBaseline2;
        boolean z;
        this.paragraphIntrinsics = androidParagraphIntrinsics;
        this.maxLines = i;
        this.overflow = i2;
        this.constraints = j;
        if (Constraints.m8996getMinHeightimpl(j) != 0 || Constraints.m8997getMinWidthimpl(j) != 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        if (i < 1) {
            InlineClassHelperKt.throwIllegalArgumentException("maxLines should be greater than 0");
        }
        TextStyle style = androidParagraphIntrinsics.getStyle();
        TextOverflow.Companion companion = TextOverflow.Companion;
        CharSequence charSequenceAttachIndentationFixSpan = AndroidParagraph_androidKt.shouldAttachIndentationFixSpan(style, TextOverflow.m8968equalsimpl0(i2, companion.m8978getEllipsisgIe3tQ8())) ? AndroidParagraph_androidKt.attachIndentationFixSpan(androidParagraphIntrinsics.getCharSequence$ui_text()) : androidParagraphIntrinsics.getCharSequence$ui_text();
        this.charSequence = charSequenceAttachIndentationFixSpan;
        int iM8320toLayoutAlignaXe7zB0 = AndroidParagraph_androidKt.m8320toLayoutAlignaXe7zB0(style.m8532getTextAligne0LSkKk());
        boolean zM8916equalsimpl0 = TextAlign.m8916equalsimpl0(style.m8532getTextAligne0LSkKk(), TextAlign.Companion.m8922getJustifye0LSkKk());
        int iM8322toLayoutHyphenationFrequency3fSNIE = AndroidParagraph_androidKt.m8322toLayoutHyphenationFrequency3fSNIE(style.getParagraphStyle$ui_text().m8391getHyphensvmbZdU8());
        int iM8321toLayoutBreakStrategyxImikfE = AndroidParagraph_androidKt.m8321toLayoutBreakStrategyxImikfE(LineBreak.m8825getStrategyfcGXIks(style.m8529getLineBreakrAG3T2k()));
        int iM8323toLayoutLineBreakStylehpcqdu8 = AndroidParagraph_androidKt.m8323toLayoutLineBreakStylehpcqdu8(LineBreak.m8826getStrictnessusljTpc(style.m8529getLineBreakrAG3T2k()));
        int iM8324toLayoutLineBreakWordStylewPN0Rpw = AndroidParagraph_androidKt.m8324toLayoutLineBreakWordStylewPN0Rpw(LineBreak.m8827getWordBreakjp8hJ3c(style.m8529getLineBreakrAG3T2k()));
        CharSequence charSequence = charSequenceAttachIndentationFixSpan;
        TextUtils.TruncateAt truncateAt = TextOverflow.m8968equalsimpl0(i2, companion.m8978getEllipsisgIe3tQ8()) ? TextUtils.TruncateAt.END : TextOverflow.m8968equalsimpl0(i2, companion.m8979getMiddleEllipsisgIe3tQ8()) ? TextUtils.TruncateAt.MIDDLE : TextOverflow.m8968equalsimpl0(i2, companion.m8980getStartEllipsisgIe3tQ8()) ? TextUtils.TruncateAt.START : null;
        TextLayout textLayoutConstructTextLayout$default = constructTextLayout$default(this, iM8320toLayoutAlignaXe7zB0, zM8916equalsimpl0 ? 1 : 0, truncateAt, i, iM8322toLayoutHyphenationFrequency3fSNIE, iM8321toLayoutBreakStrategyxImikfE, iM8323toLayoutLineBreakStylehpcqdu8, iM8324toLayoutLineBreakWordStylewPN0Rpw, null, 256, null);
        if (Build.VERSION.SDK_INT >= 35 || getTextPaint$ui_text().getLetterSpacing() == 0.0f || (!(TextOverflow.m8968equalsimpl0(i2, companion.m8980getStartEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(i2, companion.m8979getMiddleEllipsisgIe3tQ8())) || textLayoutConstructTextLayout$default.getLineEllipsisCount(0) <= 0)) {
            i3 = i;
        } else {
            int lineEllipsisOffset = textLayoutConstructTextLayout$default.getLineEllipsisOffset(0);
            i3 = i;
            textLayoutConstructTextLayout$default = constructTextLayout(iM8320toLayoutAlignaXe7zB0, zM8916equalsimpl0 ? 1 : 0, truncateAt, i3, iM8322toLayoutHyphenationFrequency3fSNIE, iM8321toLayoutBreakStrategyxImikfE, iM8323toLayoutLineBreakStylehpcqdu8, iM8324toLayoutLineBreakWordStylewPN0Rpw, TextUtils.concat(charSequence.subSequence(0, lineEllipsisOffset), "…", charSequence.subSequence(textLayoutConstructTextLayout$default.getLineEllipsisCount(0) + lineEllipsisOffset, charSequence.length())));
        }
        if (!TextOverflow.m8968equalsimpl0(i2, companion.m8978getEllipsisgIe3tQ8()) || textLayoutConstructTextLayout$default.getHeight() <= Constraints.m8994getMaxHeightimpl(j) || i3 <= 1) {
            androidParagraph = this;
            r12 = 0;
            androidParagraph.layout = textLayoutConstructTextLayout$default;
        } else {
            int iNumberOfLinesThatFitMaxHeight = AndroidParagraph_androidKt.numberOfLinesThatFitMaxHeight(textLayoutConstructTextLayout$default, Constraints.m8994getMaxHeightimpl(j));
            if (iNumberOfLinesThatFitMaxHeight < 0 || iNumberOfLinesThatFitMaxHeight == i3) {
                androidParagraph = this;
                z = false;
            } else {
                z = false;
                androidParagraph = this;
                textLayoutConstructTextLayout$default = constructTextLayout$default(androidParagraph, iM8320toLayoutAlignaXe7zB0, zM8916equalsimpl0 ? 1 : 0, truncateAt, iNumberOfLinesThatFitMaxHeight < 1 ? 1 : iNumberOfLinesThatFitMaxHeight, iM8322toLayoutHyphenationFrequency3fSNIE, iM8321toLayoutBreakStrategyxImikfE, iM8323toLayoutLineBreakStylehpcqdu8, iM8324toLayoutLineBreakWordStylewPN0Rpw, null, 256, null);
            }
            androidParagraph.layout = textLayoutConstructTextLayout$default;
            r12 = z;
        }
        androidParagraph.getTextPaint$ui_text().m8758setBrush12SF9DM(style.getBrush(), Size.m6047constructorimpl((((long) Float.floatToRawIntBits(androidParagraph.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(androidParagraph.getWidth())) << 32)), style.getAlpha());
        ShaderBrushSpan[] shaderBrushSpans = androidParagraph.getShaderBrushSpans(textLayoutConstructTextLayout$default);
        if (shaderBrushSpans != null) {
            int length = shaderBrushSpans.length;
            for (?? r3 = r12; r3 < length; r3++) {
                shaderBrushSpans[r3].m8781setSizeuvyYCjk(Size.m6047constructorimpl((((long) Float.floatToRawIntBits(androidParagraph.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(androidParagraph.getWidth())) << 32)));
            }
        }
        CharSequence charSequence2 = androidParagraph.charSequence;
        if (charSequence2 instanceof Spanned) {
            ?? r2 = (Spanned) charSequence2;
            Object[] spans = r2.getSpans(r12, charSequence2.length(), PlaceholderSpan.class);
            ArrayList arrayList = new ArrayList(spans.length);
            int length2 = spans.length;
            for (?? r10 = r12; r10 < length2; r10++) {
                PlaceholderSpan placeholderSpan = (PlaceholderSpan) spans[r10];
                int spanStart = r2.getSpanStart(placeholderSpan);
                int spanEnd = r2.getSpanEnd(placeholderSpan);
                int lineForOffset = androidParagraph.layout.getLineForOffset(spanStart);
                ?? r9 = lineForOffset >= androidParagraph.maxLines ? 1 : r12;
                ?? r11 = (androidParagraph.layout.getLineEllipsisCount(lineForOffset) <= 0 || spanEnd <= androidParagraph.layout.getLineEllipsisOffset(lineForOffset) + androidParagraph.layout.getLineStart(lineForOffset)) ? r12 : 1;
                ?? r7 = spanEnd > androidParagraph.layout.getLineEnd(lineForOffset) ? 1 : r12;
                if (r11 == 0 && r7 == 0 && r9 == 0) {
                    ?? r8 = androidParagraph.layout.getParagraphDirection(lineForOffset) == 1 ? 1 : r12;
                    boolean zIsRtlCharAt = androidParagraph.layout.isRtlCharAt(spanStart);
                    if (r8 == 0 || zIsRtlCharAt) {
                        if (r8 == 0 || !zIsRtlCharAt) {
                            ?? r13 = androidParagraph.layout;
                            if (zIsRtlCharAt) {
                                primaryHorizontal = r13.getPrimaryHorizontal(spanStart, r12);
                                widthPx2 = placeholderSpan.getWidthPx();
                            } else {
                                secondaryHorizontal = r13.getSecondaryHorizontal(spanStart, r12);
                                widthPx = placeholderSpan.getWidthPx();
                            }
                        } else {
                            primaryHorizontal = androidParagraph.layout.getSecondaryHorizontal(spanStart, r12);
                            widthPx2 = placeholderSpan.getWidthPx();
                        }
                        secondaryHorizontal = primaryHorizontal - widthPx2;
                        textLayout = androidParagraph.layout;
                        switch (placeholderSpan.getVerticalAlign()) {
                            case 0:
                                lineBaseline = textLayout.getLineBaseline(lineForOffset);
                                heightPx = placeholderSpan.getHeightPx();
                                lineTop = lineBaseline - heightPx;
                                rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                                break;
                            case 1:
                                lineTop = textLayout.getLineTop(lineForOffset);
                                rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                                break;
                            case 2:
                                lineBaseline = textLayout.getLineBottom(lineForOffset);
                                heightPx = placeholderSpan.getHeightPx();
                                lineTop = lineBaseline - heightPx;
                                rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                                break;
                            case 3:
                                lineTop = ((textLayout.getLineBottom(lineForOffset) + textLayout.getLineTop(lineForOffset)) - placeholderSpan.getHeightPx()) / 2.0f;
                                rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                                break;
                            case 4:
                                heightPx2 = placeholderSpan.getFontMetrics().ascent;
                                lineBaseline2 = textLayout.getLineBaseline(lineForOffset);
                                lineTop = lineBaseline2 + heightPx2;
                                rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                                break;
                            case 5:
                                lineBaseline = textLayout.getLineBaseline(lineForOffset) + placeholderSpan.getFontMetrics().descent;
                                heightPx = placeholderSpan.getHeightPx();
                                lineTop = lineBaseline - heightPx;
                                rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                                break;
                            case 6:
                                Paint.FontMetricsInt fontMetrics = placeholderSpan.getFontMetrics();
                                heightPx2 = ((fontMetrics.ascent + fontMetrics.descent) - placeholderSpan.getHeightPx()) / 2;
                                lineBaseline2 = textLayout.getLineBaseline(lineForOffset);
                                lineTop = lineBaseline2 + heightPx2;
                                rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                                break;
                            default:
                                ah.f("unexpected verticalAlignment");
                                throw null;
                        }
                    } else {
                        secondaryHorizontal = androidParagraph.layout.getPrimaryHorizontal(spanStart, r12);
                        widthPx = placeholderSpan.getWidthPx();
                    }
                    primaryHorizontal = widthPx + secondaryHorizontal;
                    textLayout = androidParagraph.layout;
                    switch (placeholderSpan.getVerticalAlign()) {
                        case 0:
                            lineBaseline = textLayout.getLineBaseline(lineForOffset);
                            heightPx = placeholderSpan.getHeightPx();
                            lineTop = lineBaseline - heightPx;
                            rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 1:
                            lineTop = textLayout.getLineTop(lineForOffset);
                            rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 2:
                            lineBaseline = textLayout.getLineBottom(lineForOffset);
                            heightPx = placeholderSpan.getHeightPx();
                            lineTop = lineBaseline - heightPx;
                            rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 3:
                            lineTop = ((textLayout.getLineBottom(lineForOffset) + textLayout.getLineTop(lineForOffset)) - placeholderSpan.getHeightPx()) / 2.0f;
                            rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 4:
                            heightPx2 = placeholderSpan.getFontMetrics().ascent;
                            lineBaseline2 = textLayout.getLineBaseline(lineForOffset);
                            lineTop = lineBaseline2 + heightPx2;
                            rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 5:
                            lineBaseline = textLayout.getLineBaseline(lineForOffset) + placeholderSpan.getFontMetrics().descent;
                            heightPx = placeholderSpan.getHeightPx();
                            lineTop = lineBaseline - heightPx;
                            rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        case 6:
                            Paint.FontMetricsInt fontMetrics2 = placeholderSpan.getFontMetrics();
                            heightPx2 = ((fontMetrics2.ascent + fontMetrics2.descent) - placeholderSpan.getHeightPx()) / 2;
                            lineBaseline2 = textLayout.getLineBaseline(lineForOffset);
                            lineTop = lineBaseline2 + heightPx2;
                            rect = new Rect(secondaryHorizontal, lineTop, primaryHorizontal, placeholderSpan.getHeightPx() + lineTop);
                            break;
                        default:
                            ah.f("unexpected verticalAlignment");
                            throw null;
                    }
                } else {
                    rect = null;
                }
                arrayList.add(rect);
            }
            list = arrayList;
        } else {
            list = kx2.b;
        }
        androidParagraph.placeholderRects = list;
    }

    private final TextLayout constructTextLayout(int i, int i2, TextUtils.TruncateAt truncateAt, int i3, int i4, int i5, int i6, int i7, CharSequence charSequence) {
        return new TextLayout(charSequence, getWidth(), getTextPaint$ui_text(), i, truncateAt, this.paragraphIntrinsics.getTextDirectionHeuristic$ui_text(), 1.0f, 0.0f, AndroidParagraphHelper_androidKt.isIncludeFontPaddingEnabled(this.paragraphIntrinsics.getStyle()), true, i3, i5, i6, i7, i4, i2, null, null, this.paragraphIntrinsics.getLayoutIntrinsics$ui_text(), 196736, null);
    }

    public static /* synthetic */ TextLayout constructTextLayout$default(AndroidParagraph androidParagraph, int i, int i2, TextUtils.TruncateAt truncateAt, int i3, int i4, int i5, int i6, int i7, CharSequence charSequence, int i8, Object obj) {
        return androidParagraph.constructTextLayout(i, i2, truncateAt, i3, i4, i5, i6, i7, (i8 & 256) != 0 ? androidParagraph.charSequence : charSequence);
    }

    public static /* synthetic */ void getCharSequence$ui_text$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getRangeForRect_8_6BmAI$lambda$0(TextInclusionStrategy textInclusionStrategy, RectF rectF, RectF rectF2) {
        return textInclusionStrategy.isIncluded(RectHelper_androidKt.toComposeRect(rectF), RectHelper_androidKt.toComposeRect(rectF2));
    }

    private final ShaderBrushSpan[] getShaderBrushSpans(TextLayout textLayout) {
        if (!(textLayout.getText() instanceof Spanned)) {
            return null;
        }
        CharSequence text = textLayout.getText();
        text.getClass();
        if (!hasSpan((Spanned) text, ShaderBrushSpan.class)) {
            return null;
        }
        CharSequence text2 = textLayout.getText();
        text2.getClass();
        return (ShaderBrushSpan[]) ((Spanned) text2).getSpans(0, textLayout.getText().length(), ShaderBrushSpan.class);
    }

    public static /* synthetic */ void getTextLocale$ui_text$annotations() {
    }

    public static /* synthetic */ void getTextPaint$ui_text$annotations() {
    }

    private final boolean hasSpan(Spanned spanned, Class<?> cls) {
        return spanned.nextSpanTransition(-1, spanned.length(), cls) != spanned.length();
    }

    private final void paint(Canvas canvas) {
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        if (getDidExceedMaxLines()) {
            nativeCanvas.save();
            nativeCanvas.clipRect(0.0f, 0.0f, getWidth(), getHeight());
        }
        this.layout.paint(nativeCanvas);
        if (getDidExceedMaxLines()) {
            nativeCanvas.restore();
        }
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: fillBoundingBoxes-8ffj60Q, reason: not valid java name */
    public void mo8305fillBoundingBoxes8ffj60Q(long j, float[] fArr, int i) {
        this.layout.fillBoundingBoxes(TextRange.m8489getMinimpl(j), TextRange.m8488getMaximpl(j), fArr, i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public ResolvedTextDirection getBidiRunDirection(int i) {
        return this.layout.isRtlCharAt(i) ? ResolvedTextDirection.Rtl : ResolvedTextDirection.Ltr;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public Rect getBoundingBox(int i) {
        boolean z = false;
        if (i >= 0 && i < this.charSequence.length()) {
            z = true;
        }
        if (!z) {
            StringBuilder sbC = n7.c(i, "offset(", ") is out of bounds [0,");
            sbC.append(this.charSequence.length());
            sbC.append(')');
            InlineClassHelperKt.throwIllegalArgumentException(sbC.toString());
        }
        RectF boundingBox = this.layout.getBoundingBox(i);
        return new Rect(boundingBox.left, boundingBox.top, boundingBox.right, boundingBox.bottom);
    }

    public final CharSequence getCharSequence$ui_text() {
        return this.charSequence;
    }

    /* JADX INFO: renamed from: getConstraints-msEJaDk, reason: not valid java name */
    public final long m8306getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public Rect getCursorRect(int i) {
        if (!(i >= 0 && i <= this.charSequence.length())) {
            StringBuilder sbC = n7.c(i, "offset(", ") is out of bounds [0,");
            sbC.append(this.charSequence.length());
            sbC.append(']');
            InlineClassHelperKt.throwIllegalArgumentException(sbC.toString());
        }
        float primaryHorizontal$default = TextLayout.getPrimaryHorizontal$default(this.layout, i, false, 2, null);
        int lineForOffset = this.layout.getLineForOffset(i);
        return new Rect(primaryHorizontal$default, this.layout.getLineTop(lineForOffset), primaryHorizontal$default, this.layout.getLineBottom(lineForOffset));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public boolean getDidExceedMaxLines() {
        return this.layout.getDidExceedMaxLines();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getFirstBaseline() {
        return getLineBaseline(0);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getHeight() {
        return this.layout.getHeight();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getHorizontalPosition(int i, boolean z) {
        TextLayout textLayout = this.layout;
        return z ? TextLayout.getPrimaryHorizontal$default(textLayout, i, false, 2, null) : TextLayout.getSecondaryHorizontal$default(textLayout, i, false, 2, null);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLastBaseline() {
        return getLineBaseline(getLineCount() - 1);
    }

    public final float getLineAscent$ui_text(int i) {
        return this.layout.getLineAscent(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineBaseline(int i) {
        return this.layout.getLineBaseline(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineBottom(int i) {
        return this.layout.getLineBottom(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineCount() {
        return this.layout.getLineCount();
    }

    public final float getLineDescent$ui_text(int i) {
        return this.layout.getLineDescent(i);
    }

    public final int getLineEllipsisCount$ui_text(int i) {
        return this.layout.getLineEllipsisCount(i);
    }

    public final int getLineEllipsisOffset$ui_text(int i) {
        return this.layout.getLineEllipsisOffset(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineEnd(int i, boolean z) {
        TextLayout textLayout = this.layout;
        return z ? textLayout.getLineVisibleEnd(i) : textLayout.getLineEnd(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineForOffset(int i) {
        return this.layout.getLineForOffset(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineForVerticalPosition(float f) {
        return this.layout.getLineForVertical((int) f);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineHeight(int i) {
        return this.layout.getLineHeight(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineLeft(int i) {
        return this.layout.getLineLeft(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineRight(int i) {
        return this.layout.getLineRight(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public int getLineStart(int i) {
        return this.layout.getLineStart(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineTop(int i) {
        return this.layout.getLineTop(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getLineWidth(int i) {
        return this.layout.getLineWidth(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getMaxIntrinsicWidth() {
        return this.paragraphIntrinsics.getMaxIntrinsicWidth();
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getMinIntrinsicWidth() {
        return this.paragraphIntrinsics.getMinIntrinsicWidth();
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: getOffsetForPosition-k-4lQ0M, reason: not valid java name */
    public int mo8307getOffsetForPositionk4lQ0M(long j) {
        int lineForVerticalUnbounded = this.layout.getLineForVerticalUnbounded((int) Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j)));
        int lineCount = getLineCount();
        TextLayout textLayout = this.layout;
        return lineForVerticalUnbounded >= lineCount ? textLayout.getText().length() : textLayout.getOffsetForHorizontal(lineForVerticalUnbounded, Float.intBitsToFloat((int) (j >> 32)));
    }

    /* JADX INFO: renamed from: getOverflow-gIe3tQ8, reason: not valid java name */
    public final int m8308getOverflowgIe3tQ8() {
        return this.overflow;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public ResolvedTextDirection getParagraphDirection(int i) {
        return this.layout.getParagraphDirection(this.layout.getLineForOffset(i)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    public final AndroidParagraphIntrinsics getParagraphIntrinsics() {
        return this.paragraphIntrinsics;
    }

    @Override // androidx.compose.ui.text.Paragraph
    public Path getPathForRange(int i, int i2) {
        if (!(i >= 0 && i <= i2 && i2 <= this.charSequence.length())) {
            StringBuilder sbF = bg.f(i, i2, "start(", ") or end(", ") is out of range [0..");
            sbF.append(this.charSequence.length());
            sbF.append("], or start > end!");
            InlineClassHelperKt.throwIllegalArgumentException(sbF.toString());
        }
        android.graphics.Path path = new android.graphics.Path();
        this.layout.getSelectionPath(i, i2, path);
        return AndroidPath_androidKt.asComposePath(path);
    }

    @Override // androidx.compose.ui.text.Paragraph
    public List<Rect> getPlaceholderRects() {
        return this.placeholderRects;
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: getRangeForRect-8-6BmAI, reason: not valid java name */
    public long mo8309getRangeForRect86BmAI(Rect rect, int i, TextInclusionStrategy textInclusionStrategy) {
        int[] rangeForRect = this.layout.getRangeForRect(RectHelper_androidKt.toAndroidRectF(rect), AndroidParagraph_androidKt.m8325toLayoutTextGranularityduNsdkg(i), new hj(textInclusionStrategy, 0));
        return rangeForRect == null ? TextRange.Companion.m8496getZerod9O1mEE() : TextRangeKt.TextRange(rangeForRect[0], rangeForRect[1]);
    }

    public final Locale getTextLocale$ui_text() {
        return this.paragraphIntrinsics.getTextPaint$ui_text().getTextLocale();
    }

    public final AndroidTextPaint getTextPaint$ui_text() {
        return this.paragraphIntrinsics.getTextPaint$ui_text();
    }

    @Override // androidx.compose.ui.text.Paragraph
    public float getWidth() {
        return Constraints.m8995getMaxWidthimpl(this.constraints);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: getWordBoundary--jx7JFs, reason: not valid java name */
    public long mo8310getWordBoundaryjx7JFs(int i) {
        WordIterator wordIterator = this.layout.getWordIterator();
        return TextRangeKt.TextRange(WordBoundary_androidKt.getWordStart(wordIterator, i), WordBoundary_androidKt.getWordEnd(wordIterator, i));
    }

    @Override // androidx.compose.ui.text.Paragraph
    public boolean isLineEllipsized(int i) {
        return this.layout.isLineEllipsized(i);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: paint-LG529CI, reason: not valid java name */
    public void mo8311paintLG529CI(Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i) {
        int iM8755getBlendMode0nO6VwU = getTextPaint$ui_text().m8755getBlendMode0nO6VwU();
        AndroidTextPaint textPaint$ui_text = getTextPaint$ui_text();
        textPaint$ui_text.m8760setColor8_81llA(j);
        textPaint$ui_text.setShadow(shadow);
        textPaint$ui_text.setTextDecoration(textDecoration);
        textPaint$ui_text.setDrawStyle(drawStyle);
        textPaint$ui_text.m8757setBlendModes9anfk8(i);
        paint(canvas);
        getTextPaint$ui_text().m8757setBlendModes9anfk8(iM8755getBlendMode0nO6VwU);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: paint-RPmYEkk, reason: not valid java name */
    public void mo8312paintRPmYEkk(Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration) {
        AndroidTextPaint textPaint$ui_text = getTextPaint$ui_text();
        textPaint$ui_text.m8760setColor8_81llA(j);
        textPaint$ui_text.setShadow(shadow);
        textPaint$ui_text.setTextDecoration(textDecoration);
        paint(canvas);
    }

    @Override // androidx.compose.ui.text.Paragraph
    /* JADX INFO: renamed from: paint-hn5TExg, reason: not valid java name */
    public void mo8313painthn5TExg(Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle, int i) {
        int iM8755getBlendMode0nO6VwU = getTextPaint$ui_text().m8755getBlendMode0nO6VwU();
        AndroidTextPaint textPaint$ui_text = getTextPaint$ui_text();
        float width = getWidth();
        textPaint$ui_text.m8758setBrush12SF9DM(brush, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(width) << 32)), f);
        textPaint$ui_text.setShadow(shadow);
        textPaint$ui_text.setTextDecoration(textDecoration);
        textPaint$ui_text.setDrawStyle(drawStyle);
        textPaint$ui_text.m8757setBlendModes9anfk8(i);
        paint(canvas);
        getTextPaint$ui_text().m8757setBlendModes9anfk8(iM8755getBlendMode0nO6VwU);
    }

    public /* synthetic */ AndroidParagraph(String str, TextStyle textStyle, List list, List list2, int i, int i2, long j, FontFamily.Resolver resolver, Density density, jh2 jh2Var) {
        this(str, textStyle, list, list2, i, i2, j, resolver, density);
    }

    public /* synthetic */ AndroidParagraph(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i, int i2, long j, jh2 jh2Var) {
        this(androidParagraphIntrinsics, i, i2, j);
    }

    private AndroidParagraph(String str, TextStyle textStyle, List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>> list, List<AnnotatedString.Range<Placeholder>> list2, int i, int i2, long j, FontFamily.Resolver resolver, Density density) {
        this(new AndroidParagraphIntrinsics(str, textStyle, list, list2, resolver, density), i, i2, j, null);
    }
}
