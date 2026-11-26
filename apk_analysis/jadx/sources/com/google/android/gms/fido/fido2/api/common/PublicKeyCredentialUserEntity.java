package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class PublicKeyCredentialUserEntity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialUserEntity> CREATOR = new zzar();
    public final byte[] b;
    public final String c;
    public final String d;
    public final String e;

    public PublicKeyCredentialUserEntity(byte[] bArr, String str, String str2, String str3) {
        this.b = (byte[]) Preconditions.checkNotNull(bArr);
        this.c = (String) Preconditions.checkNotNull(str);
        this.d = str2;
        this.e = (String) Preconditions.checkNotNull(str3);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialUserEntity)) {
            return false;
        }
        PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = (PublicKeyCredentialUserEntity) obj;
        return Arrays.equals(this.b, publicKeyCredentialUserEntity.b) && Objects.equal(this.c, publicKeyCredentialUserEntity.c) && Objects.equal(this.d, publicKeyCredentialUserEntity.d) && Objects.equal(this.e, publicKeyCredentialUserEntity.e);
    }

    public String getDisplayName() {
        return this.e;
    }

    public String getIcon() {
        return this.d;
    }

    public byte[] getId() {
        return this.b;
    }

    public String getName() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getName(), false);
        SafeParcelWriter.writeString(parcel, 4, getIcon(), false);
        SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
