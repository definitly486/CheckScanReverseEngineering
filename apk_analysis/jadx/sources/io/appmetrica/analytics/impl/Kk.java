package io.appmetrica.analytics.impl;

import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class Kk implements ModuleRemoteConfig {
    public final SdkIdentifiers a;
    public final RemoteConfigMetaInfo b;
    public final Object c;

    public Kk(SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        this.a = sdkIdentifiers;
        this.b = remoteConfigMetaInfo;
        this.c = obj;
    }

    public static Kk a(Kk kk, SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            sdkIdentifiers = kk.a;
        }
        if ((i & 2) != 0) {
            remoteConfigMetaInfo = kk.b;
        }
        if ((i & 4) != 0) {
            obj = kk.c;
        }
        kk.getClass();
        return new Kk(sdkIdentifiers, remoteConfigMetaInfo, obj);
    }

    public final RemoteConfigMetaInfo b() {
        return this.b;
    }

    public final Object c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Kk)) {
            return false;
        }
        Kk kk = (Kk) obj;
        return aa4.e(this.a, kk.a) && aa4.e(this.b, kk.b) && aa4.e(this.c, kk.c);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig
    public final Object getFeaturesConfig() {
        return this.c;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig
    public final SdkIdentifiers getIdentifiers() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig
    public final RemoteConfigMetaInfo getRemoteConfigMetaInfo() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Object obj = this.c;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServiceModuleRemoteConfigModel(identifiers=");
        sb.append(this.a);
        sb.append(", remoteConfigMetaInfo=");
        sb.append(this.b);
        sb.append(", featuresConfig=");
        return defpackage.vg.d(sb, this.c, ')');
    }

    public final Kk a(SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        return new Kk(sdkIdentifiers, remoteConfigMetaInfo, obj);
    }

    public final SdkIdentifiers a() {
        return this.a;
    }
}
