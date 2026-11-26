package com.yandex.mobile.ads.common;

import com.tapjoy.TapjoyConstants;
import defpackage.g03;
import defpackage.i03;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.common.AdTheme[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.common.AdTheme[]) from 0x0020: CONSTRUCTOR (r0v1 com.yandex.mobile.ads.common.AdTheme[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes6.dex */
public final class AdTheme {
    LIGHT(TapjoyConstants.TJC_THEME_LIGHT),
    DARK(TapjoyConstants.TJC_THEME_DARK);

    private static final /* synthetic */ g03 d;
    private final String b;

    static {
        d = new i03(adThemeArr);
    }

    private AdTheme(String str) {
        super(str, i);
        this.b = str;
    }

    public static AdTheme valueOf(String str) {
        return (AdTheme) Enum.valueOf(AdTheme.class, str);
    }

    public static AdTheme[] values() {
        return (AdTheme[]) c.clone();
    }
}
