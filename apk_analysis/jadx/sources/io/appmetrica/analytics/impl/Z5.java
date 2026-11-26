package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Z5 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        EnumC1403y9 enumC1403y9;
        Bundle bundle = parcel.readBundle(P6.class.getClassLoader());
        if (bundle.containsKey("CounterReport.Source")) {
            int i = bundle.getInt("CounterReport.Source");
            EnumC1403y9[] enumC1403y9ArrValues = EnumC1403y9.values();
            int length = enumC1403y9ArrValues.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC1403y9 = EnumC1403y9.NATIVE;
                    break;
                }
                enumC1403y9 = enumC1403y9ArrValues[i2];
                if (enumC1403y9.a == i) {
                    break;
                }
                i2++;
            }
        } else {
            enumC1403y9 = null;
        }
        C0783a6 c0783a6 = new C0783a6("", "", 0);
        EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        c0783a6.d = bundle.getInt("CounterReport.Type", -1);
        c0783a6.e = bundle.getInt("CounterReport.CustomType");
        c0783a6.b = StringUtils.ifIsNullToDef(bundle.getString("CounterReport.Value"), "");
        c0783a6.c = bundle.getString("CounterReport.Environment");
        c0783a6.a = bundle.getString("CounterReport.Event");
        c0783a6.f = C0783a6.a(bundle);
        c0783a6.g = bundle.getInt("CounterReport.TRUNCATED");
        c0783a6.h = bundle.getString("CounterReport.ProfileID");
        c0783a6.i = bundle.getLong("CounterReport.CreationElapsedRealtime");
        c0783a6.j = bundle.getLong("CounterReport.CreationTimestamp");
        c0783a6.k = EnumC1252sa.a(Integer.valueOf(bundle.getInt("CounterReport.UniquenessStatus")));
        c0783a6.l = enumC1403y9;
        c0783a6.m = bundle.getBundle("CounterReport.Payload");
        c0783a6.n = bundle.containsKey("CounterReport.AttributionIdChanged") ? Boolean.valueOf(bundle.getBoolean("CounterReport.AttributionIdChanged")) : null;
        c0783a6.o = bundle.containsKey("CounterReport.OpenId") ? Integer.valueOf(bundle.getInt("CounterReport.OpenId")) : null;
        c0783a6.p = CollectionUtils.bundleToMap(bundle.getBundle("CounterReport.Extras"));
        c0783a6.q = bundle.containsKey("CounterReport.ValueProtocolVersion") ? Integer.valueOf(bundle.getInt("CounterReport.ValueProtocolVersion")) : null;
        return c0783a6;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new C0783a6[i];
    }
}
