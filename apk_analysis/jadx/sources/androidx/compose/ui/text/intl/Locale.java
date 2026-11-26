package androidx.compose.ui.text.intl;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class Locale {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private final java.util.Locale platformLocale;

    public Locale(String str) {
        this(Locale_jvmAndAndroidKt.parseLanguageTag(str));
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Locale)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return aa4.e(toLanguageTag(), ((Locale) obj).toLanguageTag());
    }

    public final String getLanguage() {
        return this.platformLocale.getLanguage();
    }

    public final java.util.Locale getPlatformLocale() {
        return this.platformLocale;
    }

    public final String getRegion() {
        return this.platformLocale.getCountry();
    }

    public final String getScript() {
        return this.platformLocale.getScript();
    }

    public int hashCode() {
        return toLanguageTag().hashCode();
    }

    public final String toLanguageTag() {
        return this.platformLocale.toLanguageTag();
    }

    public String toString() {
        return toLanguageTag();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Locale getCurrent() {
            return PlatformLocaleKt.getPlatformLocaleDelegate().getCurrent().get(0);
        }

        private Companion() {
        }
    }

    public Locale(java.util.Locale locale) {
        this.platformLocale = locale;
    }
}
