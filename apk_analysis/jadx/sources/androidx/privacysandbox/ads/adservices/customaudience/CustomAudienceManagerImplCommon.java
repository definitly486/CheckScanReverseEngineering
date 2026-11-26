package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.common.AdData;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.n1;
import defpackage.o86;
import defpackage.zya;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CustomAudienceManagerImplCommon extends CustomAudienceManager {
    private final android.adservices.customaudience.CustomAudienceManager customAudienceManager;

    public CustomAudienceManagerImplCommon(android.adservices.customaudience.CustomAudienceManager customAudienceManager) {
        customAudienceManager.getClass();
        this.customAudienceManager = customAudienceManager;
    }

    private final List<AdData> convertAds(List<androidx.privacysandbox.ads.adservices.common.AdData> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<androidx.privacysandbox.ads.adservices.common.AdData> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    private final android.adservices.customaudience.CustomAudience convertCustomAudience(CustomAudience customAudience) {
        android.adservices.customaudience.CustomAudience.Builder trustedBiddingData = new android.adservices.customaudience.CustomAudience.Builder().setActivationTime(customAudience.getActivationTime()).setAds(convertAds(customAudience.getAds())).setBiddingLogicUri(customAudience.getBiddingLogicUri()).setBuyer(customAudience.getBuyer().convertToAdServices$ads_adservices_release()).setDailyUpdateUri(customAudience.getDailyUpdateUri()).setExpirationTime(customAudience.getExpirationTime()).setName(customAudience.getName()).setTrustedBiddingData(convertTrustedSignals(customAudience.getTrustedBiddingSignals()));
        AdSelectionSignals userBiddingSignals = customAudience.getUserBiddingSignals();
        android.adservices.customaudience.CustomAudience customAudienceBuild = trustedBiddingData.setUserBiddingSignals(userBiddingSignals != null ? userBiddingSignals.convertToAdServices$ads_adservices_release() : null).build();
        customAudienceBuild.getClass();
        return customAudienceBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.adservices.customaudience.JoinCustomAudienceRequest convertJoinRequest(JoinCustomAudienceRequest joinCustomAudienceRequest) {
        android.adservices.customaudience.JoinCustomAudienceRequest joinCustomAudienceRequestBuild = new android.adservices.customaudience.JoinCustomAudienceRequest.Builder().setCustomAudience(convertCustomAudience(joinCustomAudienceRequest.getCustomAudience())).build();
        joinCustomAudienceRequestBuild.getClass();
        return joinCustomAudienceRequestBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.adservices.customaudience.LeaveCustomAudienceRequest convertLeaveRequest(LeaveCustomAudienceRequest leaveCustomAudienceRequest) {
        android.adservices.customaudience.LeaveCustomAudienceRequest leaveCustomAudienceRequestBuild = new android.adservices.customaudience.LeaveCustomAudienceRequest.Builder().setBuyer(leaveCustomAudienceRequest.getBuyer().convertToAdServices$ads_adservices_release()).setName(leaveCustomAudienceRequest.getName()).build();
        leaveCustomAudienceRequestBuild.getClass();
        return leaveCustomAudienceRequestBuild;
    }

    private final android.adservices.customaudience.TrustedBiddingData convertTrustedSignals(TrustedBiddingData trustedBiddingData) {
        if (trustedBiddingData == null) {
            return null;
        }
        return new android.adservices.customaudience.TrustedBiddingData.Builder().setTrustedBiddingKeys(trustedBiddingData.getTrustedBiddingKeys()).setTrustedBiddingUri(trustedBiddingData.getTrustedBiddingUri()).build();
    }

    public static Object fetchAndJoinCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, e02<? super j59> e02Var) throws Throwable {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) {
            Object objFetchAndJoinCustomAudience = Ext10Impl.Companion.fetchAndJoinCustomAudience(customAudienceManagerImplCommon.customAudienceManager, fetchAndJoinCustomAudienceRequest, e02Var);
            return objFetchAndJoinCustomAudience == a32.COROUTINE_SUSPENDED ? objFetchAndJoinCustomAudience : j59.a;
        }
        n1.e("API is not available. Min version is API 31 ext 10");
        return null;
    }

    public static Object joinCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, JoinCustomAudienceRequest joinCustomAudienceRequest, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        customAudienceManagerImplCommon.getCustomAudienceManager().joinCustomAudience(customAudienceManagerImplCommon.convertJoinRequest(joinCustomAudienceRequest), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public static Object leaveCustomAudience$suspendImpl(CustomAudienceManagerImplCommon customAudienceManagerImplCommon, LeaveCustomAudienceRequest leaveCustomAudienceRequest, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        customAudienceManagerImplCommon.getCustomAudienceManager().leaveCustomAudience(customAudienceManagerImplCommon.convertLeaveRequest(leaveCustomAudienceRequest), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
    public Object fetchAndJoinCustomAudience(FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, e02<? super j59> e02Var) {
        return fetchAndJoinCustomAudience$suspendImpl(this, fetchAndJoinCustomAudienceRequest, e02Var);
    }

    public final android.adservices.customaudience.CustomAudienceManager getCustomAudienceManager() {
        return this.customAudienceManager;
    }

    @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
    public Object joinCustomAudience(JoinCustomAudienceRequest joinCustomAudienceRequest, e02<? super j59> e02Var) {
        return joinCustomAudience$suspendImpl(this, joinCustomAudienceRequest, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.customaudience.CustomAudienceManager
    public Object leaveCustomAudience(LeaveCustomAudienceRequest leaveCustomAudienceRequest, e02<? super j59> e02Var) {
        return leaveCustomAudience$suspendImpl(this, leaveCustomAudienceRequest, e02Var);
    }

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        private Ext10Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Object fetchAndJoinCustomAudience(android.adservices.customaudience.CustomAudienceManager customAudienceManager, FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest, e02<? super j59> e02Var) throws Throwable {
                c31 c31Var = new c31(1, zya.b(e02Var));
                c31Var.u();
                customAudienceManager.fetchAndJoinCustomAudience(fetchAndJoinCustomAudienceRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
                Object objS = c31Var.s();
                return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
            }

            private Companion() {
            }
        }
    }
}
