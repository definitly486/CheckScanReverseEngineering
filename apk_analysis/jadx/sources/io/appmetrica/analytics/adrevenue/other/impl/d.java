package io.appmetrica.analytics.adrevenue.other.impl;

import android.os.Bundle;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.adrevenue.other.internal.ClientSideAdRevenueOtherConfigWrapper;
import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements BundleToServiceConfigConverter {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ClientSideAdRevenueOtherConfigWrapper fromBundle(Bundle bundle) {
        return ClientSideAdRevenueOtherConfigWrapper.Companion.toWrapper$ad_revenue_other_release(new e(bundle.getBoolean(TJAdUnitConstants.String.ENABLED, f.a), bundle.getBoolean("include_source", f.b)));
    }
}
