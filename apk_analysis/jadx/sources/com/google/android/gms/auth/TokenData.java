package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new zzm();
    public final int b;
    public final String c;
    public final Long d;
    public final boolean e;
    public final boolean f;
    public final List g;
    public final String h;

    public TokenData(int i, String str, Long l, boolean z, boolean z2, ArrayList arrayList, String str2) {
        this.b = i;
        this.c = Preconditions.checkNotEmpty(str);
        this.d = l;
        this.e = z;
        this.f = z2;
        this.g = arrayList;
        this.h = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.c, tokenData.c) && Objects.equal(this.d, tokenData.d) && this.e == tokenData.e && this.f == tokenData.f && Objects.equal(this.g, tokenData.g) && Objects.equal(this.h, tokenData.h);
    }

    public final int hashCode() {
        return Objects.hashCode(this.c, this.d, Boolean.valueOf(this.e), Boolean.valueOf(this.f), this.g, this.h);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeString(parcel, 2, this.c, false);
        SafeParcelWriter.writeLongObject(parcel, 3, this.d, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.e);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f);
        SafeParcelWriter.writeStringList(parcel, 6, this.g, false);
        SafeParcelWriter.writeString(parcel, 7, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zza() {
        return this.c;
    }
}
