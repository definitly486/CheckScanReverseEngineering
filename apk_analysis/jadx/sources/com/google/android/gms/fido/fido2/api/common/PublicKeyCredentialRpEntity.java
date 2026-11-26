package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes4.dex */
public class PublicKeyCredentialRpEntity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialRpEntity> CREATOR = new zzap();
    public final String b;
    public final String c;
    public final String d;

    public PublicKeyCredentialRpEntity(String str, String str2, String str3) {
        this.b = (String) Preconditions.checkNotNull(str);
        this.c = (String) Preconditions.checkNotNull(str2);
        this.d = str3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialRpEntity)) {
            return false;
        }
        PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = (PublicKeyCredentialRpEntity) obj;
        return Objects.equal(this.b, publicKeyCredentialRpEntity.b) && Objects.equal(this.c, publicKeyCredentialRpEntity.c) && Objects.equal(this.d, publicKeyCredentialRpEntity.d);
    }

    public String getIcon() {
        return this.d;
    }

    public String getId() {
        return this.b;
    }

    public String getName() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getName(), false);
        SafeParcelWriter.writeString(parcel, 4, getIcon(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
