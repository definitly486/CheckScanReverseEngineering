package io.appmetrica.analytics.location.impl;

import android.content.Context;
import android.location.LocationListener;
import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.permission.SinglePermissionStrategy;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractor;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiver;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class q implements LastKnownLocationExtractorProvider, LocationReceiverProvider {
    public final String a = "location-passive-provider";
    public r b;

    public final r a(Context context, PermissionExtractor permissionExtractor, IHandlerExecutor iHandlerExecutor, LocationListener locationListener) {
        return c(context, permissionExtractor, iHandlerExecutor, locationListener);
    }

    public final r b(Context context, PermissionExtractor permissionExtractor, IHandlerExecutor iHandlerExecutor, LocationListener locationListener) {
        return c(context, permissionExtractor, iHandlerExecutor, locationListener);
    }

    public final synchronized r c(Context context, PermissionExtractor permissionExtractor, IHandlerExecutor iHandlerExecutor, LocationListener locationListener) {
        r rVar;
        rVar = this.b;
        if (rVar == null) {
            rVar = new r(context, iHandlerExecutor.getLooper(), new SinglePermissionStrategy(permissionExtractor, "android.permission.ACCESS_FINE_LOCATION"), locationListener);
            this.b = rVar;
        }
        if (rVar == null) {
            aa4.j("passiveProviderLocationReceiver");
            throw null;
        }
        return rVar;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider
    public final LastKnownLocationExtractor getExtractor(Context context, PermissionExtractor permissionExtractor, IHandlerExecutor iHandlerExecutor, LocationListener locationListener) {
        return c(context, permissionExtractor, iHandlerExecutor, locationListener);
    }

    @Override // io.appmetrica.analytics.locationapi.internal.Identifiable
    public final String getIdentifier() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider
    public final LocationReceiver getLocationReceiver(Context context, PermissionExtractor permissionExtractor, IHandlerExecutor iHandlerExecutor, LocationListener locationListener) {
        return c(context, permissionExtractor, iHandlerExecutor, locationListener);
    }
}
