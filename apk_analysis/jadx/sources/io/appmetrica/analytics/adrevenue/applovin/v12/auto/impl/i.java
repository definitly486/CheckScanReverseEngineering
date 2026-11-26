package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import android.os.Bundle;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.ClientApplovinConfigWrapper;
import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class i implements BundleToServiceConfigConverter {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ClientApplovinConfigWrapper fromBundle(Bundle bundle) {
        return ClientApplovinConfigWrapper.Companion.toWrapper$ad_revenue_applovin_v12_auto_release(new j(bundle.getBoolean(TJAdUnitConstants.String.ENABLED, k.a)));
    }
}
