package androidx.compose.foundation.text;

import androidx.compose.foundation.text.TextFieldDelegate;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextPainter;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.jf;
import defpackage.jh2;
import defpackage.k39;
import defpackage.nl3;
import defpackage.r07;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldDelegate {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: drawHighlight-Le-punE, reason: not valid java name */
        private final void m2602drawHighlightLepunE(Canvas canvas, long j, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Paint paint) {
            int iOriginalToTransformed = offsetMapping.originalToTransformed(TextRange.m8489getMinimpl(j));
            int iOriginalToTransformed2 = offsetMapping.originalToTransformed(TextRange.m8488getMaximpl(j));
            if (iOriginalToTransformed != iOriginalToTransformed2) {
                canvas.drawPath(textLayoutResult.getPathForRange(iOriginalToTransformed, iOriginalToTransformed2), paint);
            }
        }

        /* JADX INFO: renamed from: layout-_EkL_-Y$foundation$default, reason: not valid java name */
        public static /* synthetic */ k39 m2603layout_EkL_Y$foundation$default(Companion companion, TextDelegate textDelegate, long j, LayoutDirection layoutDirection, TextLayoutResult textLayoutResult, int i, Object obj) {
            if ((i & 8) != 0) {
                textLayoutResult = null;
            }
            return companion.m2606layout_EkL_Y$foundation(textDelegate, j, layoutDirection, textLayoutResult);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final IntSize notifyFocusedRect$lambda$0(TextDelegate textDelegate) {
            return IntSize.m9205boximpl(TextFieldDelegateKt.computeSizeForDefaultText$default(textDelegate.getStyle(), textDelegate.getDensity(), textDelegate.getFontFamilyResolver(), null, 0, 24, null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final j59 restartInput$lambda$0(EditProcessor editProcessor, nl3 nl3Var, r07 r07Var, List list) {
            TextFieldDelegate.Companion.onEditCommand$foundation(list, editProcessor, nl3Var, (TextInputSession) r07Var.b);
            return j59.a;
        }

        /* JADX INFO: renamed from: applyCompositionDecoration-72CqOWE, reason: not valid java name */
        public final TransformedText m2604applyCompositionDecoration72CqOWE(long j, TransformedText transformedText) {
            int iOriginalToTransformed = transformedText.getOffsetMapping().originalToTransformed(TextRange.m8491getStartimpl(j));
            int iOriginalToTransformed2 = transformedText.getOffsetMapping().originalToTransformed(TextRange.m8486getEndimpl(j));
            int iMin = Math.min(iOriginalToTransformed, iOriginalToTransformed2);
            int iMax = Math.max(iOriginalToTransformed, iOriginalToTransformed2);
            AnnotatedString.Builder builder = new AnnotatedString.Builder(transformedText.getText());
            builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.Companion.getUnderline(), (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (jh2) null), iMin, iMax);
            return new TransformedText(builder.toAnnotatedString(), transformedText.getOffsetMapping());
        }

        /* JADX INFO: renamed from: draw-Q1vqE60$foundation, reason: not valid java name */
        public final void m2605drawQ1vqE60$foundation(Canvas canvas, TextFieldValue textFieldValue, long j, long j2, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Paint paint, long j3) {
            if (!TextRange.m8485getCollapsedimpl(j)) {
                paint.mo6108setColor8_81llA(j3);
                m2602drawHighlightLepunE(canvas, j, offsetMapping, textLayoutResult, paint);
            } else if (!TextRange.m8485getCollapsedimpl(j2)) {
                Color colorM6222boximpl = Color.m6222boximpl(textLayoutResult.getLayoutInput().getStyle().m8521getColor0d7_KjU());
                if (colorM6222boximpl.m6242unboximpl() == 16) {
                    colorM6222boximpl = null;
                }
                long jM6242unboximpl = colorM6222boximpl != null ? colorM6222boximpl.m6242unboximpl() : Color.Companion.m6258getBlack0d7_KjU();
                paint.mo6108setColor8_81llA(Color.m6231copywmQWz5c$default(jM6242unboximpl, Color.m6234getAlphaimpl(jM6242unboximpl) * 0.2f, 0.0f, 0.0f, 0.0f, 14, null));
                m2602drawHighlightLepunE(canvas, j2, offsetMapping, textLayoutResult, paint);
            } else if (!TextRange.m8485getCollapsedimpl(textFieldValue.m8741getSelectiond9O1mEE())) {
                paint.mo6108setColor8_81llA(j3);
                m2602drawHighlightLepunE(canvas, textFieldValue.m8741getSelectiond9O1mEE(), offsetMapping, textLayoutResult, paint);
            }
            TextPainter.INSTANCE.paint(canvas, textLayoutResult);
        }

        /* JADX INFO: renamed from: layout-_EkL_-Y$foundation, reason: not valid java name */
        public final k39<Integer, Integer, TextLayoutResult> m2606layout_EkL_Y$foundation(TextDelegate textDelegate, long j, LayoutDirection layoutDirection, TextLayoutResult textLayoutResult) {
            TextLayoutResult textLayoutResultM2593layoutNN6EwU = textDelegate.m2593layoutNN6EwU(j, layoutDirection, textLayoutResult);
            return new k39<>(Integer.valueOf((int) (textLayoutResultM2593layoutNN6EwU.m8462getSizeYbymL2g() >> 32)), Integer.valueOf((int) (textLayoutResultM2593layoutNN6EwU.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), textLayoutResultM2593layoutNN6EwU);
        }

        public final void notifyFocusedRect$foundation(TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, TextInputSession textInputSession, boolean z, OffsetMapping offsetMapping) {
            if (z) {
                textInputSession.notifyFocusedRect(TextFieldDelegateKt.focusedRectInRoot(textLayoutResult, layoutCoordinates, offsetMapping.originalToTransformed(TextRange.m8488getMaximpl(textFieldValue.m8741getSelectiond9O1mEE())), new jf(textDelegate, 5)));
            }
        }

        public final void onBlur$foundation(TextInputSession textInputSession, EditProcessor editProcessor, nl3<? super TextFieldValue, j59> nl3Var) {
            nl3Var.invoke(TextFieldValue.m8736copy3r_uNRQ$default(editProcessor.toTextFieldValue(), (AnnotatedString) null, 0L, (TextRange) null, 3, (Object) null));
            textInputSession.dispose();
        }

        public final void onEditCommand$foundation(List<? extends EditCommand> list, EditProcessor editProcessor, nl3<? super TextFieldValue, j59> nl3Var, TextInputSession textInputSession) {
            TextFieldValue textFieldValueApply = editProcessor.apply(list);
            if (textInputSession != null) {
                textInputSession.updateState(null, textFieldValueApply);
            }
            nl3Var.invoke(textFieldValueApply);
        }

        public final TextInputSession onFocus$foundation(TextInputService textInputService, TextFieldValue textFieldValue, EditProcessor editProcessor, ImeOptions imeOptions, nl3<? super TextFieldValue, j59> nl3Var, nl3<? super ImeAction, j59> nl3Var2) {
            return restartInput$foundation(textInputService, textFieldValue, editProcessor, imeOptions, nl3Var, nl3Var2);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.compose.ui.text.input.TextInputSession] */
        public final TextInputSession restartInput$foundation(TextInputService textInputService, TextFieldValue textFieldValue, final EditProcessor editProcessor, ImeOptions imeOptions, final nl3<? super TextFieldValue, j59> nl3Var, nl3<? super ImeAction, j59> nl3Var2) {
            final r07 r07Var = new r07();
            ?? StartInput = textInputService.startInput(textFieldValue, imeOptions, new nl3() { // from class: uq8
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return TextFieldDelegate.Companion.restartInput$lambda$0(editProcessor, nl3Var, r07Var, (List) obj);
                }
            }, nl3Var2);
            r07Var.b = StartInput;
            return StartInput;
        }

        /* JADX INFO: renamed from: setCursorOffset-ULxng0E$foundation, reason: not valid java name */
        public final void m2607setCursorOffsetULxng0E$foundation(long j, TextLayoutResultProxy textLayoutResultProxy, EditProcessor editProcessor, OffsetMapping offsetMapping, nl3<? super TextFieldValue, j59> nl3Var) {
            nl3Var.invoke(TextFieldValue.m8736copy3r_uNRQ$default(editProcessor.toTextFieldValue(), (AnnotatedString) null, TextRangeKt.TextRange(offsetMapping.transformedToOriginal(TextLayoutResultProxy.m2627getOffsetForPosition3MmeM6k$default(textLayoutResultProxy, j, false, 2, null))), (TextRange) null, 5, (Object) null));
        }

        public final void updateTextLayoutResult$foundation(TextInputSession textInputSession, TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy) {
            LayoutCoordinates decorationBoxCoordinates;
            final LayoutCoordinates innerTextFieldCoordinates = textLayoutResultProxy.getInnerTextFieldCoordinates();
            if (innerTextFieldCoordinates == null || !innerTextFieldCoordinates.isAttached() || (decorationBoxCoordinates = textLayoutResultProxy.getDecorationBoxCoordinates()) == null) {
                return;
            }
            textInputSession.updateTextLayoutResult(textFieldValue, offsetMapping, textLayoutResultProxy.getValue(), new nl3<Matrix, j59>() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Matrix matrix) {
                    m2608invoke58bKbWc(matrix.m6499unboximpl());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-58bKbWc, reason: not valid java name */
                public final void m2608invoke58bKbWc(float[] fArr) {
                    if (innerTextFieldCoordinates.isAttached()) {
                        LayoutCoordinatesKt.findRootCoordinates(innerTextFieldCoordinates).mo7717transformFromEL8BTi8(innerTextFieldCoordinates, fArr);
                    }
                }
            }, SelectionManagerKt.visibleBounds(innerTextFieldCoordinates), innerTextFieldCoordinates.localBoundingBoxOf(decorationBoxCoordinates, false));
        }

        private Companion() {
        }
    }
}
