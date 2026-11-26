package androidx.compose.ui.text.intl;

import androidx.media3.common.C;
import defpackage.aa4;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class Locale_jvmAndAndroidKt {
    @ul2
    public static /* synthetic */ void PlatformLocale$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final java.util.Locale parseLanguageTag(String str) {
        java.util.Locale localeForLanguageTag = java.util.Locale.forLanguageTag(str);
        if (aa4.e(localeForLanguageTag.toLanguageTag(), C.LANGUAGE_UNDETERMINED)) {
            System.err.println("The language tag " + str + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
        }
        return localeForLanguageTag;
    }
}
