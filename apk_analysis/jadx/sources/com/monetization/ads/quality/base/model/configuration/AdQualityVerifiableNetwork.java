package com.monetization.ads.quality.base.model.configuration;

import defpackage.g03;
import defpackage.i03;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v18 com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork[], still in use, count: 1, list:
  (r0v18 com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork[]) from 0x00d8: CONSTRUCTOR (r0v18 com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes6.dex */
public final class AdQualityVerifiableNetwork {
    APPLOVIN,
    APPLOVINMAX,
    BIGOADS,
    CHARTBOOST,
    DIGITALTURBINE,
    GOOGLE,
    ADMOB,
    INMOBI,
    IRONSOURCE,
    LEVELPLAY,
    MINTEGRAL,
    MYTARGET,
    PANGLE,
    TAPJOY,
    UNITYADS,
    VUNGLE,
    YANDEX,
    UNKNOWN;

    private static final /* synthetic */ g03 $ENTRIES;

    static {
        $ENTRIES = new i03(adQualityVerifiableNetworkArr);
    }

    private AdQualityVerifiableNetwork() {
        super(str, i);
    }

    public static AdQualityVerifiableNetwork valueOf(String str) {
        return (AdQualityVerifiableNetwork) Enum.valueOf(AdQualityVerifiableNetwork.class, str);
    }

    public static AdQualityVerifiableNetwork[] values() {
        return (AdQualityVerifiableNetwork[]) $VALUES.clone();
    }
}
