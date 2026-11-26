package io.appmetrica.analytics.impl;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Ib {
    public static final List a = u96.i(new Xe("plugin:Flutter:AppMetrica", Se.a("io.appmetrica.analytics.flutter.AppMetricaPlugin")), new Xe("plugin:React:AppMetrica", Se.a("io.appmetrica.analytics.reactnative.AppMetricaPackage")), new Xe("plugin:React:Varioqub", Se.a("com.varioqub.reactnative.VarioqubPackage")), new Xe("plugin:Unity:AdRevenueAdapter", Se.a("io.appmetrica.adrevenueadapter.plugin.unity.AdRevenueAdapterProxy")), new Xe("plugin:Unity:AppMetrica", Se.a("io.appmetrica.analytics.plugin.unity.AppMetricaProxy")));

    public static List a() {
        return a;
    }
}
