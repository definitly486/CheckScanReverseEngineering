package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.tracing.Trace;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class KeyboardOptions {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final KeyboardOptions Default = new KeyboardOptions(0, (Boolean) null, 0, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, Trace.MAX_TRACE_LABEL_LENGTH, (jh2) null);
    private static final KeyboardOptions SecureTextField = new KeyboardOptions(0, Boolean.FALSE, KeyboardType.Companion.m8731getPasswordPjHm6EE(), 0, (PlatformImeOptions) (0 == true ? 1 : 0), (Boolean) (0 == true ? 1 : 0), (LocaleList) null, 121, (jh2) null);
    private final Boolean autoCorrectEnabled;
    private final int capitalization;
    private final LocaleList hintLocales;
    private final int imeAction;
    private final int keyboardType;
    private final PlatformImeOptions platformImeOptions;
    private final Boolean showKeyboardOnFocus;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ KeyboardOptions(int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList, int i4, jh2 jh2Var) {
        int iM8707getUnspecifiedIUNYP9k = (i4 & 1) != 0 ? KeyboardCapitalization.Companion.m8707getUnspecifiedIUNYP9k() : i;
        Boolean bool3 = (i4 & 2) != 0 ? null : bool;
        int iM8734getUnspecifiedPjHm6EE = (i4 & 4) != 0 ? KeyboardType.Companion.m8734getUnspecifiedPjHm6EE() : i2;
        int iM8680getUnspecifiedeUduSuo = (i4 & 8) != 0 ? ImeAction.Companion.m8680getUnspecifiedeUduSuo() : i3;
        PlatformImeOptions platformImeOptions2 = (i4 & 16) != 0 ? null : platformImeOptions;
        Boolean bool4 = (i4 & 32) != 0 ? null : bool2;
        this(iM8707getUnspecifiedIUNYP9k, bool3, iM8734getUnspecifiedPjHm6EE, iM8680getUnspecifiedeUduSuo, platformImeOptions2, bool4, (i4 & 64) == 0 ? localeList : null, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-3m2b7yw$default, reason: not valid java name */
    public static /* synthetic */ KeyboardOptions m2545copy3m2b7yw$default(KeyboardOptions keyboardOptions, int i, boolean z, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = keyboardOptions.capitalization;
        }
        if ((i4 & 2) != 0) {
            z = keyboardOptions.getAutoCorrectOrDefault();
        }
        if ((i4 & 4) != 0) {
            i2 = keyboardOptions.keyboardType;
        }
        if ((i4 & 8) != 0) {
            i3 = keyboardOptions.imeAction;
        }
        return keyboardOptions.m2551copy3m2b7yw(i, z, i2, i3);
    }

    /* JADX INFO: renamed from: copy-INvB4aQ$default, reason: not valid java name */
    public static /* synthetic */ KeyboardOptions m2547copyINvB4aQ$default(KeyboardOptions keyboardOptions, int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool, LocaleList localeList, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = keyboardOptions.capitalization;
        }
        if ((i4 & 2) != 0) {
            z = keyboardOptions.getAutoCorrectOrDefault();
        }
        if ((i4 & 4) != 0) {
            i2 = keyboardOptions.keyboardType;
        }
        if ((i4 & 8) != 0) {
            i3 = keyboardOptions.imeAction;
        }
        if ((i4 & 16) != 0) {
            platformImeOptions = keyboardOptions.platformImeOptions;
        }
        if ((i4 & 32) != 0) {
            bool = Boolean.valueOf(keyboardOptions.getShowKeyboardOnFocusOrDefault$foundation());
        }
        if ((i4 & 64) != 0) {
            localeList = keyboardOptions.hintLocales;
        }
        Boolean bool2 = bool;
        LocaleList localeList2 = localeList;
        PlatformImeOptions platformImeOptions2 = platformImeOptions;
        int i5 = i2;
        return keyboardOptions.m2553copyINvB4aQ(i, z, i5, i3, platformImeOptions2, bool2, localeList2);
    }

    /* JADX INFO: renamed from: copy-ij11fho$default, reason: not valid java name */
    public static /* synthetic */ KeyboardOptions m2548copyij11fho$default(KeyboardOptions keyboardOptions, int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = keyboardOptions.capitalization;
        }
        if ((i4 & 2) != 0) {
            z = keyboardOptions.getAutoCorrectOrDefault();
        }
        if ((i4 & 4) != 0) {
            i2 = keyboardOptions.keyboardType;
        }
        if ((i4 & 8) != 0) {
            i3 = keyboardOptions.imeAction;
        }
        if ((i4 & 16) != 0) {
            platformImeOptions = keyboardOptions.platformImeOptions;
        }
        PlatformImeOptions platformImeOptions2 = platformImeOptions;
        int i5 = i2;
        return keyboardOptions.m2554copyij11fho(i, z, i5, i3, platformImeOptions2);
    }

    @ul2
    public static /* synthetic */ void getAutoCorrect$annotations() {
    }

    private final boolean getAutoCorrectOrDefault() {
        Boolean bool = this.autoCorrectEnabled;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* JADX INFO: renamed from: getCapitalizationOrDefault-IUNYP9k, reason: not valid java name */
    private final int m2549getCapitalizationOrDefaultIUNYP9k() {
        KeyboardCapitalization keyboardCapitalizationM8692boximpl = KeyboardCapitalization.m8692boximpl(this.capitalization);
        int iM8698unboximpl = keyboardCapitalizationM8692boximpl.m8698unboximpl();
        KeyboardCapitalization.Companion companion = KeyboardCapitalization.Companion;
        if (KeyboardCapitalization.m8695equalsimpl0(iM8698unboximpl, companion.m8707getUnspecifiedIUNYP9k())) {
            keyboardCapitalizationM8692boximpl = null;
        }
        return keyboardCapitalizationM8692boximpl != null ? keyboardCapitalizationM8692boximpl.m8698unboximpl() : companion.m8705getNoneIUNYP9k();
    }

    private final LocaleList getHintLocalesOrDefault() {
        LocaleList localeList = this.hintLocales;
        return localeList == null ? LocaleList.Companion.getEmpty() : localeList;
    }

    /* JADX INFO: renamed from: getKeyboardTypeOrDefault-PjHm6EE, reason: not valid java name */
    private final int m2550getKeyboardTypeOrDefaultPjHm6EE() {
        KeyboardType keyboardTypeM8709boximpl = KeyboardType.m8709boximpl(this.keyboardType);
        int iM8715unboximpl = keyboardTypeM8709boximpl.m8715unboximpl();
        KeyboardType.Companion companion = KeyboardType.Companion;
        if (KeyboardType.m8712equalsimpl0(iM8715unboximpl, companion.m8734getUnspecifiedPjHm6EE())) {
            keyboardTypeM8709boximpl = null;
        }
        return keyboardTypeM8709boximpl != null ? keyboardTypeM8709boximpl.m8715unboximpl() : companion.m8733getTextPjHm6EE();
    }

    @ul2
    public static /* synthetic */ void getShouldShowKeyboardOnFocus$annotations() {
    }

    private final boolean isCompletelyUnspecified() {
        return KeyboardCapitalization.m8695equalsimpl0(this.capitalization, KeyboardCapitalization.Companion.m8707getUnspecifiedIUNYP9k()) && this.autoCorrectEnabled == null && KeyboardType.m8712equalsimpl0(this.keyboardType, KeyboardType.Companion.m8734getUnspecifiedPjHm6EE()) && ImeAction.m8659equalsimpl0(this.imeAction, ImeAction.Companion.m8680getUnspecifiedeUduSuo()) && this.platformImeOptions == null && this.showKeyboardOnFocus == null && this.hintLocales == null;
    }

    public static /* synthetic */ ImeOptions toImeOptions$foundation$default(KeyboardOptions keyboardOptions, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = ImeOptions.Companion.getDefault().getSingleLine();
        }
        return keyboardOptions.toImeOptions$foundation(z);
    }

    @ul2
    /* JADX INFO: renamed from: copy-3m2b7yw, reason: not valid java name */
    public final /* synthetic */ KeyboardOptions m2551copy3m2b7yw(int i, boolean z, int i2, int i3) {
        return new KeyboardOptions(i, Boolean.valueOf(z), i2, i3, this.platformImeOptions, this.showKeyboardOnFocus, this.hintLocales, (jh2) null);
    }

    @ul2
    /* JADX INFO: renamed from: copy-INvB4aQ, reason: not valid java name */
    public final /* synthetic */ KeyboardOptions m2553copyINvB4aQ(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool, LocaleList localeList) {
        return new KeyboardOptions(i, Boolean.valueOf(z), i2, i3, platformImeOptions, bool, localeList, (jh2) null);
    }

    @ul2
    /* JADX INFO: renamed from: copy-ij11fho, reason: not valid java name */
    public final /* synthetic */ KeyboardOptions m2554copyij11fho(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions) {
        return new KeyboardOptions(i, Boolean.valueOf(z), i2, i3, platformImeOptions, this.showKeyboardOnFocus, this.hintLocales, (jh2) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardOptions)) {
            return false;
        }
        KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
        return KeyboardCapitalization.m8695equalsimpl0(this.capitalization, keyboardOptions.capitalization) && aa4.e(this.autoCorrectEnabled, keyboardOptions.autoCorrectEnabled) && KeyboardType.m8712equalsimpl0(this.keyboardType, keyboardOptions.keyboardType) && ImeAction.m8659equalsimpl0(this.imeAction, keyboardOptions.imeAction) && aa4.e(this.platformImeOptions, keyboardOptions.platformImeOptions) && aa4.e(this.showKeyboardOnFocus, keyboardOptions.showKeyboardOnFocus) && aa4.e(this.hintLocales, keyboardOptions.hintLocales);
    }

    public final KeyboardOptions fillUnspecifiedValuesWith$foundation(KeyboardOptions keyboardOptions) {
        if (keyboardOptions == null || keyboardOptions.isCompletelyUnspecified() || keyboardOptions.equals(this)) {
            return this;
        }
        if (isCompletelyUnspecified()) {
            return keyboardOptions;
        }
        KeyboardCapitalization keyboardCapitalizationM8692boximpl = KeyboardCapitalization.m8692boximpl(this.capitalization);
        if (KeyboardCapitalization.m8695equalsimpl0(keyboardCapitalizationM8692boximpl.m8698unboximpl(), KeyboardCapitalization.Companion.m8707getUnspecifiedIUNYP9k())) {
            keyboardCapitalizationM8692boximpl = null;
        }
        int iM8698unboximpl = keyboardCapitalizationM8692boximpl != null ? keyboardCapitalizationM8692boximpl.m8698unboximpl() : keyboardOptions.capitalization;
        Boolean bool = this.autoCorrectEnabled;
        if (bool == null) {
            bool = keyboardOptions.autoCorrectEnabled;
        }
        Boolean bool2 = bool;
        KeyboardType keyboardTypeM8709boximpl = KeyboardType.m8709boximpl(this.keyboardType);
        if (KeyboardType.m8712equalsimpl0(keyboardTypeM8709boximpl.m8715unboximpl(), KeyboardType.Companion.m8734getUnspecifiedPjHm6EE())) {
            keyboardTypeM8709boximpl = null;
        }
        int iM8715unboximpl = keyboardTypeM8709boximpl != null ? keyboardTypeM8709boximpl.m8715unboximpl() : keyboardOptions.keyboardType;
        ImeAction imeActionM8656boximpl = ImeAction.m8656boximpl(this.imeAction);
        ImeAction imeAction = ImeAction.m8659equalsimpl0(imeActionM8656boximpl.m8662unboximpl(), ImeAction.Companion.m8680getUnspecifiedeUduSuo()) ? null : imeActionM8656boximpl;
        int iM8662unboximpl = imeAction != null ? imeAction.m8662unboximpl() : keyboardOptions.imeAction;
        PlatformImeOptions platformImeOptions = this.platformImeOptions;
        if (platformImeOptions == null) {
            platformImeOptions = keyboardOptions.platformImeOptions;
        }
        PlatformImeOptions platformImeOptions2 = platformImeOptions;
        Boolean bool3 = this.showKeyboardOnFocus;
        if (bool3 == null) {
            bool3 = keyboardOptions.showKeyboardOnFocus;
        }
        Boolean bool4 = bool3;
        LocaleList localeList = this.hintLocales;
        if (localeList == null) {
            localeList = keyboardOptions.hintLocales;
        }
        return new KeyboardOptions(iM8698unboximpl, bool2, iM8715unboximpl, iM8662unboximpl, platformImeOptions2, bool4, localeList, (jh2) null);
    }

    public final boolean getAutoCorrect() {
        return getAutoCorrectOrDefault();
    }

    public final Boolean getAutoCorrectEnabled() {
        return this.autoCorrectEnabled;
    }

    /* JADX INFO: renamed from: getCapitalization-IUNYP9k, reason: not valid java name */
    public final int m2555getCapitalizationIUNYP9k() {
        return this.capitalization;
    }

    public final LocaleList getHintLocales() {
        return this.hintLocales;
    }

    /* JADX INFO: renamed from: getImeAction-eUduSuo, reason: not valid java name */
    public final int m2556getImeActioneUduSuo() {
        return this.imeAction;
    }

    /* JADX INFO: renamed from: getImeActionOrDefault-eUduSuo$foundation, reason: not valid java name */
    public final int m2557getImeActionOrDefaulteUduSuo$foundation() {
        ImeAction imeActionM8656boximpl = ImeAction.m8656boximpl(this.imeAction);
        int iM8662unboximpl = imeActionM8656boximpl.m8662unboximpl();
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m8659equalsimpl0(iM8662unboximpl, companion.m8680getUnspecifiedeUduSuo())) {
            imeActionM8656boximpl = null;
        }
        return imeActionM8656boximpl != null ? imeActionM8656boximpl.m8662unboximpl() : companion.m8672getDefaulteUduSuo();
    }

    /* JADX INFO: renamed from: getKeyboardType-PjHm6EE, reason: not valid java name */
    public final int m2558getKeyboardTypePjHm6EE() {
        return this.keyboardType;
    }

    public final PlatformImeOptions getPlatformImeOptions() {
        return this.platformImeOptions;
    }

    public final /* synthetic */ boolean getShouldShowKeyboardOnFocus() {
        Boolean bool = this.showKeyboardOnFocus;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final Boolean getShowKeyboardOnFocus() {
        return this.showKeyboardOnFocus;
    }

    public final boolean getShowKeyboardOnFocusOrDefault$foundation() {
        Boolean bool = this.showKeyboardOnFocus;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public int hashCode() {
        int iM8696hashCodeimpl = KeyboardCapitalization.m8696hashCodeimpl(this.capitalization) * 31;
        Boolean bool = this.autoCorrectEnabled;
        int iM8660hashCodeimpl = (ImeAction.m8660hashCodeimpl(this.imeAction) + ((KeyboardType.m8713hashCodeimpl(this.keyboardType) + ((iM8696hashCodeimpl + (bool != null ? bool.hashCode() : 0)) * 31)) * 31)) * 31;
        PlatformImeOptions platformImeOptions = this.platformImeOptions;
        int iHashCode = (iM8660hashCodeimpl + (platformImeOptions != null ? platformImeOptions.hashCode() : 0)) * 31;
        Boolean bool2 = this.showKeyboardOnFocus;
        int iHashCode2 = (iHashCode + (bool2 != null ? bool2.hashCode() : 0)) * 31;
        LocaleList localeList = this.hintLocales;
        return iHashCode2 + (localeList != null ? localeList.hashCode() : 0);
    }

    public final KeyboardOptions merge(KeyboardOptions keyboardOptions) {
        KeyboardOptions keyboardOptionsFillUnspecifiedValuesWith$foundation;
        return (keyboardOptions == null || (keyboardOptionsFillUnspecifiedValuesWith$foundation = keyboardOptions.fillUnspecifiedValuesWith$foundation(this)) == null) ? this : keyboardOptionsFillUnspecifiedValuesWith$foundation;
    }

    public final ImeOptions toImeOptions$foundation(boolean z) {
        return new ImeOptions(z, m2549getCapitalizationOrDefaultIUNYP9k(), getAutoCorrectOrDefault(), m2550getKeyboardTypeOrDefaultPjHm6EE(), m2557getImeActionOrDefaulteUduSuo$foundation(), this.platformImeOptions, getHintLocalesOrDefault(), (jh2) null);
    }

    public String toString() {
        return "KeyboardOptions(capitalization=" + ((Object) KeyboardCapitalization.m8697toStringimpl(this.capitalization)) + ", autoCorrectEnabled=" + this.autoCorrectEnabled + ", keyboardType=" + ((Object) KeyboardType.m8714toStringimpl(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.m8661toStringimpl(this.imeAction)) + ", platformImeOptions=" + this.platformImeOptions + "showKeyboardOnFocus=" + this.showKeyboardOnFocus + ", hintLocales=" + this.hintLocales + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getDefault$annotations() {
        }

        public static /* synthetic */ void getSecureTextField$foundation$annotations() {
        }

        public final KeyboardOptions getDefault() {
            return KeyboardOptions.Default;
        }

        public final KeyboardOptions getSecureTextField$foundation() {
            return KeyboardOptions.SecureTextField;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: copy-INvB4aQ, reason: not valid java name */
    public final KeyboardOptions m2552copyINvB4aQ(int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList) {
        return new KeyboardOptions(i, bool, i2, i3, platformImeOptions, bool2, localeList, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-INvB4aQ$default, reason: not valid java name */
    public static /* synthetic */ KeyboardOptions m2546copyINvB4aQ$default(KeyboardOptions keyboardOptions, int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = keyboardOptions.capitalization;
        }
        if ((i4 & 2) != 0) {
            bool = keyboardOptions.autoCorrectEnabled;
        }
        if ((i4 & 4) != 0) {
            i2 = keyboardOptions.keyboardType;
        }
        if ((i4 & 8) != 0) {
            i3 = keyboardOptions.imeAction;
        }
        if ((i4 & 16) != 0) {
            platformImeOptions = keyboardOptions.platformImeOptions;
        }
        if ((i4 & 32) != 0) {
            bool2 = null;
        }
        return keyboardOptions.m2552copyINvB4aQ(i, bool, i2, i3, platformImeOptions, bool2, (i4 & 64) != 0 ? null : localeList);
    }

    @ul2
    public /* synthetic */ KeyboardOptions(int i, boolean z, int i2, int i3, jh2 jh2Var) {
        this(i, z, i2, i3);
    }

    @ul2
    public /* synthetic */ KeyboardOptions(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, jh2 jh2Var) {
        this(i, z, i2, i3, platformImeOptions);
    }

    @ul2
    public /* synthetic */ KeyboardOptions(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool, LocaleList localeList, jh2 jh2Var) {
        this(i, z, i2, i3, platformImeOptions, bool, localeList);
    }

    private KeyboardOptions(int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList) {
        this.capitalization = i;
        this.autoCorrectEnabled = bool;
        this.keyboardType = i2;
        this.imeAction = i3;
        this.platformImeOptions = platformImeOptions;
        this.showKeyboardOnFocus = bool2;
        this.hintLocales = localeList;
    }

    public /* synthetic */ KeyboardOptions(int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList, jh2 jh2Var) {
        this(i, bool, i2, i3, platformImeOptions, bool2, localeList);
    }

    public /* synthetic */ KeyboardOptions(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool, LocaleList localeList, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? KeyboardCapitalization.Companion.m8707getUnspecifiedIUNYP9k() : i, z, (i4 & 4) != 0 ? KeyboardType.Companion.m8734getUnspecifiedPjHm6EE() : i2, (i4 & 8) != 0 ? ImeAction.Companion.m8680getUnspecifiedeUduSuo() : i3, (i4 & 16) != 0 ? null : platformImeOptions, (i4 & 32) != 0 ? null : bool, (i4 & 64) != 0 ? null : localeList, (jh2) null);
    }

    private KeyboardOptions(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool, LocaleList localeList) {
        this(i, Boolean.valueOf(z), i2, i3, platformImeOptions, bool, localeList, (jh2) null);
    }

    public /* synthetic */ KeyboardOptions(int i, boolean z, int i2, int i3, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? KeyboardCapitalization.Companion.m8707getUnspecifiedIUNYP9k() : i, (i4 & 2) != 0 ? Default.getAutoCorrectOrDefault() : z, (i4 & 4) != 0 ? KeyboardType.Companion.m8734getUnspecifiedPjHm6EE() : i2, (i4 & 8) != 0 ? ImeAction.Companion.m8672getDefaulteUduSuo() : i3, (jh2) null);
    }

    private KeyboardOptions(int i, boolean z, int i2, int i3) {
        this(i, Boolean.valueOf(z), i2, i3, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 96, (jh2) null);
    }

    public /* synthetic */ KeyboardOptions(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? KeyboardCapitalization.Companion.m8705getNoneIUNYP9k() : i, (i4 & 2) != 0 ? Default.getAutoCorrectOrDefault() : z, (i4 & 4) != 0 ? KeyboardType.Companion.m8733getTextPjHm6EE() : i2, (i4 & 8) != 0 ? ImeAction.Companion.m8672getDefaulteUduSuo() : i3, (i4 & 16) != 0 ? null : platformImeOptions, (jh2) null);
    }

    private KeyboardOptions(int i, boolean z, int i2, int i3, PlatformImeOptions platformImeOptions) {
        this(i, Boolean.valueOf(z), i2, i3, platformImeOptions, Boolean.valueOf(Default.getShowKeyboardOnFocusOrDefault$foundation()), (LocaleList) null, 64, (jh2) null);
    }
}
