package androidx.compose.foundation.text.input.internal;

import android.os.CancellationSignal;
import android.view.inputmethod.DeleteGesture;
import android.view.inputmethod.DeleteRangeGesture;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InsertGesture;
import android.view.inputmethod.JoinOrSplitGesture;
import android.view.inputmethod.PreviewableHandwritingGesture;
import android.view.inputmethod.RemoveSpaceGesture;
import android.view.inputmethod.SelectGesture;
import android.view.inputmethod.SelectRangeGesture;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.TextHighlightType;
import androidx.compose.foundation.text.input.internal.HandwritingGestureApi34;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextGranularity;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import defpackage.g17;
import defpackage.hg;
import defpackage.ig;
import defpackage.j59;
import defpackage.jg;
import defpackage.ji3;
import defpackage.kg;
import defpackage.lg;
import defpackage.ll3;
import defpackage.mg;
import defpackage.ng;
import defpackage.nl3;
import defpackage.og;
import defpackage.p07;
import defpackage.pg;
import defpackage.qg;
import defpackage.r15;
import defpackage.rg;
import defpackage.sg;
import defpackage.tg;
import defpackage.ug;

/* JADX INFO: loaded from: classes.dex */
public final class HandwritingGestureApi34 {
    public static final int $stable = 0;
    public static final HandwritingGestureApi34 INSTANCE = new HandwritingGestureApi34();

    private HandwritingGestureApi34() {
    }

    private final int fallback(TransformedTextFieldState transformedTextFieldState, HandwritingGesture handwritingGesture) {
        TextFieldState textFieldState = transformedTextFieldState.textFieldState;
        InputTransformation inputTransformation = transformedTextFieldState.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        mainBuffer$foundation.clearHighlight$foundation();
        transformedTextFieldState.updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
        String fallbackText = handwritingGesture.getFallbackText();
        if (fallbackText == null) {
            return 3;
        }
        TransformedTextFieldState.replaceSelectedText$default(transformedTextFieldState, fallbackText, true, null, false, 12, null);
        return 5;
    }

    private final int fallbackOnLegacyTextField(HandwritingGesture handwritingGesture, nl3<? super EditCommand, j59> nl3Var) {
        String fallbackText = handwritingGesture.getFallbackText();
        if (fallbackText == null) {
            return 3;
        }
        nl3Var.invoke(new CommitTextCommand(fallbackText, 1));
        return 5;
    }

    /* JADX INFO: renamed from: highlightRange-XJREzCE, reason: not valid java name */
    private final void m2706highlightRangeXJREzCE(TransformedTextFieldState transformedTextFieldState, long j, int i) {
        if (!TextRange.m8485getCollapsedimpl(j)) {
            transformedTextFieldState.m2832highlightCharsIn7RAjNK8(i, j);
            return;
        }
        TextFieldState textFieldState = transformedTextFieldState.textFieldState;
        InputTransformation inputTransformation = transformedTextFieldState.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        mainBuffer$foundation.clearHighlight$foundation();
        transformedTextFieldState.updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    private final int performDeleteGesture(LegacyTextFieldState legacyTextFieldState, DeleteGesture deleteGesture, AnnotatedString annotatedString, nl3<? super EditCommand, j59> nl3Var) {
        int iM2710toTextGranularityNUwxegE = m2710toTextGranularityNUwxegE(deleteGesture.getGranularity());
        long jM2727getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m2727getRangeForScreenRectOH9lIzo(legacyTextFieldState, RectHelper_androidKt.toComposeRect(deleteGesture.getDeletionArea()), iM2710toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2727getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallbackOnLegacyTextField(deleteGesture, nl3Var);
        }
        m2708performDeletionOnLegacyTextFieldvJH6DeI(jM2727getRangeForScreenRectOH9lIzo, annotatedString, TextGranularity.m8449equalsimpl0(iM2710toTextGranularityNUwxegE, TextGranularity.Companion.m8454getWordDRrd7Zo()), nl3Var);
        return 1;
    }

    private final int performDeleteRangeGesture(LegacyTextFieldState legacyTextFieldState, DeleteRangeGesture deleteRangeGesture, AnnotatedString annotatedString, nl3<? super EditCommand, j59> nl3Var) {
        int iM2710toTextGranularityNUwxegE = m2710toTextGranularityNUwxegE(deleteRangeGesture.getGranularity());
        long jM2729getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m2729getRangeForScreenRectsO048IG0(legacyTextFieldState, RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionStartArea()), RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionEndArea()), iM2710toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2729getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallbackOnLegacyTextField(deleteRangeGesture, nl3Var);
        }
        m2708performDeletionOnLegacyTextFieldvJH6DeI(jM2729getRangeForScreenRectsO048IG0, annotatedString, TextGranularity.m8449equalsimpl0(iM2710toTextGranularityNUwxegE, TextGranularity.Companion.m8454getWordDRrd7Zo()), nl3Var);
        return 1;
    }

    /* JADX INFO: renamed from: performDeletion-Sb-Bc2M, reason: not valid java name */
    private final void m2707performDeletionSbBc2M(TransformedTextFieldState transformedTextFieldState, long j, boolean z) {
        if (z) {
            j = HandwritingGesture_androidKt.m2719adjustHandwritingDeleteGestureRange72CqOWE(j, transformedTextFieldState.getVisualText());
        }
        TransformedTextFieldState.m2830replaceTextM8tDOmk$default(transformedTextFieldState, "", j, null, false, 12, null);
    }

    /* JADX INFO: renamed from: performDeletionOnLegacyTextField-vJH6DeI, reason: not valid java name */
    private final void m2708performDeletionOnLegacyTextFieldvJH6DeI(long j, AnnotatedString annotatedString, boolean z, nl3<? super EditCommand, j59> nl3Var) {
        if (z) {
            j = HandwritingGesture_androidKt.m2719adjustHandwritingDeleteGestureRange72CqOWE(j, annotatedString);
        }
        nl3Var.invoke(HandwritingGesture_androidKt.compoundEditCommand(new SetSelectionCommand(TextRange.m8486getEndimpl(j), TextRange.m8486getEndimpl(j)), new DeleteSurroundingTextCommand(TextRange.m8487getLengthimpl(j), 0)));
    }

    private final int performInsertGesture(LegacyTextFieldState legacyTextFieldState, InsertGesture insertGesture, ViewConfiguration viewConfiguration, nl3<? super EditCommand, j59> nl3Var) {
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        if (viewConfiguration == null) {
            return fallbackOnLegacyTextField(insertGesture, nl3Var);
        }
        int iM2722getOffsetForHandwritingGestured4ec7I = HandwritingGesture_androidKt.m2722getOffsetForHandwritingGestured4ec7I(legacyTextFieldState, HandwritingGesture_androidKt.toOffset(insertGesture.getInsertionPoint()), viewConfiguration);
        if (iM2722getOffsetForHandwritingGestured4ec7I == -1 || !((layoutResult = legacyTextFieldState.getLayoutResult()) == null || (value = layoutResult.getValue()) == null || !HandwritingGesture_androidKt.isBiDiBoundary(value, iM2722getOffsetForHandwritingGestured4ec7I))) {
            return fallbackOnLegacyTextField(insertGesture, nl3Var);
        }
        performInsertionOnLegacyTextField(iM2722getOffsetForHandwritingGestured4ec7I, insertGesture.getTextToInsert(), nl3Var);
        return 1;
    }

    private final void performInsertionOnLegacyTextField(int i, String str, nl3<? super EditCommand, j59> nl3Var) {
        nl3Var.invoke(HandwritingGesture_androidKt.compoundEditCommand(new SetSelectionCommand(i, i), new CommitTextCommand(str, 1)));
    }

    private final int performJoinOrSplitGesture(TransformedTextFieldState transformedTextFieldState, JoinOrSplitGesture joinOrSplitGesture, TextLayoutState textLayoutState, ViewConfiguration viewConfiguration) {
        TextLayoutResult layoutResult;
        if (transformedTextFieldState.getOutputText() != transformedTextFieldState.getUntransformedText()) {
            return 3;
        }
        int iM2723getOffsetForHandwritingGestured4ec7I = HandwritingGesture_androidKt.m2723getOffsetForHandwritingGestured4ec7I(textLayoutState, HandwritingGesture_androidKt.toOffset(joinOrSplitGesture.getJoinOrSplitPoint()), viewConfiguration);
        if (iM2723getOffsetForHandwritingGestured4ec7I == -1 || ((layoutResult = textLayoutState.getLayoutResult()) != null && HandwritingGesture_androidKt.isBiDiBoundary(layoutResult, iM2723getOffsetForHandwritingGestured4ec7I))) {
            return fallback(transformedTextFieldState, joinOrSplitGesture);
        }
        long jRangeOfWhitespaces = HandwritingGesture_androidKt.rangeOfWhitespaces(transformedTextFieldState.getVisualText(), iM2723getOffsetForHandwritingGestured4ec7I);
        if (TextRange.m8485getCollapsedimpl(jRangeOfWhitespaces)) {
            TransformedTextFieldState.m2830replaceTextM8tDOmk$default(transformedTextFieldState, " ", jRangeOfWhitespaces, null, false, 12, null);
        } else {
            m2707performDeletionSbBc2M(transformedTextFieldState, jRangeOfWhitespaces, false);
        }
        return 1;
    }

    private final int performRemoveSpaceGesture(LegacyTextFieldState legacyTextFieldState, RemoveSpaceGesture removeSpaceGesture, AnnotatedString annotatedString, ViewConfiguration viewConfiguration, nl3<? super EditCommand, j59> nl3Var) {
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        long jM2725getRangeForRemoveSpaceGesture5iVPX68 = HandwritingGesture_androidKt.m2725getRangeForRemoveSpaceGesture5iVPX68(layoutResult != null ? layoutResult.getValue() : null, HandwritingGesture_androidKt.toOffset(removeSpaceGesture.getStartPoint()), HandwritingGesture_androidKt.toOffset(removeSpaceGesture.getEndPoint()), legacyTextFieldState.getLayoutCoordinates(), viewConfiguration);
        if (TextRange.m8485getCollapsedimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68)) {
            return INSTANCE.fallbackOnLegacyTextField(removeSpaceGesture, nl3Var);
        }
        p07 p07Var = new p07();
        p07Var.b = -1;
        p07 p07Var2 = new p07();
        p07Var2.b = -1;
        String strF = new g17("\\s+").f(TextRangeKt.m8498substringFDrldGo(annotatedString, jM2725getRangeForRemoveSpaceGesture5iVPX68), new ji3(1, p07Var, p07Var2));
        if (p07Var.b == -1 || p07Var2.b == -1) {
            return fallbackOnLegacyTextField(removeSpaceGesture, nl3Var);
        }
        nl3Var.invoke(HandwritingGesture_androidKt.compoundEditCommand(new SetSelectionCommand(TextRange.m8491getStartimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68) + p07Var.b, TextRange.m8491getStartimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68) + p07Var2.b), new CommitTextCommand(strF.substring(p07Var.b, strF.length() - (TextRange.m8487getLengthimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68) - p07Var2.b)), 1)));
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence performRemoveSpaceGesture$lambda$1(p07 p07Var, p07 p07Var2, r15 r15Var) {
        if (p07Var.b == -1) {
            p07Var.b = r15Var.getRange().b;
        }
        p07Var2.b = r15Var.getRange().c + 1;
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence performRemoveSpaceGesture$lambda$3(p07 p07Var, p07 p07Var2, r15 r15Var) {
        if (p07Var.b == -1) {
            p07Var.b = r15Var.getRange().b;
        }
        p07Var2.b = r15Var.getRange().c + 1;
        return "";
    }

    private final int performSelectGesture(TransformedTextFieldState transformedTextFieldState, SelectGesture selectGesture, TextLayoutState textLayoutState, ll3<j59> ll3Var) {
        long jM2728getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m2728getRangeForScreenRectOH9lIzo(textLayoutState, RectHelper_androidKt.toComposeRect(selectGesture.getSelectionArea()), m2710toTextGranularityNUwxegE(selectGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2728getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallback(transformedTextFieldState, selectGesture);
        }
        transformedTextFieldState.m2838selectCharsIn5zctL8(jM2728getRangeForScreenRectOH9lIzo);
        if (ll3Var == null) {
            return 1;
        }
        ll3Var.invoke();
        return 1;
    }

    private final int performSelectRangeGesture(TransformedTextFieldState transformedTextFieldState, SelectRangeGesture selectRangeGesture, TextLayoutState textLayoutState, ll3<j59> ll3Var) {
        long jM2730getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m2730getRangeForScreenRectsO048IG0(textLayoutState, RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionStartArea()), RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionEndArea()), m2710toTextGranularityNUwxegE(selectRangeGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2730getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallback(transformedTextFieldState, selectRangeGesture);
        }
        transformedTextFieldState.m2838selectCharsIn5zctL8(jM2730getRangeForScreenRectsO048IG0);
        if (ll3Var == null) {
            return 1;
        }
        ll3Var.invoke();
        return 1;
    }

    /* JADX INFO: renamed from: performSelectionOnLegacyTextField-8ffj60Q, reason: not valid java name */
    private final void m2709performSelectionOnLegacyTextField8ffj60Q(long j, TextFieldSelectionManager textFieldSelectionManager, nl3<? super EditCommand, j59> nl3Var) {
        nl3Var.invoke(new SetSelectionCommand(TextRange.m8491getStartimpl(j), TextRange.m8486getEndimpl(j)));
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.enterSelectionMode$foundation(true);
        }
    }

    private final void previewDeleteGesture(TransformedTextFieldState transformedTextFieldState, DeleteGesture deleteGesture, TextLayoutState textLayoutState) {
        m2706highlightRangeXJREzCE(transformedTextFieldState, HandwritingGesture_androidKt.m2728getRangeForScreenRectOH9lIzo(textLayoutState, RectHelper_androidKt.toComposeRect(deleteGesture.getDeletionArea()), m2710toTextGranularityNUwxegE(deleteGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()), TextHighlightType.Companion.m2678getHandwritingDeletePreviewsxJuwY());
    }

    private final void previewDeleteRangeGesture(TransformedTextFieldState transformedTextFieldState, DeleteRangeGesture deleteRangeGesture, TextLayoutState textLayoutState) {
        m2706highlightRangeXJREzCE(transformedTextFieldState, HandwritingGesture_androidKt.m2730getRangeForScreenRectsO048IG0(textLayoutState, RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionStartArea()), RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionEndArea()), m2710toTextGranularityNUwxegE(deleteRangeGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()), TextHighlightType.Companion.m2678getHandwritingDeletePreviewsxJuwY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void previewHandwritingGesture$lambda$0(TransformedTextFieldState transformedTextFieldState) {
        TextFieldState textFieldState = transformedTextFieldState.textFieldState;
        InputTransformation inputTransformation = transformedTextFieldState.inputTransformation;
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
        TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
        mainBuffer$foundation.clearHighlight$foundation();
        transformedTextFieldState.updateWedgeAffinity(mainBuffer$foundation);
        textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
        textFieldState.setUserCommit(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void previewHandwritingGesture$lambda$1(TextFieldSelectionManager textFieldSelectionManager) {
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.clearPreviewHighlight$foundation();
        }
    }

    private final void previewSelectGesture(TransformedTextFieldState transformedTextFieldState, SelectGesture selectGesture, TextLayoutState textLayoutState) {
        m2706highlightRangeXJREzCE(transformedTextFieldState, HandwritingGesture_androidKt.m2728getRangeForScreenRectOH9lIzo(textLayoutState, RectHelper_androidKt.toComposeRect(selectGesture.getSelectionArea()), m2710toTextGranularityNUwxegE(selectGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()), TextHighlightType.Companion.m2679getHandwritingSelectPreviewsxJuwY());
    }

    private final void previewSelectRangeGesture(TransformedTextFieldState transformedTextFieldState, SelectRangeGesture selectRangeGesture, TextLayoutState textLayoutState) {
        m2706highlightRangeXJREzCE(transformedTextFieldState, HandwritingGesture_androidKt.m2730getRangeForScreenRectsO048IG0(textLayoutState, RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionStartArea()), RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionEndArea()), m2710toTextGranularityNUwxegE(selectRangeGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()), TextHighlightType.Companion.m2679getHandwritingSelectPreviewsxJuwY());
    }

    /* JADX INFO: renamed from: toTextGranularity-NUwxegE, reason: not valid java name */
    private final int m2710toTextGranularityNUwxegE(int i) {
        if (i != 1) {
            return i != 2 ? TextGranularity.Companion.m8453getCharacterDRrd7Zo() : TextGranularity.Companion.m8453getCharacterDRrd7Zo();
        }
        return TextGranularity.Companion.m8454getWordDRrd7Zo();
    }

    public final int performHandwritingGesture$foundation(LegacyTextFieldState legacyTextFieldState, HandwritingGesture handwritingGesture, TextFieldSelectionManager textFieldSelectionManager, ViewConfiguration viewConfiguration, nl3<? super EditCommand, j59> nl3Var) {
        TextLayoutResult value;
        TextLayoutInput layoutInput;
        AnnotatedString untransformedText = legacyTextFieldState.getUntransformedText();
        if (untransformedText == null) {
            return 3;
        }
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (!untransformedText.equals((layoutResult == null || (value = layoutResult.getValue()) == null || (layoutInput = value.getLayoutInput()) == null) ? null : layoutInput.getText())) {
            return 3;
        }
        if (hg.e(handwritingGesture)) {
            return performSelectGesture(legacyTextFieldState, qg.d(handwritingGesture), textFieldSelectionManager, nl3Var);
        }
        if (rg.i(handwritingGesture)) {
            return performDeleteGesture(legacyTextFieldState, sg.c(handwritingGesture), untransformedText, nl3Var);
        }
        if (tg.f(handwritingGesture)) {
            return performSelectRangeGesture(legacyTextFieldState, ug.e(handwritingGesture), textFieldSelectionManager, nl3Var);
        }
        if (ig.e(handwritingGesture)) {
            return performDeleteRangeGesture(legacyTextFieldState, jg.c(handwritingGesture), untransformedText, nl3Var);
        }
        if (kg.g(handwritingGesture)) {
            return performJoinOrSplitGesture(legacyTextFieldState, lg.e(handwritingGesture), untransformedText, viewConfiguration, nl3Var);
        }
        if (mg.f(handwritingGesture)) {
            return performInsertGesture(legacyTextFieldState, ng.c(handwritingGesture), viewConfiguration, nl3Var);
        }
        if (og.f(handwritingGesture)) {
            return performRemoveSpaceGesture(legacyTextFieldState, pg.e(handwritingGesture), untransformedText, viewConfiguration, nl3Var);
        }
        return 2;
    }

    public final boolean previewHandwritingGesture$foundation(LegacyTextFieldState legacyTextFieldState, PreviewableHandwritingGesture previewableHandwritingGesture, final TextFieldSelectionManager textFieldSelectionManager, CancellationSignal cancellationSignal) {
        TextLayoutResult value;
        TextLayoutInput layoutInput;
        AnnotatedString untransformedText = legacyTextFieldState.getUntransformedText();
        if (untransformedText == null) {
            return false;
        }
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (!untransformedText.equals((layoutResult == null || (value = layoutResult.getValue()) == null || (layoutInput = value.getLayoutInput()) == null) ? null : layoutInput.getText())) {
            return false;
        }
        if (hg.e(previewableHandwritingGesture)) {
            previewSelectGesture(legacyTextFieldState, qg.d(previewableHandwritingGesture), textFieldSelectionManager);
        } else if (rg.i(previewableHandwritingGesture)) {
            previewDeleteGesture(legacyTextFieldState, sg.c(previewableHandwritingGesture), textFieldSelectionManager);
        } else if (tg.f(previewableHandwritingGesture)) {
            previewSelectRangeGesture(legacyTextFieldState, ug.e(previewableHandwritingGesture), textFieldSelectionManager);
        } else {
            if (!ig.e(previewableHandwritingGesture)) {
                return false;
            }
            previewDeleteRangeGesture(legacyTextFieldState, jg.c(previewableHandwritingGesture), textFieldSelectionManager);
        }
        if (cancellationSignal == null) {
            return true;
        }
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: ou3
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                HandwritingGestureApi34.previewHandwritingGesture$lambda$1(textFieldSelectionManager);
            }
        });
        return true;
    }

    private final void previewDeleteGesture(LegacyTextFieldState legacyTextFieldState, DeleteGesture deleteGesture, TextFieldSelectionManager textFieldSelectionManager) {
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.m3043setDeletionPreviewHighlight5zctL8$foundation(HandwritingGesture_androidKt.m2727getRangeForScreenRectOH9lIzo(legacyTextFieldState, RectHelper_androidKt.toComposeRect(deleteGesture.getDeletionArea()), m2710toTextGranularityNUwxegE(deleteGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()));
        }
    }

    private final void previewSelectGesture(LegacyTextFieldState legacyTextFieldState, SelectGesture selectGesture, TextFieldSelectionManager textFieldSelectionManager) {
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.m3045setSelectionPreviewHighlight5zctL8$foundation(HandwritingGesture_androidKt.m2727getRangeForScreenRectOH9lIzo(legacyTextFieldState, RectHelper_androidKt.toComposeRect(selectGesture.getSelectionArea()), m2710toTextGranularityNUwxegE(selectGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()));
        }
    }

    private final void previewDeleteRangeGesture(LegacyTextFieldState legacyTextFieldState, DeleteRangeGesture deleteRangeGesture, TextFieldSelectionManager textFieldSelectionManager) {
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.m3043setDeletionPreviewHighlight5zctL8$foundation(HandwritingGesture_androidKt.m2729getRangeForScreenRectsO048IG0(legacyTextFieldState, RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionStartArea()), RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionEndArea()), m2710toTextGranularityNUwxegE(deleteRangeGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()));
        }
    }

    private final void previewSelectRangeGesture(LegacyTextFieldState legacyTextFieldState, SelectRangeGesture selectRangeGesture, TextFieldSelectionManager textFieldSelectionManager) {
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.m3045setSelectionPreviewHighlight5zctL8$foundation(HandwritingGesture_androidKt.m2729getRangeForScreenRectsO048IG0(legacyTextFieldState, RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionStartArea()), RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionEndArea()), m2710toTextGranularityNUwxegE(selectRangeGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter()));
        }
    }

    private final int performSelectGesture(LegacyTextFieldState legacyTextFieldState, SelectGesture selectGesture, TextFieldSelectionManager textFieldSelectionManager, nl3<? super EditCommand, j59> nl3Var) {
        long jM2727getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m2727getRangeForScreenRectOH9lIzo(legacyTextFieldState, RectHelper_androidKt.toComposeRect(selectGesture.getSelectionArea()), m2710toTextGranularityNUwxegE(selectGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2727getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallbackOnLegacyTextField(selectGesture, nl3Var);
        }
        m2709performSelectionOnLegacyTextField8ffj60Q(jM2727getRangeForScreenRectOH9lIzo, textFieldSelectionManager, nl3Var);
        return 1;
    }

    private final int performInsertGesture(TransformedTextFieldState transformedTextFieldState, InsertGesture insertGesture, TextLayoutState textLayoutState, ViewConfiguration viewConfiguration) {
        int iM2723getOffsetForHandwritingGestured4ec7I = HandwritingGesture_androidKt.m2723getOffsetForHandwritingGestured4ec7I(textLayoutState, HandwritingGesture_androidKt.toOffset(insertGesture.getInsertionPoint()), viewConfiguration);
        if (iM2723getOffsetForHandwritingGestured4ec7I == -1) {
            return fallback(transformedTextFieldState, insertGesture);
        }
        TransformedTextFieldState.m2830replaceTextM8tDOmk$default(transformedTextFieldState, insertGesture.getTextToInsert(), TextRangeKt.TextRange(iM2723getOffsetForHandwritingGestured4ec7I), null, false, 12, null);
        return 1;
    }

    private final int performDeleteGesture(TransformedTextFieldState transformedTextFieldState, DeleteGesture deleteGesture, TextLayoutState textLayoutState) {
        int iM2710toTextGranularityNUwxegE = m2710toTextGranularityNUwxegE(deleteGesture.getGranularity());
        long jM2728getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m2728getRangeForScreenRectOH9lIzo(textLayoutState, RectHelper_androidKt.toComposeRect(deleteGesture.getDeletionArea()), iM2710toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2728getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallback(transformedTextFieldState, deleteGesture);
        }
        m2707performDeletionSbBc2M(transformedTextFieldState, jM2728getRangeForScreenRectOH9lIzo, TextGranularity.m8449equalsimpl0(iM2710toTextGranularityNUwxegE, TextGranularity.Companion.m8454getWordDRrd7Zo()));
        return 1;
    }

    private final int performSelectRangeGesture(LegacyTextFieldState legacyTextFieldState, SelectRangeGesture selectRangeGesture, TextFieldSelectionManager textFieldSelectionManager, nl3<? super EditCommand, j59> nl3Var) {
        long jM2729getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m2729getRangeForScreenRectsO048IG0(legacyTextFieldState, RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionStartArea()), RectHelper_androidKt.toComposeRect(selectRangeGesture.getSelectionEndArea()), m2710toTextGranularityNUwxegE(selectRangeGesture.getGranularity()), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2729getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallbackOnLegacyTextField(selectRangeGesture, nl3Var);
        }
        m2709performSelectionOnLegacyTextField8ffj60Q(jM2729getRangeForScreenRectsO048IG0, textFieldSelectionManager, nl3Var);
        return 1;
    }

    private final int performDeleteRangeGesture(TransformedTextFieldState transformedTextFieldState, DeleteRangeGesture deleteRangeGesture, TextLayoutState textLayoutState) {
        int iM2710toTextGranularityNUwxegE = m2710toTextGranularityNUwxegE(deleteRangeGesture.getGranularity());
        long jM2730getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m2730getRangeForScreenRectsO048IG0(textLayoutState, RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionStartArea()), RectHelper_androidKt.toComposeRect(deleteRangeGesture.getDeletionEndArea()), iM2710toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m8485getCollapsedimpl(jM2730getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallback(transformedTextFieldState, deleteRangeGesture);
        }
        m2707performDeletionSbBc2M(transformedTextFieldState, jM2730getRangeForScreenRectsO048IG0, TextGranularity.m8449equalsimpl0(iM2710toTextGranularityNUwxegE, TextGranularity.Companion.m8454getWordDRrd7Zo()));
        return 1;
    }

    private final int performJoinOrSplitGesture(LegacyTextFieldState legacyTextFieldState, JoinOrSplitGesture joinOrSplitGesture, AnnotatedString annotatedString, ViewConfiguration viewConfiguration, nl3<? super EditCommand, j59> nl3Var) {
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        if (viewConfiguration == null) {
            return fallbackOnLegacyTextField(joinOrSplitGesture, nl3Var);
        }
        int iM2722getOffsetForHandwritingGestured4ec7I = HandwritingGesture_androidKt.m2722getOffsetForHandwritingGestured4ec7I(legacyTextFieldState, HandwritingGesture_androidKt.toOffset(joinOrSplitGesture.getJoinOrSplitPoint()), viewConfiguration);
        if (iM2722getOffsetForHandwritingGestured4ec7I != -1 && ((layoutResult = legacyTextFieldState.getLayoutResult()) == null || (value = layoutResult.getValue()) == null || !HandwritingGesture_androidKt.isBiDiBoundary(value, iM2722getOffsetForHandwritingGestured4ec7I))) {
            long jRangeOfWhitespaces = HandwritingGesture_androidKt.rangeOfWhitespaces(annotatedString, iM2722getOffsetForHandwritingGestured4ec7I);
            if (TextRange.m8485getCollapsedimpl(jRangeOfWhitespaces)) {
                performInsertionOnLegacyTextField(TextRange.m8491getStartimpl(jRangeOfWhitespaces), " ", nl3Var);
            } else {
                m2708performDeletionOnLegacyTextFieldvJH6DeI(jRangeOfWhitespaces, annotatedString, false, nl3Var);
            }
            return 1;
        }
        return fallbackOnLegacyTextField(joinOrSplitGesture, nl3Var);
    }

    public final boolean previewHandwritingGesture$foundation(final TransformedTextFieldState transformedTextFieldState, PreviewableHandwritingGesture previewableHandwritingGesture, TextLayoutState textLayoutState, CancellationSignal cancellationSignal) {
        if (hg.e(previewableHandwritingGesture)) {
            previewSelectGesture(transformedTextFieldState, qg.d(previewableHandwritingGesture), textLayoutState);
        } else if (rg.i(previewableHandwritingGesture)) {
            previewDeleteGesture(transformedTextFieldState, sg.c(previewableHandwritingGesture), textLayoutState);
        } else if (tg.f(previewableHandwritingGesture)) {
            previewSelectRangeGesture(transformedTextFieldState, ug.e(previewableHandwritingGesture), textLayoutState);
        } else {
            if (!ig.e(previewableHandwritingGesture)) {
                return false;
            }
            previewDeleteRangeGesture(transformedTextFieldState, jg.c(previewableHandwritingGesture), textLayoutState);
        }
        if (cancellationSignal == null) {
            return true;
        }
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: nu3
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                HandwritingGestureApi34.previewHandwritingGesture$lambda$0(transformedTextFieldState);
            }
        });
        return true;
    }

    public final int performHandwritingGesture$foundation(TransformedTextFieldState transformedTextFieldState, HandwritingGesture handwritingGesture, TextLayoutState textLayoutState, ll3<j59> ll3Var, ViewConfiguration viewConfiguration) {
        if (hg.e(handwritingGesture)) {
            return performSelectGesture(transformedTextFieldState, qg.d(handwritingGesture), textLayoutState, ll3Var);
        }
        if (rg.i(handwritingGesture)) {
            return performDeleteGesture(transformedTextFieldState, sg.c(handwritingGesture), textLayoutState);
        }
        if (tg.f(handwritingGesture)) {
            return performSelectRangeGesture(transformedTextFieldState, ug.e(handwritingGesture), textLayoutState, ll3Var);
        }
        if (ig.e(handwritingGesture)) {
            return performDeleteRangeGesture(transformedTextFieldState, jg.c(handwritingGesture), textLayoutState);
        }
        if (kg.g(handwritingGesture)) {
            return performJoinOrSplitGesture(transformedTextFieldState, lg.e(handwritingGesture), textLayoutState, viewConfiguration);
        }
        if (mg.f(handwritingGesture)) {
            return performInsertGesture(transformedTextFieldState, ng.c(handwritingGesture), textLayoutState, viewConfiguration);
        }
        if (og.f(handwritingGesture)) {
            return performRemoveSpaceGesture(transformedTextFieldState, pg.e(handwritingGesture), textLayoutState, viewConfiguration);
        }
        return 2;
    }

    private final int performRemoveSpaceGesture(TransformedTextFieldState transformedTextFieldState, RemoveSpaceGesture removeSpaceGesture, TextLayoutState textLayoutState, ViewConfiguration viewConfiguration) {
        long jM2725getRangeForRemoveSpaceGesture5iVPX68 = HandwritingGesture_androidKt.m2725getRangeForRemoveSpaceGesture5iVPX68(textLayoutState.getLayoutResult(), HandwritingGesture_androidKt.toOffset(removeSpaceGesture.getStartPoint()), HandwritingGesture_androidKt.toOffset(removeSpaceGesture.getEndPoint()), textLayoutState.getTextLayoutNodeCoordinates(), viewConfiguration);
        if (TextRange.m8485getCollapsedimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68)) {
            return INSTANCE.fallback(transformedTextFieldState, removeSpaceGesture);
        }
        final p07 p07Var = new p07();
        p07Var.b = -1;
        final p07 p07Var2 = new p07();
        p07Var2.b = -1;
        String strF = new g17("\\s+").f(TextRangeKt.m8498substringFDrldGo(transformedTextFieldState.getVisualText(), jM2725getRangeForRemoveSpaceGesture5iVPX68), new nl3() { // from class: mu3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return HandwritingGestureApi34.performRemoveSpaceGesture$lambda$1(p07Var, p07Var2, (r15) obj);
            }
        });
        if (p07Var.b != -1 && p07Var2.b != -1) {
            TransformedTextFieldState.m2830replaceTextM8tDOmk$default(transformedTextFieldState, strF.substring(p07Var.b, strF.length() - (TextRange.m8487getLengthimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68) - p07Var2.b)), TextRangeKt.TextRange(TextRange.m8491getStartimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68) + p07Var.b, TextRange.m8491getStartimpl(jM2725getRangeForRemoveSpaceGesture5iVPX68) + p07Var2.b), null, false, 12, null);
            return 1;
        }
        return fallback(transformedTextFieldState, removeSpaceGesture);
    }
}
