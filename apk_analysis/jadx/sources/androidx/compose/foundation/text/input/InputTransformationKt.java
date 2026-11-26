package androidx.compose.foundation.text.input;

import androidx.compose.ui.text.intl.Locale;
import defpackage.bm3;

/* JADX INFO: loaded from: classes.dex */
public final class InputTransformationKt {
    public static final InputTransformation allCaps(InputTransformation inputTransformation, Locale locale) {
        return then(inputTransformation, new AllCapsTransformation(locale));
    }

    public static final InputTransformation byValue(InputTransformation inputTransformation, bm3<? super CharSequence, ? super CharSequence, ? extends CharSequence> bm3Var) {
        return then(inputTransformation, new InputTransformationByValue(bm3Var));
    }

    public static final InputTransformation maxLength(InputTransformation inputTransformation, int i) {
        return then(inputTransformation, new MaxLengthFilter(i));
    }

    public static final InputTransformation then(InputTransformation inputTransformation, InputTransformation inputTransformation2) {
        return new FilterChain(inputTransformation, inputTransformation2);
    }
}
