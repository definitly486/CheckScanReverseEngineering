package com.yandex.varioqub.appmetricaadapter;

import android.content.Context;
import com.tapjoy.TJVerifierKt;
import com.yandex.varioqub.analyticadapter.AdapterIdentifiersCallback;
import com.yandex.varioqub.analyticadapter.VarioqubConfigAdapter;
import com.yandex.varioqub.analyticadapter.data.ConfigData;
import com.yandex.varioqub.appmetricaadapter.impl.c;
import com.yandex.varioqub.appmetricaadapter.impl.d;
import com.yandex.varioqub.appmetricaadapter.impl.f;
import com.yandex.varioqub.appmetricaadapter.impl.i;
import com.yandex.varioqub.appmetricaadapter.impl.j;
import com.yandex.varioqub.appmetricaadapter.impl.k;
import com.yandex.varioqub.protobuf.nano.MessageNano;
import defpackage.ox2;
import defpackage.qn1;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class AppMetricaAdapter implements VarioqubConfigAdapter {
    public final Context a;
    public final d b;
    public String c;
    public Set d;
    public final String e;

    static {
        new Companion(0);
    }

    public AppMetricaAdapter(Context context) {
        Class<?> cls;
        d iVar;
        this.a = context;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("io.appmetrica.analytics.AppMetrica", false, j.class.getClassLoader());
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            iVar = new c();
        } else {
            try {
                cls2 = Class.forName("com.yandex.metrica.YandexMetrica", false, j.class.getClassLoader());
            } catch (Throwable unused2) {
            }
            iVar = cls2 != null ? new i() : new f();
        }
        this.b = iVar;
        this.c = "";
        this.d = ox2.b;
        this.e = "AppMetricaAdapter";
    }

    @Override // com.yandex.varioqub.analyticadapter.VarioqubConfigAdapter
    public final String getAdapterName() {
        return this.e;
    }

    @Override // com.yandex.varioqub.analyticadapter.VarioqubConfigReporter
    public final void reportConfigChanged(ConfigData configData) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("old_config", configData.getOldConfigVersion());
        linkedHashMap.put("new_config", configData.getNewConfigVersion());
        linkedHashMap.put(TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(configData.getConfigLoadTimestamp()));
        this.b.b(linkedHashMap);
    }

    @Override // com.yandex.varioqub.analyticadapter.VarioqubConfigClientIdentifiersProvider
    public final void requestDeviceId(AdapterIdentifiersCallback adapterIdentifiersCallback) {
        this.b.c(this.a, adapterIdentifiersCallback);
    }

    @Override // com.yandex.varioqub.analyticadapter.VarioqubConfigClientIdentifiersProvider
    public final void requestUserId(AdapterIdentifiersCallback adapterIdentifiersCallback) {
        this.b.a(this.a, adapterIdentifiersCallback);
    }

    @Override // com.yandex.varioqub.analyticadapter.VarioqubConfigReporter
    public final void setExperiments(String str) {
        this.c = str;
        Objects.toString(this.d);
        k kVar = new k();
        kVar.a = this.c;
        kVar.b = qn1.u0(this.d);
        this.b.a(MessageNano.toByteArray(kVar));
    }

    @Override // com.yandex.varioqub.analyticadapter.VarioqubConfigReporter
    public final void setTriggeredTestIds(Set<Long> set) {
        Objects.toString(set);
        Set setY0 = qn1.y0(set);
        this.d = setY0;
        Objects.toString(setY0);
        k kVar = new k();
        kVar.a = this.c;
        kVar.b = qn1.u0(this.d);
        this.b.a(MessageNano.toByteArray(kVar));
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(int i) {
            this();
        }
    }
}
