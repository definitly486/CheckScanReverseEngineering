package androidx.privacysandbox.ads.adservices.java.measurement;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.measurement.DeletionRequest;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import androidx.privacysandbox.ads.adservices.measurement.SourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebSourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebTriggerRegistrationRequest;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.av0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qo2;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MeasurementManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final MeasurementManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract ListenableFuture<j59> deleteRegistrationsAsync(DeletionRequest deletionRequest);

    public abstract ListenableFuture<Integer> getMeasurementApiStatusAsync();

    public abstract ListenableFuture<j59> registerSourceAsync(Uri uri, InputEvent inputEvent);

    @ExperimentalFeatures.RegisterSourceOptIn
    public abstract ListenableFuture<j59> registerSourceAsync(SourceRegistrationRequest sourceRegistrationRequest);

    public abstract ListenableFuture<j59> registerTriggerAsync(Uri uri);

    public abstract ListenableFuture<j59> registerWebSourceAsync(WebSourceRegistrationRequest webSourceRegistrationRequest);

    public abstract ListenableFuture<j59> registerWebTriggerAsync(WebTriggerRegistrationRequest webTriggerRegistrationRequest);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final MeasurementManagerFutures from(Context context) {
            context.getClass();
            MeasurementManager measurementManagerObtain = MeasurementManager.Companion.obtain(context);
            if (measurementManagerObtain != null) {
                return new Api33Ext5JavaImpl(measurementManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    public static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {
        private final MeasurementManager mMeasurementManager;

        public Api33Ext5JavaImpl(MeasurementManager measurementManager) {
            measurementManager.getClass();
            this.mMeasurementManager = measurementManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture<j59> deleteRegistrationsAsync(DeletionRequest deletionRequest) {
            deletionRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, deletionRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture<Integer> getMeasurementApiStatusAsync() {
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture<j59> registerSourceAsync(Uri uri, InputEvent inputEvent) {
            uri.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, uri, inputEvent, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture<j59> registerTriggerAsync(Uri uri) {
            uri.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, uri, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture<j59> registerWebSourceAsync(WebSourceRegistrationRequest webSourceRegistrationRequest) {
            webSourceRegistrationRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, webSourceRegistrationRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture<j59> registerWebTriggerAsync(WebTriggerRegistrationRequest webTriggerRegistrationRequest) {
            webTriggerRegistrationRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, webTriggerRegistrationRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @ExperimentalFeatures.RegisterSourceOptIn
        public ListenableFuture<j59> registerSourceAsync(SourceRegistrationRequest sourceRegistrationRequest) {
            sourceRegistrationRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$2(this, sourceRegistrationRequest, null), 3), null, 1, null);
        }
    }
}
