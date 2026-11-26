package io.appmetrica.analytics.impl;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.aa4;
import defpackage.xp;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ia, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0994ia implements Parcelable {
    public static final C0968ha CREATOR = new C0968ha();
    public final Boolean a;
    public final IdentifierStatus b;
    public final String c;

    public C0994ia(Boolean bool, IdentifierStatus identifierStatus, String str) {
        this.a = bool;
        this.b = identifierStatus;
        this.c = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0994ia)) {
            return false;
        }
        C0994ia c0994ia = (C0994ia) obj;
        return aa4.e(this.a, c0994ia.a) && this.b == c0994ia.b && aa4.e(this.c, c0994ia.c);
    }

    public final int hashCode() {
        Boolean bool = this.a;
        int iHashCode = (this.b.hashCode() + ((bool == null ? 0 : bool.hashCode()) * 31)) * 31;
        String str = this.c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FeaturesInternal(sslPinning=");
        sb.append(this.a);
        sb.append(", status=");
        sb.append(this.b);
        sb.append(", errorExplanation=");
        return xp.e(sb, this.c, ')');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.a);
        parcel.writeString(this.b.getValue());
        parcel.writeString(this.c);
    }

    public C0994ia() {
        this(null, IdentifierStatus.UNKNOWN, null);
    }
}
