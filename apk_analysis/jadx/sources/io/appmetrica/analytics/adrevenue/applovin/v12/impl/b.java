package io.appmetrica.analytics.adrevenue.applovin.v12.impl;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.b36;
import defpackage.n05;
import defpackage.yr;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Currency;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements ModuleAdRevenueProcessor {
    public final a a;
    public final ClientContext b;

    public b(a aVar, ClientContext clientContext) {
        this.a = aVar;
        this.b = clientContext;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final String getDescription() {
        return "AppLovin";
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final boolean process(Object... objArr) {
        ModuleAdType moduleAdType;
        String label;
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, MaxAd.class, AppLovinSdk.class)) {
            return false;
        }
        Object objO = yr.O(0, objArr);
        objO.getClass();
        MaxAd maxAd = (MaxAd) objO;
        Object objO2 = yr.O(1, objArr);
        objO2.getClass();
        AppLovinSdk appLovinSdk = (AppLovinSdk) objO2;
        this.a.getClass();
        MaxAdFormat format = maxAd.getFormat();
        if (format == null) {
            moduleAdType = null;
        } else if (format.equals(MaxAdFormat.NATIVE)) {
            moduleAdType = ModuleAdType.NATIVE;
        } else if (format.equals(MaxAdFormat.BANNER)) {
            moduleAdType = ModuleAdType.BANNER;
        } else if (format.equals(MaxAdFormat.REWARDED)) {
            moduleAdType = ModuleAdType.REWARDED;
        } else if (format.equals(MaxAdFormat.INTERSTITIAL)) {
            moduleAdType = ModuleAdType.INTERSTITIAL;
        } else if (format.equals(MaxAdFormat.MREC)) {
            moduleAdType = ModuleAdType.MREC;
        } else {
            moduleAdType = format.equals(MaxAdFormat.APP_OPEN) ? ModuleAdType.APP_OPEN : ModuleAdType.OTHER;
        }
        ModuleAdType moduleAdType2 = moduleAdType;
        b36 b36Var = new b36(RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE, appLovinSdk.getConfiguration().getCountryCode());
        b36 b36Var2 = new b36(AdRevenueConstants.ORIGINAL_SOURCE_KEY, "ad-revenue-applovin-v12");
        MaxAdFormat format2 = maxAd.getFormat();
        if (format2 == null || (label = format2.getLabel()) == null) {
            label = "null";
        }
        this.b.getInternalClientModuleFacade().reportAdRevenue(new ModuleAdRevenue(BigDecimal.valueOf(WrapUtils.getFiniteDoubleOrDefault(maxAd.getRevenue(), 0.0d)), Currency.getInstance("USD"), moduleAdType2, maxAd.getNetworkName(), maxAd.getAdUnitId(), null, maxAd.getNetworkPlacement(), maxAd.getPlacement(), maxAd.getRevenuePrecision(), n05.e(b36Var, b36Var2, new b36(AdRevenueConstants.ORIGINAL_AD_TYPE_KEY, label), new b36("source", "applovin")), false, 32, null));
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue from AppLovin with values " + Arrays.toString(objArr) + " was reported", new Object[0]);
        return true;
    }
}
