package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextAutoSize;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jn;
import defpackage.nl3;
import defpackage.tg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextAnnotatedStringElement extends ModifierNodeElement<TextAnnotatedStringNode> {
    public static final int $stable = 0;
    private final TextAutoSize autoSize;
    private final ColorProducer color;
    private final FontFamily.Resolver fontFamilyResolver;
    private final int maxLines;
    private final int minLines;
    private final nl3<List<Rect>, j59> onPlaceholderLayout;
    private final nl3<TextAnnotatedStringNode.TextSubstitutionValue, j59> onShowTranslation;
    private final nl3<TextLayoutResult, j59> onTextLayout;
    private final int overflow;
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    private final SelectionController selectionController;
    private final boolean softWrap;
    private final TextStyle style;
    private final AnnotatedString text;

    public /* synthetic */ TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, nl3 nl3Var, int i, boolean z, int i2, int i3, List list, nl3 nl3Var2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, nl3 nl3Var3, int i4, jh2 jh2Var) {
        this(annotatedString, textStyle, resolver, (i4 & 8) != 0 ? null : nl3Var, (i4 & 16) != 0 ? TextOverflow.Companion.m8977getClipgIe3tQ8() : i, (i4 & 32) != 0 ? true : z, (i4 & 64) != 0 ? Integer.MAX_VALUE : i2, (i4 & 128) != 0 ? 1 : i3, (i4 & 256) != 0 ? null : list, (i4 & 512) != 0 ? null : nl3Var2, (i4 & 1024) != 0 ? null : selectionController, (i4 & 2048) != 0 ? null : colorProducer, (i4 & 4096) != 0 ? null : textAutoSize, (i4 & 8192) != 0 ? null : nl3Var3, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public TextAnnotatedStringNode create() {
        return new TextAnnotatedStringNode(this.text, this.style, this.fontFamilyResolver, this.onTextLayout, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders, this.onPlaceholderLayout, this.selectionController, this.color, this.autoSize, this.onShowTranslation, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextAnnotatedStringElement)) {
            return false;
        }
        TextAnnotatedStringElement textAnnotatedStringElement = (TextAnnotatedStringElement) obj;
        return aa4.e(this.color, textAnnotatedStringElement.color) && aa4.e(this.text, textAnnotatedStringElement.text) && aa4.e(this.style, textAnnotatedStringElement.style) && aa4.e(this.placeholders, textAnnotatedStringElement.placeholders) && aa4.e(this.fontFamilyResolver, textAnnotatedStringElement.fontFamilyResolver) && this.onTextLayout == textAnnotatedStringElement.onTextLayout && this.onShowTranslation == textAnnotatedStringElement.onShowTranslation && TextOverflow.m8968equalsimpl0(this.overflow, textAnnotatedStringElement.overflow) && this.softWrap == textAnnotatedStringElement.softWrap && this.maxLines == textAnnotatedStringElement.maxLines && this.minLines == textAnnotatedStringElement.minLines && this.onPlaceholderLayout == textAnnotatedStringElement.onPlaceholderLayout && aa4.e(this.selectionController, textAnnotatedStringElement.selectionController);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iHashCode = (this.fontFamilyResolver.hashCode() + jn.c(this.style, this.text.hashCode() * 31, 31)) * 31;
        nl3<TextLayoutResult, j59> nl3Var = this.onTextLayout;
        int iC = (((tg.c((TextOverflow.m8969hashCodeimpl(this.overflow) + ((iHashCode + (nl3Var != null ? nl3Var.hashCode() : 0)) * 31)) * 31, 31, this.softWrap) + this.maxLines) * 31) + this.minLines) * 31;
        List<AnnotatedString.Range<Placeholder>> list = this.placeholders;
        int iHashCode2 = (iC + (list != null ? list.hashCode() : 0)) * 31;
        nl3<List<Rect>, j59> nl3Var2 = this.onPlaceholderLayout;
        int iHashCode3 = (iHashCode2 + (nl3Var2 != null ? nl3Var2.hashCode() : 0)) * 31;
        SelectionController selectionController = this.selectionController;
        int iHashCode4 = (iHashCode3 + (selectionController != null ? selectionController.hashCode() : 0)) * 31;
        ColorProducer colorProducer = this.color;
        int iHashCode5 = (iHashCode4 + (colorProducer != null ? colorProducer.hashCode() : 0)) * 31;
        nl3<TextAnnotatedStringNode.TextSubstitutionValue, j59> nl3Var3 = this.onShowTranslation;
        return iHashCode5 + (nl3Var3 != null ? nl3Var3.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(TextAnnotatedStringNode textAnnotatedStringNode) {
        textAnnotatedStringNode.doInvalidations(textAnnotatedStringNode.updateDraw(this.color, this.style), textAnnotatedStringNode.updateText$foundation(this.text), textAnnotatedStringNode.m2956updateLayoutRelatedArgsy0kMQk(this.style, this.placeholders, this.minLines, this.maxLines, this.softWrap, this.fontFamilyResolver, this.overflow, this.autoSize), textAnnotatedStringNode.updateCallbacks(this.onTextLayout, this.onPlaceholderLayout, this.selectionController, this.onShowTranslation));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, nl3<? super TextLayoutResult, j59> nl3Var, int i, boolean z, int i2, int i3, List<AnnotatedString.Range<Placeholder>> list, nl3<? super List<Rect>, j59> nl3Var2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, nl3<? super TextAnnotatedStringNode.TextSubstitutionValue, j59> nl3Var3) {
        this.text = annotatedString;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.onTextLayout = nl3Var;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.onPlaceholderLayout = nl3Var2;
        this.selectionController = selectionController;
        this.color = colorProducer;
        this.autoSize = textAutoSize;
        this.onShowTranslation = nl3Var3;
    }

    public /* synthetic */ TextAnnotatedStringElement(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, nl3 nl3Var, int i, boolean z, int i2, int i3, List list, nl3 nl3Var2, SelectionController selectionController, ColorProducer colorProducer, TextAutoSize textAutoSize, nl3 nl3Var3, jh2 jh2Var) {
        this(annotatedString, textStyle, resolver, nl3Var, i, z, i2, i3, list, nl3Var2, selectionController, colorProducer, textAutoSize, nl3Var3);
    }
}
