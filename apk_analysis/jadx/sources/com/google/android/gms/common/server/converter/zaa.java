package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import defpackage.ah;
import defpackage.fg;

/* JADX INFO: loaded from: classes4.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();
    public final int b;
    public final StringToIntConverter c;

    public zaa(StringToIntConverter stringToIntConverter) {
        this.b = 1;
        this.c = stringToIntConverter;
    }

    public static zaa zaa(FastJsonResponse.FieldConverter fieldConverter) {
        if (fieldConverter instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) fieldConverter);
        }
        fg.c("Unsupported safe parcelable field converter class.");
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeParcelable(parcel, 2, this.c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final FastJsonResponse.FieldConverter zab() {
        StringToIntConverter stringToIntConverter = this.c;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        ah.f("There was no converter wrapped in this ConverterWrapper.");
        return null;
    }

    public zaa(int i, StringToIntConverter stringToIntConverter) {
        this.b = i;
        this.c = stringToIntConverter;
    }
}
