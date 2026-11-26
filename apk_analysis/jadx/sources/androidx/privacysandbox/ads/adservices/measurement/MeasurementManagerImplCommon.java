package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.o86;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import defpackage.zya;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MeasurementManagerImplCommon extends MeasurementManager {
    private final android.adservices.measurement.MeasurementManager mMeasurementManager;

    /* JADX INFO: renamed from: androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4, reason: invalid class name */
    @bd2(c = "androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4", f = "MeasurementManagerImplCommon.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ SourceRegistrationRequest $request;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ MeasurementManagerImplCommon this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(SourceRegistrationRequest sourceRegistrationRequest, MeasurementManagerImplCommon measurementManagerImplCommon, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$request = sourceRegistrationRequest;
            this.this$0 = measurementManagerImplCommon;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$request, this.this$0, e02Var);
            anonymousClass4.L$0 = obj;
            return anonymousClass4;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            List<Uri> registrationUris = this.$request.getRegistrationUris();
            MeasurementManagerImplCommon measurementManagerImplCommon = this.this$0;
            SourceRegistrationRequest sourceRegistrationRequest = this.$request;
            Iterator<T> it = registrationUris.iterator();
            while (it.hasNext()) {
                av0.c(y22Var, null, null, new MeasurementManagerImplCommon$registerSource$4$1$1(measurementManagerImplCommon, (Uri) it.next(), sourceRegistrationRequest, null), 3);
            }
            return j59.a;
        }
    }

    public MeasurementManagerImplCommon(android.adservices.measurement.MeasurementManager measurementManager) {
        measurementManager.getClass();
        this.mMeasurementManager = measurementManager;
    }

    public static Object deleteRegistrations$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, DeletionRequest deletionRequest, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        measurementManagerImplCommon.getMMeasurementManager().deleteRegistrations(deletionRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public static Object getMeasurementApiStatus$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, e02<? super Integer> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        measurementManagerImplCommon.getMMeasurementManager().getMeasurementApiStatus(new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public static Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, InputEvent inputEvent, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        measurementManagerImplCommon.getMMeasurementManager().registerSource(uri, inputEvent, new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public static Object registerTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        measurementManagerImplCommon.getMMeasurementManager().registerTrigger(uri, new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public static Object registerWebSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebSourceRegistrationRequest webSourceRegistrationRequest, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        measurementManagerImplCommon.getMMeasurementManager().registerWebSource(webSourceRegistrationRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public static Object registerWebTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebTriggerRegistrationRequest webTriggerRegistrationRequest, e02<? super j59> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        measurementManagerImplCommon.getMMeasurementManager().registerWebTrigger(webTriggerRegistrationRequest.convertToAdServices$ads_adservices_release(), new o86(), OutcomeReceiverKt.asOutcomeReceiver(c31Var));
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object deleteRegistrations(DeletionRequest deletionRequest, e02<? super j59> e02Var) {
        return deleteRegistrations$suspendImpl(this, deletionRequest, e02Var);
    }

    public final android.adservices.measurement.MeasurementManager getMMeasurementManager() {
        return this.mMeasurementManager;
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object getMeasurementApiStatus(e02<? super Integer> e02Var) {
        return getMeasurementApiStatus$suspendImpl(this, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerSource(Uri uri, InputEvent inputEvent, e02<? super j59> e02Var) {
        return registerSource$suspendImpl(this, uri, inputEvent, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerTrigger(Uri uri, e02<? super j59> e02Var) {
        return registerTrigger$suspendImpl(this, uri, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerWebSource(WebSourceRegistrationRequest webSourceRegistrationRequest, e02<? super j59> e02Var) {
        return registerWebSource$suspendImpl(this, webSourceRegistrationRequest, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    public Object registerWebTrigger(WebTriggerRegistrationRequest webTriggerRegistrationRequest, e02<? super j59> e02Var) {
        return registerWebTrigger$suspendImpl(this, webTriggerRegistrationRequest, e02Var);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @ExperimentalFeatures.RegisterSourceOptIn
    public Object registerSource(SourceRegistrationRequest sourceRegistrationRequest, e02<? super j59> e02Var) {
        return registerSource$suspendImpl(this, sourceRegistrationRequest, e02Var);
    }

    @ExperimentalFeatures.RegisterSourceOptIn
    public static Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, SourceRegistrationRequest sourceRegistrationRequest, e02<? super j59> e02Var) {
        Object objC = z22.c(new AnonymousClass4(sourceRegistrationRequest, measurementManagerImplCommon, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }
}
