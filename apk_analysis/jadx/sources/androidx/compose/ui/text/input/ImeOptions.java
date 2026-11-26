package androidx.compose.ui.text.input;

import androidx.compose.ui.text.intl.LocaleList;
import androidx.tracing.Trace;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.tg;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class ImeOptions {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final ImeOptions Default = new ImeOptions(false, 0, false, 0, 0, null, null, Trace.MAX_TRACE_LABEL_LENGTH, null);
    private final boolean autoCorrect;
    private final int capitalization;
    private final LocaleList hintLocales;
    private final int imeAction;
    private final int keyboardType;
    private final PlatformImeOptions platformImeOptions;
    private final boolean singleLine;

    public /* synthetic */ ImeOptions(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, LocaleList localeList, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? false : z, (i4 & 2) != 0 ? KeyboardCapitalization.Companion.m8705getNoneIUNYP9k() : i, (i4 & 4) != 0 ? true : z2, (i4 & 8) != 0 ? KeyboardType.Companion.m8733getTextPjHm6EE() : i2, (i4 & 16) != 0 ? ImeAction.Companion.m8672getDefaulteUduSuo() : i3, (i4 & 32) != 0 ? null : platformImeOptions, (i4 & 64) != 0 ? LocaleList.Companion.getEmpty() : localeList, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-YTHSh70$default, reason: not valid java name */
    public static /* synthetic */ ImeOptions m8681copyYTHSh70$default(ImeOptions imeOptions, boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z = imeOptions.singleLine;
        }
        if ((i4 & 2) != 0) {
            i = imeOptions.capitalization;
        }
        if ((i4 & 4) != 0) {
            z2 = imeOptions.autoCorrect;
        }
        if ((i4 & 8) != 0) {
            i2 = imeOptions.keyboardType;
        }
        if ((i4 & 16) != 0) {
            i3 = imeOptions.imeAction;
        }
        if ((i4 & 32) != 0) {
            platformImeOptions = imeOptions.platformImeOptions;
        }
        int i5 = i3;
        PlatformImeOptions platformImeOptions2 = platformImeOptions;
        return imeOptions.m8684copyYTHSh70(z, i, z2, i2, i5, platformImeOptions2);
    }

    /* JADX INFO: renamed from: copy-uxg59PA$default, reason: not valid java name */
    public static /* synthetic */ ImeOptions m8682copyuxg59PA$default(ImeOptions imeOptions, boolean z, int i, boolean z2, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z = imeOptions.singleLine;
        }
        if ((i4 & 2) != 0) {
            i = imeOptions.capitalization;
        }
        if ((i4 & 4) != 0) {
            z2 = imeOptions.autoCorrect;
        }
        if ((i4 & 8) != 0) {
            i2 = imeOptions.keyboardType;
        }
        if ((i4 & 16) != 0) {
            i3 = imeOptions.imeAction;
        }
        int i5 = i3;
        boolean z3 = z2;
        return imeOptions.m8685copyuxg59PA(z, i, z3, i2, i5);
    }

    /* JADX INFO: renamed from: copy-wBHncE4$default, reason: not valid java name */
    public static /* synthetic */ ImeOptions m8683copywBHncE4$default(ImeOptions imeOptions, boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, LocaleList localeList, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z = imeOptions.singleLine;
        }
        if ((i4 & 2) != 0) {
            i = imeOptions.capitalization;
        }
        if ((i4 & 4) != 0) {
            z2 = imeOptions.autoCorrect;
        }
        if ((i4 & 8) != 0) {
            i2 = imeOptions.keyboardType;
        }
        if ((i4 & 16) != 0) {
            i3 = imeOptions.imeAction;
        }
        if ((i4 & 32) != 0) {
            platformImeOptions = imeOptions.platformImeOptions;
        }
        if ((i4 & 64) != 0) {
            localeList = imeOptions.hintLocales;
        }
        PlatformImeOptions platformImeOptions2 = platformImeOptions;
        LocaleList localeList2 = localeList;
        int i5 = i3;
        boolean z3 = z2;
        return imeOptions.m8686copywBHncE4(z, i, z3, i2, i5, platformImeOptions2, localeList2);
    }

    @ul2
    /* JADX INFO: renamed from: copy-YTHSh70, reason: not valid java name */
    public final /* synthetic */ ImeOptions m8684copyYTHSh70(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions) {
        return new ImeOptions(z, i, z2, i2, i3, platformImeOptions, this.hintLocales, (jh2) null);
    }

    @ul2
    /* JADX INFO: renamed from: copy-uxg59PA, reason: not valid java name */
    public final /* synthetic */ ImeOptions m8685copyuxg59PA(boolean z, int i, boolean z2, int i2, int i3) {
        return new ImeOptions(z, i, z2, i2, i3, this.platformImeOptions, this.hintLocales, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-wBHncE4, reason: not valid java name */
    public final ImeOptions m8686copywBHncE4(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, LocaleList localeList) {
        return new ImeOptions(z, i, z2, i2, i3, platformImeOptions, localeList, (jh2) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImeOptions)) {
            return false;
        }
        ImeOptions imeOptions = (ImeOptions) obj;
        return this.singleLine == imeOptions.singleLine && KeyboardCapitalization.m8695equalsimpl0(this.capitalization, imeOptions.capitalization) && this.autoCorrect == imeOptions.autoCorrect && KeyboardType.m8712equalsimpl0(this.keyboardType, imeOptions.keyboardType) && ImeAction.m8659equalsimpl0(this.imeAction, imeOptions.imeAction) && aa4.e(this.platformImeOptions, imeOptions.platformImeOptions) && aa4.e(this.hintLocales, imeOptions.hintLocales);
    }

    public final boolean getAutoCorrect() {
        return this.autoCorrect;
    }

    /* JADX INFO: renamed from: getCapitalization-IUNYP9k, reason: not valid java name */
    public final int m8687getCapitalizationIUNYP9k() {
        return this.capitalization;
    }

    public final LocaleList getHintLocales() {
        return this.hintLocales;
    }

    /* JADX INFO: renamed from: getImeAction-eUduSuo, reason: not valid java name */
    public final int m8688getImeActioneUduSuo() {
        return this.imeAction;
    }

    /* JADX INFO: renamed from: getKeyboardType-PjHm6EE, reason: not valid java name */
    public final int m8689getKeyboardTypePjHm6EE() {
        return this.keyboardType;
    }

    public final PlatformImeOptions getPlatformImeOptions() {
        return this.platformImeOptions;
    }

    public final boolean getSingleLine() {
        return this.singleLine;
    }

    public int hashCode() {
        int iM8660hashCodeimpl = (ImeAction.m8660hashCodeimpl(this.imeAction) + ((KeyboardType.m8713hashCodeimpl(this.keyboardType) + tg.c((KeyboardCapitalization.m8696hashCodeimpl(this.capitalization) + (Boolean.hashCode(this.singleLine) * 31)) * 31, 31, this.autoCorrect)) * 31)) * 31;
        PlatformImeOptions platformImeOptions = this.platformImeOptions;
        return this.hintLocales.hashCode() + ((iM8660hashCodeimpl + (platformImeOptions != null ? platformImeOptions.hashCode() : 0)) * 31);
    }

    public String toString() {
        return "ImeOptions(singleLine=" + this.singleLine + ", capitalization=" + ((Object) KeyboardCapitalization.m8697toStringimpl(this.capitalization)) + ", autoCorrect=" + this.autoCorrect + ", keyboardType=" + ((Object) KeyboardType.m8714toStringimpl(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.m8661toStringimpl(this.imeAction)) + ", platformImeOptions=" + this.platformImeOptions + ", hintLocales=" + this.hintLocales + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ImeOptions getDefault() {
            return ImeOptions.Default;
        }

        private Companion() {
        }
    }

    @ul2
    public /* synthetic */ ImeOptions(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, jh2 jh2Var) {
        this(z, i, z2, i2, i3, platformImeOptions);
    }

    public /* synthetic */ ImeOptions(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, LocaleList localeList, jh2 jh2Var) {
        this(z, i, z2, i2, i3, platformImeOptions, localeList);
    }

    private ImeOptions(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, LocaleList localeList) {
        this.singleLine = z;
        this.capitalization = i;
        this.autoCorrect = z2;
        this.keyboardType = i2;
        this.imeAction = i3;
        this.platformImeOptions = platformImeOptions;
        this.hintLocales = localeList;
    }

    @ul2
    public /* synthetic */ ImeOptions(boolean z, int i, boolean z2, int i2, int i3, jh2 jh2Var) {
        this(z, i, z2, i2, i3);
    }

    public /* synthetic */ ImeOptions(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? false : z, (i4 & 2) != 0 ? KeyboardCapitalization.Companion.m8705getNoneIUNYP9k() : i, (i4 & 4) != 0 ? true : z2, (i4 & 8) != 0 ? KeyboardType.Companion.m8733getTextPjHm6EE() : i2, (i4 & 16) != 0 ? ImeAction.Companion.m8672getDefaulteUduSuo() : i3, (i4 & 32) != 0 ? null : platformImeOptions, (jh2) null);
    }

    private ImeOptions(boolean z, int i, boolean z2, int i2, int i3, PlatformImeOptions platformImeOptions) {
        this(z, i, z2, i2, i3, platformImeOptions, LocaleList.Companion.getEmpty(), (jh2) null);
    }

    public /* synthetic */ ImeOptions(boolean z, int i, boolean z2, int i2, int i3, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? false : z, (i4 & 2) != 0 ? KeyboardCapitalization.Companion.m8705getNoneIUNYP9k() : i, (i4 & 4) != 0 ? true : z2, (i4 & 8) != 0 ? KeyboardType.Companion.m8733getTextPjHm6EE() : i2, (i4 & 16) != 0 ? ImeAction.Companion.m8672getDefaulteUduSuo() : i3, (jh2) null);
    }

    private ImeOptions(boolean z, int i, boolean z2, int i2, int i3) {
        this(z, i, z2, i2, i3, null, null, 64, null);
    }
}
