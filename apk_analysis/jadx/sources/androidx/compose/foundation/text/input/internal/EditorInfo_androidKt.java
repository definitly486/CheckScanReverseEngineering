package androidx.compose.foundation.text.input.internal;

import android.view.inputmethod.EditorInfo;
import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.ah;

/* JADX INFO: loaded from: classes2.dex */
public final class EditorInfo_androidKt {
    private static final boolean hasFlag(int i, int i2) {
        return (i & i2) == i2;
    }

    /* JADX INFO: renamed from: update-pLxbY9I, reason: not valid java name */
    public static final void m2704updatepLxbY9I(EditorInfo editorInfo, CharSequence charSequence, long j, ImeOptions imeOptions, String[] strArr) {
        String privateImeOptions;
        int iM8688getImeActioneUduSuo = imeOptions.m8688getImeActioneUduSuo();
        ImeAction.Companion companion = ImeAction.Companion;
        int i = 3;
        int i2 = 6;
        if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8672getDefaulteUduSuo())) {
            if (!imeOptions.getSingleLine()) {
                i2 = 0;
            }
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8676getNoneeUduSuo())) {
            i2 = 1;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8674getGoeUduSuo())) {
            i2 = 2;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8675getNexteUduSuo())) {
            i2 = 5;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8677getPreviouseUduSuo())) {
            i2 = 7;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8678getSearcheUduSuo())) {
            i2 = 3;
        } else if (ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8679getSendeUduSuo())) {
            i2 = 4;
        } else if (!ImeAction.m8659equalsimpl0(iM8688getImeActioneUduSuo, companion.m8673getDoneeUduSuo())) {
            ah.f("invalid ImeAction");
            return;
        }
        editorInfo.imeOptions = i2;
        PlatformImeOptions platformImeOptions = imeOptions.getPlatformImeOptions();
        if (platformImeOptions != null && (privateImeOptions = platformImeOptions.getPrivateImeOptions()) != null) {
            editorInfo.privateImeOptions = privateImeOptions;
        }
        LocaleListHelper.INSTANCE.setHintLocales(editorInfo, imeOptions.getHintLocales());
        int iM8689getKeyboardTypePjHm6EE = imeOptions.m8689getKeyboardTypePjHm6EE();
        KeyboardType.Companion companion2 = KeyboardType.Companion;
        if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8733getTextPjHm6EE())) {
            i = 1;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8726getAsciiPjHm6EE())) {
            editorInfo.imeOptions |= Integer.MIN_VALUE;
            i = 1;
        } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8729getNumberPjHm6EE())) {
            i = 2;
        } else if (!KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8732getPhonePjHm6EE())) {
            if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8735getUriPjHm6EE())) {
                i = 17;
            } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8728getEmailPjHm6EE())) {
                i = 33;
            } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8731getPasswordPjHm6EE())) {
                i = TsExtractor.TS_STREAM_TYPE_AC3;
            } else if (KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8730getNumberPasswordPjHm6EE())) {
                i = 18;
            } else {
                if (!KeyboardType.m8712equalsimpl0(iM8689getKeyboardTypePjHm6EE, companion2.m8727getDecimalPjHm6EE())) {
                    ah.f("Invalid Keyboard Type");
                    return;
                }
                i = 8194;
            }
        }
        editorInfo.inputType = i;
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
        editorInfo.initialSelStart = TextRange.m8491getStartimpl(j);
        editorInfo.initialSelEnd = TextRange.m8486getEndimpl(j);
        EditorInfoCompat.setInitialSurroundingText(editorInfo, charSequence);
        if (strArr != null) {
            EditorInfoCompat.setContentMimeTypes(editorInfo, strArr);
        }
        editorInfo.imeOptions |= GroupFlagsKt.HasAuxSlotFlag;
        if (!StylusHandwriting_androidKt.isStylusHandwritingSupported() || KeyboardType.m8712equalsimpl0(imeOptions.m8689getKeyboardTypePjHm6EE(), companion2.m8731getPasswordPjHm6EE()) || KeyboardType.m8712equalsimpl0(imeOptions.m8689getKeyboardTypePjHm6EE(), companion2.m8730getNumberPasswordPjHm6EE())) {
            EditorInfoCompat.setStylusHandwritingEnabled(editorInfo, false);
        } else {
            EditorInfoCompat.setStylusHandwritingEnabled(editorInfo, true);
            EditorInfoApi34.INSTANCE.setHandwritingGestures(editorInfo);
        }
    }

    /* JADX INFO: renamed from: update-pLxbY9I$default, reason: not valid java name */
    public static /* synthetic */ void m2705updatepLxbY9I$default(EditorInfo editorInfo, CharSequence charSequence, long j, ImeOptions imeOptions, String[] strArr, int i, Object obj) {
        if ((i & 8) != 0) {
            strArr = null;
        }
        m2704updatepLxbY9I(editorInfo, charSequence, j, imeOptions, strArr);
    }
}
