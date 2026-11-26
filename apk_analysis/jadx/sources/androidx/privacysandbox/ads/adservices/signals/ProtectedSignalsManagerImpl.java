package androidx.privacysandbox.ads.adservices.signals;

import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.o86;
import defpackage.zya;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext12OptIn
public class ProtectedSignalsManagerImpl extends ProtectedSignalsManager {
    private final android.adservices.signals.ProtectedSignalsManager protectedSignalsManager;

    public ProtectedSignalsManagerImpl(android.adservices.signals.ProtectedSignalsManager protectedSignalsManager) {
        protectedSignalsManager.getClass();
        this.protectedSignalsManager = protectedSignalsManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.adservices.signals.UpdateSignalsRequest convertUpdateRequest(UpdateSignalsRequest updateSignalsRequest) {
        android.adservices.signals.UpdateSignalsRequest updateSignalsRequestBuild = new android.adservices.signals.UpdateSignalsRequest.Builder(updateSignalsRequest.getUpdateUri()).build();
        updateSignalsRequestBuild.getClass();
        return updateSignalsRequestBuild;
    }

    public static Object updateSignals$suspendImpl(ProtectedSignalsManagerImpl protectedSignalsManagerImpl, UpdateSignalsRequest updateSignalsRequest, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        protectedSignalsManagerImpl.protectedSignalsManager.updateSignals(protectedSignalsManagerImpl.convertUpdateRequest(updateSignalsRequest), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    @Override // androidx.privacysandbox.ads.adservices.signals.ProtectedSignalsManager
    public Object updateSignals(UpdateSignalsRequest updateSignalsRequest, e02<? super j59> e02Var) {
        return updateSignals$suspendImpl(this, updateSignalsRequest, e02Var);
    }
}
