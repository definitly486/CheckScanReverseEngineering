package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ib, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0995ib implements Parcelable {
    public static final Parcelable.Creator<C0995ib> CREATOR = new C0969hb();
    public final ResultReceiver a;
    public final List b;
    public final HashMap c;
    public final boolean d;

    public C0995ib(Parcel parcel) {
        Bundle bundle = parcel.readBundle(P6.class.getClassLoader());
        if (bundle == null) {
            this.c = new HashMap();
            return;
        }
        this.a = (ResultReceiver) bundle.getParcelable("io.appmetrica.analytics.internal.CounterConfiguration.receiver");
        this.b = bundle.getStringArrayList("io.appmetrica.analytics.internal.CounterConfiguration.identifiersList");
        this.c = Vm.a(bundle.getString("io.appmetrica.analytics.internal.CounterConfiguration.clidsForVerification"));
        this.d = bundle.getBoolean("io.appmetrica.analytics.internal.CounterConfiguration.forceRefreshConfiguration");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.internal.CounterConfiguration.receiver", this.a);
        if (this.b != null) {
            bundle.putStringArrayList("io.appmetrica.analytics.internal.CounterConfiguration.identifiersList", new ArrayList<>(this.b));
        }
        HashMap map = this.c;
        if (map != null) {
            bundle.putString("io.appmetrica.analytics.internal.CounterConfiguration.clidsForVerification", Vm.a((Map) map));
        }
        bundle.putBoolean("io.appmetrica.analytics.internal.CounterConfiguration.forceRefreshConfiguration", this.d);
        parcel.writeBundle(bundle);
    }

    public C0995ib(P6 p6, List list, Map map, boolean z) {
        HashMap map2;
        this.b = list;
        this.a = p6;
        if (map == null) {
            map2 = new HashMap();
        } else {
            map2 = new HashMap(map);
        }
        this.c = map2;
        this.d = z;
    }
}
