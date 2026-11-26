package androidx.compose.ui.text.intl;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidLocaleDelegateAPI23 implements PlatformLocaleDelegate {
    public static final int $stable = 0;

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public LocaleList getCurrent() {
        return new LocaleList((List<Locale>) u96.h(new Locale(java.util.Locale.getDefault())));
    }
}
