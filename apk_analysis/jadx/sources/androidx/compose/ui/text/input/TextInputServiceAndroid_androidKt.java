package androidx.compose.ui.text.input;

import android.view.Choreographer;
import android.view.inputmethod.EditorInfo;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextInputServiceAndroid_androidKt;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.ah;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class TextInputServiceAndroid_androidKt {
    private static final String DEBUG_CLASS = "TextInputServiceAndroid";

    public static final Executor asExecutor(final Choreographer choreographer) {
        return new Executor() { // from class: fs8
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                TextInputServiceAndroid_androidKt.asExecutor$lambda$0(choreographer, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asExecutor$lambda$0(Choreographer choreographer, final Runnable runnable) {
        choreographer.postFrameCallback(new Choreographer.FrameCallback() { // from class: gs8
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                runnable.run();
            }
        });
    }

    private static final boolean hasFlag(int i, int i2) {
        return (i & i2) == i2;
    }

    public static final void update(EditorInfo editorInfo, ImeOptions imeOptions, TextFieldValue textFieldValue) {
        String privateImeOptions;
        int iM8688getImeActioneUduSuo = imeOptions.m8688getImeActioneUduSuo();
        ImeAction.Companion companion = ImeAction.Companion;
        int i = 6;
        if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8672getDefaulteUduSuo())) {
            if (!imeOptions.getSingleLine()) {
                i = 0;
            }
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8676getNoneeUduSuo())) {
            i = 1;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8674getGoeUduSuo())) {
            i = 2;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8675getNexteUduSuo())) {
            i = 5;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8677getPreviouseUduSuo())) {
            i = 7;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8678getSearcheUduSuo())) {
            i = 3;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8679getSendeUduSuo())) {
            i = 4;
        } else if (!ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8673getDoneeUduSuo())) {
            ah.f("invalid ImeAction");
            return;
        }
        editorInfo.imeOptions = i;
        PlatformImeOptions platformImeOptions = imeOptions.getPlatformImeOptions();
        if (platformImeOptions != null && (privateImeOptions = platformImeOptions.getPrivateImeOptions()) != null) {
            editorInfo.privateImeOptions = privateImeOptions;
        }
        int iM8689getKeyboardTypePjHm6EE = imeOptions.m8689getKeyboardTypePjHm6EE();
        KeyboardType.Companion companion2 = KeyboardType.Companion;
        if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8733getTextPjHm6EE())) {
            editorInfo.inputType = 1;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8726getAsciiPjHm6EE())) {
            editorInfo.inputType = 1;
            editorInfo.imeOptions |= Integer.MIN_VALUE;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8729getNumberPjHm6EE())) {
            editorInfo.inputType = 2;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8732getPhonePjHm6EE())) {
            editorInfo.inputType = 3;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8735getUriPjHm6EE())) {
            editorInfo.inputType = 17;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8728getEmailPjHm6EE())) {
            editorInfo.inputType = 33;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8731getPasswordPjHm6EE())) {
            editorInfo.inputType = TsExtractor.TS_STREAM_TYPE_AC3;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8730getNumberPasswordPjHm6EE())) {
            editorInfo.inputType = 18;
        } else {
            if (!KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8727getDecimalPjHm6EE())) {
                ah.f("Invalid Keyboard Type");
                return;
            }
            editorInfo.inputType = 8194;
        }
        if (!imeOptions.getSingleLine() && hasFlag(editorInfo.inputType, 1)) {
            editorInfo.inputType |= 131072;
            if (ImeAction.m8659equalsimpl0(imeOptions.m8688getImeActioneUduSuo(), companion.m8672getDefaulteUduSuo())) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if (hasFlag(editorInfo.inputType, 1)) {
            int iM8687getCapitalizationIUNYP9k = imeOptions.m8687getCapitalizationIUNYP9k();
            KeyboardCapitalization.Companion companion3 = KeyboardCapitalization.Companion;
            if (KeyboardCapitalization.m8695equalsimpl0(iM8687getCapitalizationIUNYP9k, companion3.m8704getCharactersIUNYP9k())) {
                editorInfo.inputType |= 4096;
            } else if (KeyboardCapitalization.m8695equalsimpl0(iM8687getCapitalizationIUNYP9k, companion3.m8708getWordsIUNYP9k())) {
                editorInfo.inputType |= 8192;
            } else if (KeyboardCapitalization.m8695equalsimpl0(iM8687getCapitalizationIUNYP9k, companion3.m8706getSentencesIUNYP9k())) {
                editorInfo.inputType |= 16384;
            }
            if (imeOptions.getAutoCorrect()) {
                editorInfo.inputType |= 32768;
            }
        }
        editorInfo.initialSelStart = TextRange.m8491getStartimpl(textFieldValue.m8741getSelectiond9O1mEE());
        editorInfo.initialSelEnd = TextRange.m8486getEndimpl(textFieldValue.m8741getSelectiond9O1mEE());
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textFieldValue.getText());
        editorInfo.imeOptions |= GroupFlagsKt.HasAuxSlotFlag;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWithEmojiCompat(EditorInfo editorInfo) {
        if (EmojiCompat.isConfigured()) {
            EmojiCompat.get().updateEditorInfo(editorInfo);
        }
    }
}
