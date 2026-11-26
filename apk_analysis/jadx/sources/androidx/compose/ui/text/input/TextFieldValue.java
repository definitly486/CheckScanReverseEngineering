package androidx.compose.ui.text.input;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.NonNullValueClassSaver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.aa4;
import defpackage.af;
import defpackage.ds8;
import defpackage.jh2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFieldValue {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Saver<TextFieldValue, Object> Saver = SaverKt.Saver(new ds8(), new af(2));
    private final AnnotatedString annotatedString;
    private final TextRange composition;
    private final long selection;

    private TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange) {
        this.annotatedString = annotatedString;
        this.selection = TextRangeKt.m8497coerceIn8ffj60Q(j, 0, getText().length());
        this.composition = textRange != null ? TextRange.m8479boximpl(TextRangeKt.m8497coerceIn8ffj60Q(textRange.m8495unboximpl(), 0, getText().length())) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object Saver$lambda$0(SaverScope saverScope, TextFieldValue textFieldValue) {
        return u96.a(SaversKt.save(textFieldValue.annotatedString, SaversKt.getAnnotatedStringSaver(), saverScope), SaversKt.save(TextRange.m8479boximpl(textFieldValue.selection), SaversKt.getSaver(TextRange.Companion), saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldValue Saver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Saver<AnnotatedString, Object> annotatedStringSaver = SaversKt.getAnnotatedStringSaver();
        Boolean bool = Boolean.FALSE;
        TextRange textRangeRestore = null;
        AnnotatedString annotatedStringRestore = ((!aa4.e(obj2, bool) || (annotatedStringSaver instanceof NonNullValueClassSaver)) && obj2 != null) ? annotatedStringSaver.restore(obj2) : null;
        annotatedStringRestore.getClass();
        Object obj3 = list.get(1);
        Saver<TextRange, Object> saver = SaversKt.getSaver(TextRange.Companion);
        if ((!aa4.e(obj3, bool) || (saver instanceof NonNullValueClassSaver)) && obj3 != null) {
            textRangeRestore = saver.restore(obj3);
        }
        textRangeRestore.getClass();
        return new TextFieldValue(annotatedStringRestore, textRangeRestore.m8495unboximpl(), (TextRange) null, 4, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-3r_uNRQ$default, reason: not valid java name */
    public static /* synthetic */ TextFieldValue m8736copy3r_uNRQ$default(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j, TextRange textRange, int i, Object obj) {
        if ((i & 1) != 0) {
            annotatedString = textFieldValue.annotatedString;
        }
        if ((i & 2) != 0) {
            j = textFieldValue.selection;
        }
        if ((i & 4) != 0) {
            textRange = textFieldValue.composition;
        }
        return textFieldValue.m8738copy3r_uNRQ(annotatedString, j, textRange);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-3r_uNRQ, reason: not valid java name */
    public final TextFieldValue m8739copy3r_uNRQ(String str, long j, TextRange textRange) {
        return new TextFieldValue(new AnnotatedString(str, null, 2, 0 == true ? 1 : 0), j, textRange, (jh2) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        return TextRange.m8484equalsimpl0(this.selection, textFieldValue.selection) && aa4.e(this.composition, textFieldValue.composition) && aa4.e(this.annotatedString, textFieldValue.annotatedString);
    }

    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    /* JADX INFO: renamed from: getComposition-MzsxiRA, reason: not valid java name */
    public final TextRange m8740getCompositionMzsxiRA() {
        return this.composition;
    }

    /* JADX INFO: renamed from: getSelection-d9O1mEE, reason: not valid java name */
    public final long m8741getSelectiond9O1mEE() {
        return this.selection;
    }

    public final String getText() {
        return this.annotatedString.getText();
    }

    public int hashCode() {
        int iM8492hashCodeimpl = (TextRange.m8492hashCodeimpl(this.selection) + (this.annotatedString.hashCode() * 31)) * 31;
        TextRange textRange = this.composition;
        return iM8492hashCodeimpl + (textRange != null ? TextRange.m8492hashCodeimpl(textRange.m8495unboximpl()) : 0);
    }

    public String toString() {
        return "TextFieldValue(text='" + ((Object) this.annotatedString) + "', selection=" + ((Object) TextRange.m8494toStringimpl(this.selection)) + ", composition=" + this.composition + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<TextFieldValue, Object> getSaver() {
            return TextFieldValue.Saver;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: copy-3r_uNRQ, reason: not valid java name */
    public final TextFieldValue m8738copy3r_uNRQ(AnnotatedString annotatedString, long j, TextRange textRange) {
        return new TextFieldValue(annotatedString, j, textRange, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-3r_uNRQ$default, reason: not valid java name */
    public static /* synthetic */ TextFieldValue m8737copy3r_uNRQ$default(TextFieldValue textFieldValue, String str, long j, TextRange textRange, int i, Object obj) {
        if ((i & 2) != 0) {
            j = textFieldValue.selection;
        }
        if ((i & 4) != 0) {
            textRange = textFieldValue.composition;
        }
        return textFieldValue.m8739copy3r_uNRQ(str, j, textRange);
    }

    public /* synthetic */ TextFieldValue(String str, long j, TextRange textRange, jh2 jh2Var) {
        this(str, j, textRange);
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange, jh2 jh2Var) {
        this(annotatedString, j, textRange);
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange, int i, jh2 jh2Var) {
        this(annotatedString, (i & 2) != 0 ? TextRange.Companion.m8496getZerod9O1mEE() : j, (i & 4) != 0 ? null : textRange, (jh2) null);
    }

    public /* synthetic */ TextFieldValue(String str, long j, TextRange textRange, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? TextRange.Companion.m8496getZerod9O1mEE() : j, (i & 4) != 0 ? null : textRange, (jh2) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TextFieldValue(String str, long j, TextRange textRange) {
        this(new AnnotatedString(str, null, 2, 0 == true ? 1 : 0), j, textRange, (jh2) null);
    }
}
