package io.appmetrica.analytics.impl;

import android.location.Location;
import android.os.Bundle;
import io.appmetrica.analytics.AdvIdentifiersResult;
import io.appmetrica.analytics.AppMetricaConfig;
import io.appmetrica.analytics.AppMetricaLibraryAdapterConfig;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class H0 implements Qa {
    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(StartupParamsCallback startupParamsCallback, List<String> list) {
        startupParamsCallback.onRequestError(StartupParamsCallback.Reason.UNKNOWN, null);
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void b(AppMetricaConfig appMetricaConfig) {
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final InterfaceC0814bb c(ReporterConfig reporterConfig) {
        return new C1183pi();
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void clearAppEnvironment() {
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final C1045ka d() {
        return new C1045ka();
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final String e() {
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final Map<String, String> g() {
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final AdvIdentifiersResult h() {
        AdvIdentifiersResult.Details details = AdvIdentifiersResult.Details.INTERNAL_ERROR;
        return new AdvIdentifiersResult(new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"), new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"), new AdvIdentifiersResult.AdvId(null, details, "Device user is in locked state"));
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final C1406yc i() {
        Lc lc = new Lc();
        return new C1406yc(lc, new K7(lc));
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void putAppEnvironmentValue(String str, String str2) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void setDataSendingEnabled(boolean z) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void setUserProfileID(String str) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(Location location) {
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(AppMetricaLibraryAdapterConfig appMetricaLibraryAdapterConfig) {
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(DeferredDeeplinkListener deferredDeeplinkListener) {
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final void a(ReporterConfig reporterConfig) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(String str) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(String str, String str2) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(boolean z) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.Uc
    public final void a(boolean z, boolean z2) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.O6
    public final void a(int i, Bundle bundle) {
    }

    @Override // io.appmetrica.analytics.impl.Qa, io.appmetrica.analytics.impl.InterfaceC0866db
    public final InterfaceC0840cb a() {
        return new C1260si();
    }
}
