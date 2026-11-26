package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.ui.text.intl.Locale;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.qn1;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionLocalsKt$LocalLocale$1 extends gh4 implements nl3<CompositionLocalAccessorScope, Locale> {
    public static final CompositionLocalsKt$LocalLocale$1 INSTANCE = new CompositionLocalsKt$LocalLocale$1();

    public CompositionLocalsKt$LocalLocale$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Locale invoke(CompositionLocalAccessorScope compositionLocalAccessorScope) {
        return (Locale) qn1.S((Iterable) compositionLocalAccessorScope.getCurrentValue(CompositionLocalsKt.getLocalLocaleList()));
    }
}
