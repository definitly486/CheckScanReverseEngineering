package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldPreparedSelection extends BaseTextPreparedSelection<TextFieldPreparedSelection> {
    public static final int $stable = 8;
    private final TextFieldValue currentValue;
    private final TextLayoutResultProxy layoutResultProxy;

    public TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState) {
        super(textFieldValue.getAnnotatedString(), textFieldValue.m8741getSelectiond9O1mEE(), textLayoutResultProxy != null ? textLayoutResultProxy.getValue() : null, offsetMapping, textPreparedSelectionState, null);
        this.currentValue = textFieldValue;
        this.layoutResultProxy = textLayoutResultProxy;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    private final int jumpByPagesOffset(TextLayoutResultProxy textLayoutResultProxy, int i) {
        Rect zero;
        LayoutCoordinates innerTextFieldCoordinates = textLayoutResultProxy.getInnerTextFieldCoordinates();
        if (innerTextFieldCoordinates != null) {
            LayoutCoordinates decorationBoxCoordinates = textLayoutResultProxy.getDecorationBoxCoordinates();
            zero = decorationBoxCoordinates != null ? LayoutCoordinates.localBoundingBoxOf$default(decorationBoxCoordinates, innerTextFieldCoordinates, false, 2, null) : null;
            if (zero == null) {
                zero = Rect.Companion.getZero();
            }
        } else {
            zero = Rect.Companion.getZero();
        }
        Rect cursorRect = textLayoutResultProxy.getValue().getCursorRect(getOffsetMapping().originalToTransformed(TextRange.m8486getEndimpl(this.currentValue.m8741getSelectiond9O1mEE())));
        return getOffsetMapping().transformedToOriginal(textLayoutResultProxy.getValue().m8461getOffsetForPositionk4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(cursorRect.getLeft())) << 32) | (((long) Float.floatToRawIntBits((Float.intBitsToFloat((int) (zero.m6020getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * i) + cursorRect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
    }

    public final List<EditCommand> deleteIfSelectedOr(nl3<? super TextFieldPreparedSelection, ? extends EditCommand> nl3Var) {
        if (!TextRange.m8485getCollapsedimpl(m2962getSelectiond9O1mEE())) {
            return u96.i(new CommitTextCommand("", 0), new SetSelectionCommand(TextRange.m8489getMinimpl(m2962getSelectiond9O1mEE()), TextRange.m8489getMinimpl(m2962getSelectiond9O1mEE())));
        }
        EditCommand editCommandInvoke = nl3Var.invoke(this);
        if (editCommandInvoke != null) {
            return u96.h(editCommandInvoke);
        }
        return null;
    }

    public final TextFieldValue getCurrentValue() {
        return this.currentValue;
    }

    public final TextLayoutResultProxy getLayoutResultProxy() {
        return this.layoutResultProxy;
    }

    public final TextFieldValue getValue() {
        return TextFieldValue.m8736copy3r_uNRQ$default(this.currentValue, getAnnotatedString(), m2962getSelectiond9O1mEE(), (TextRange) null, 4, (Object) null);
    }

    public final TextFieldPreparedSelection moveCursorDownByPage() {
        TextLayoutResultProxy textLayoutResultProxy;
        if (getText$foundation().length() > 0 && (textLayoutResultProxy = this.layoutResultProxy) != null) {
            setCursor(jumpByPagesOffset(textLayoutResultProxy, 1));
        }
        return this;
    }

    public final TextFieldPreparedSelection moveCursorUpByPage() {
        TextLayoutResultProxy textLayoutResultProxy;
        if (getText$foundation().length() > 0 && (textLayoutResultProxy = this.layoutResultProxy) != null) {
            setCursor(jumpByPagesOffset(textLayoutResultProxy, -1));
        }
        return this;
    }

    public /* synthetic */ TextFieldPreparedSelection(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy, TextPreparedSelectionState textPreparedSelectionState, int i, jh2 jh2Var) {
        this(textFieldValue, (i & 2) != 0 ? OffsetMapping.Companion.getIdentity() : offsetMapping, textLayoutResultProxy, (i & 8) != 0 ? new TextPreparedSelectionState() : textPreparedSelectionState);
    }
}
