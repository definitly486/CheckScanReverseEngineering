package androidx.privacysandbox.ads.adservices.adselection;

import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c31;
import defpackage.e02;
import defpackage.e2;
import defpackage.f02;
import defpackage.i8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n1;
import defpackage.o86;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes3.dex */
public class AdSelectionManagerImplCommon extends AdSelectionManager {
    private final android.adservices.adselection.AdSelectionManager mAdSelectionManager;

    /* JADX INFO: renamed from: androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon$selectAds$1, reason: invalid class name */
    @bd2(c = "androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon", f = "AdSelectionManagerImplCommon.kt", l = {44}, m = "selectAds$suspendImpl")
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AdSelectionManagerImplCommon.selectAds$suspendImpl(AdSelectionManagerImplCommon.this, (AdSelectionConfig) null, this);
        }
    }

    public AdSelectionManagerImplCommon(android.adservices.adselection.AdSelectionManager adSelectionManager) {
        adSelectionManager.getClass();
        this.mAdSelectionManager = adSelectionManager;
    }

    public static /* synthetic */ Object getAdSelectionData$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, GetAdSelectionDataRequest getAdSelectionDataRequest, e02<? super GetAdSelectionDataOutcome> e02Var) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) {
            return Ext10Impl.Companion.getAdSelectionData(adSelectionManagerImplCommon.mAdSelectionManager, getAdSelectionDataRequest, e02Var);
        }
        n1.e("API is not available. Min version is API 31 ext 10");
        return null;
    }

    public static /* synthetic */ Object persistAdSelectionResult$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, PersistAdSelectionResultRequest persistAdSelectionResultRequest, e02<? super AdSelectionOutcome> e02Var) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) {
            return Ext10Impl.Companion.persistAdSelectionResult(adSelectionManagerImplCommon.mAdSelectionManager, persistAdSelectionResultRequest, e02Var);
        }
        n1.e("API is not available. Min version is API 31 ext 10");
        return null;
    }

    public static Object reportEvent$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, ReportEventRequest reportEventRequest, e02<? super j59> e02Var) throws Throwable {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 8 || adServicesInfo.extServicesVersionS() >= 9) {
            Object objReportEvent = Ext8Impl.Companion.reportEvent(adSelectionManagerImplCommon.mAdSelectionManager, reportEventRequest, e02Var);
            return objReportEvent == a32.COROUTINE_SUSPENDED ? objReportEvent : j59.a;
        }
        n1.e("API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9");
        return null;
    }

    public static Object reportImpression$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, ReportImpressionRequest reportImpressionRequest, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        adSelectionManagerImplCommon.getMAdSelectionManager().reportImpression(reportImpressionRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object selectAds$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, AdSelectionConfig adSelectionConfig, e02<? super AdSelectionOutcome> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = adSelectionManagerImplCommon.new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = adSelectionManagerImplCommon.new AnonymousClass1(e02Var);
        }
        Object objSelectAdsInternal = anonymousClass1.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objSelectAdsInternal);
            android.adservices.adselection.AdSelectionConfig adSelectionConfigConvertToAdServices$ads_adservices_release = adSelectionConfig.convertToAdServices$ads_adservices_release();
            anonymousClass1.label = 1;
            objSelectAdsInternal = adSelectionManagerImplCommon.selectAdsInternal(adSelectionConfigConvertToAdServices$ads_adservices_release, anonymousClass1);
            if (objSelectAdsInternal == obj) {
                return obj;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objSelectAdsInternal);
        }
        return new AdSelectionOutcome(e2.c(objSelectAdsInternal));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object selectAdsInternal(android.adservices.adselection.AdSelectionConfig adSelectionConfig, e02<? super android.adservices.adselection.AdSelectionOutcome> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        getMAdSelectionManager().selectAds(adSelectionConfig, new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public static Object updateAdCounterHistogram$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, e02<? super j59> e02Var) throws Throwable {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 8 || adServicesInfo.extServicesVersionS() >= 9) {
            Object objUpdateAdCounterHistogram = Ext8Impl.Companion.updateAdCounterHistogram(adSelectionManagerImplCommon.mAdSelectionManager, updateAdCounterHistogramRequest, e02Var);
            return objUpdateAdCounterHistogram == a32.COROUTINE_SUSPENDED ? objUpdateAdCounterHistogram : j59.a;
        }
        n1.e("API is unsupported. Min version is API 33 ext 8 or API 31/32 ext 9");
        return null;
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    public Object getAdSelectionData(GetAdSelectionDataRequest getAdSelectionDataRequest, e02<? super GetAdSelectionDataOutcome> e02Var) {
        return getAdSelectionData$suspendImpl(this, getAdSelectionDataRequest, e02Var);
    }

    public final android.adservices.adselection.AdSelectionManager getMAdSelectionManager() {
        return this.mAdSelectionManager;
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    public Object persistAdSelectionResult(PersistAdSelectionResultRequest persistAdSelectionResultRequest, e02<? super AdSelectionOutcome> e02Var) {
        return persistAdSelectionResult$suspendImpl(this, persistAdSelectionResultRequest, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    public Object reportEvent(ReportEventRequest reportEventRequest, e02<? super j59> e02Var) {
        return reportEvent$suspendImpl(this, reportEventRequest, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    public Object reportImpression(ReportImpressionRequest reportImpressionRequest, e02<? super j59> e02Var) {
        return reportImpression$suspendImpl(this, reportImpressionRequest, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    public Object selectAds(AdSelectionConfig adSelectionConfig, e02<? super AdSelectionOutcome> e02Var) {
        return selectAds$suspendImpl(this, adSelectionConfig, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    public Object updateAdCounterHistogram(UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, e02<? super j59> e02Var) {
        return updateAdCounterHistogram$suspendImpl(this, updateAdCounterHistogramRequest, e02Var);
    }

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        private Ext10Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            public final Object getAdSelectionData(android.adservices.adselection.AdSelectionManager adSelectionManager, GetAdSelectionDataRequest getAdSelectionDataRequest, e02<? super GetAdSelectionDataOutcome> e02Var) throws Throwable {
                AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1;
                if (e02Var instanceof AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1) {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 = (AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1) e02Var;
                    int i = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label = i - Integer.MIN_VALUE;
                    } else {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1(this, e02Var);
                    }
                } else {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1(this, e02Var);
                }
                Object objS = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.result;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label;
                if (i2 == 0) {
                    r57.b(objS);
                    adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.L$0 = adSelectionManager;
                    adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.L$1 = getAdSelectionDataRequest;
                    adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.label = 1;
                    c31 c31Var = new c31(1, zya.b(adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1));
                    c31Var.u();
                    adSelectionManager.getAdSelectionData(getAdSelectionDataRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
                    objS = c31Var.s();
                    if (objS == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i8.c(adSelectionManagerImplCommon$Ext10Impl$Companion$getAdSelectionData$1.L$0);
                    r57.b(objS);
                }
                return new GetAdSelectionDataOutcome((android.adservices.adselection.GetAdSelectionDataOutcome) objS);
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            public final Object persistAdSelectionResult(android.adservices.adselection.AdSelectionManager adSelectionManager, PersistAdSelectionResultRequest persistAdSelectionResultRequest, e02<? super AdSelectionOutcome> e02Var) throws Throwable {
                AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1;
                if (e02Var instanceof AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1) {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 = (AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1) e02Var;
                    int i = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label = i - Integer.MIN_VALUE;
                    } else {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1(this, e02Var);
                    }
                } else {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1(this, e02Var);
                }
                Object objS = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.result;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label;
                if (i2 == 0) {
                    r57.b(objS);
                    adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.L$0 = adSelectionManager;
                    adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.L$1 = persistAdSelectionResultRequest;
                    adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.label = 1;
                    c31 c31Var = new c31(1, zya.b(adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1));
                    c31Var.u();
                    adSelectionManager.persistAdSelectionResult(persistAdSelectionResultRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
                    objS = c31Var.s();
                    if (objS == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i8.c(adSelectionManagerImplCommon$Ext10Impl$Companion$persistAdSelectionResult$1.L$0);
                    r57.b(objS);
                }
                return new AdSelectionOutcome(e2.c(objS));
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            public final Object selectAds(android.adservices.adselection.AdSelectionManager adSelectionManager, AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, e02<? super AdSelectionOutcome> e02Var) throws Throwable {
                AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1;
                if (e02Var instanceof AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1) {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 = (AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1) e02Var;
                    int i = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label = i - Integer.MIN_VALUE;
                    } else {
                        adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1(this, e02Var);
                    }
                } else {
                    adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1 = new AdSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1(this, e02Var);
                }
                Object objS = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.result;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label;
                if (i2 == 0) {
                    r57.b(objS);
                    adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.L$0 = adSelectionManager;
                    adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.L$1 = adSelectionFromOutcomesConfig;
                    adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.label = 1;
                    c31 c31Var = new c31(1, zya.b(adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1));
                    c31Var.u();
                    adSelectionManager.selectAds(adSelectionFromOutcomesConfig.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
                    objS = c31Var.s();
                    if (objS == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i2 != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i8.c(adSelectionManagerImplCommon$Ext10Impl$Companion$selectAds$1.L$0);
                    r57.b(objS);
                }
                return new AdSelectionOutcome(e2.c(objS));
            }

            private Companion() {
            }
        }
    }

    public static final class Ext8Impl {
        public static final Companion Companion = new Companion(null);

        private Ext8Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Object reportEvent(android.adservices.adselection.AdSelectionManager adSelectionManager, ReportEventRequest reportEventRequest, e02<? super j59> e02Var) throws Throwable {
                c31 c31Var = new c31(1, zya.b(e02Var));
                c31Var.u();
                adSelectionManager.reportEvent(reportEventRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
                Object objS = c31Var.s();
                return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
            }

            public final Object updateAdCounterHistogram(android.adservices.adselection.AdSelectionManager adSelectionManager, UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, e02<? super j59> e02Var) throws Throwable {
                c31 c31Var = new c31(1, zya.b(e02Var));
                c31Var.u();
                adSelectionManager.updateAdCounterHistogram(updateAdCounterHistogramRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
                Object objS = c31Var.s();
                return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
            }

            private Companion() {
            }
        }
    }

    @Override // androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager
    public Object selectAds(AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, e02<? super AdSelectionOutcome> e02Var) {
        return selectAds$suspendImpl(this, adSelectionFromOutcomesConfig, e02Var);
    }

    public static /* synthetic */ Object selectAds$suspendImpl(AdSelectionManagerImplCommon adSelectionManagerImplCommon, AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, e02<? super AdSelectionOutcome> e02Var) {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            n1.e("API is not available. Min version is API 31 ext 10");
            return null;
        }
        return Ext10Impl.Companion.selectAds(adSelectionManagerImplCommon.mAdSelectionManager, adSelectionFromOutcomesConfig, e02Var);
    }
}
