package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.fido.common.Transport;
import defpackage.cg;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PublicKeyCredentialDescriptor extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialDescriptor> CREATOR;
    public final PublicKeyCredentialType b;
    public final byte[] c;
    public final List d;

    static {
        com.google.android.gms.internal.fido.zzau.zzi(com.google.android.gms.internal.fido.zzh.zza, com.google.android.gms.internal.fido.zzh.zzb);
        CREATOR = new zzam();
    }

    public PublicKeyCredentialDescriptor(String str, byte[] bArr, List<Transport> list) {
        Preconditions.checkNotNull(str);
        try {
            this.b = PublicKeyCredentialType.fromString(str);
            this.c = (byte[]) Preconditions.checkNotNull(bArr);
            this.d = list;
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e) {
            cg.h(e);
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialDescriptor)) {
            return false;
        }
        PublicKeyCredentialDescriptor publicKeyCredentialDescriptor = (PublicKeyCredentialDescriptor) obj;
        List list = publicKeyCredentialDescriptor.d;
        if (!this.b.equals(publicKeyCredentialDescriptor.b) || !Arrays.equals(this.c, publicKeyCredentialDescriptor.c)) {
            return false;
        }
        List list2 = this.d;
        if (list2 == null && list == null) {
            return true;
        }
        return list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2);
    }

    public byte[] getId() {
        return this.c;
    }

    public List<Transport> getTransports() {
        return this.d;
    }

    public PublicKeyCredentialType getType() {
        return this.b;
    }

    public String getTypeAsString() {
        return this.b.toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.b, Integer.valueOf(Arrays.hashCode(this.c)), this.d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getTypeAsString(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getId(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getTransports(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public static class UnsupportedPubKeyCredDescriptorException extends Exception {
        public UnsupportedPubKeyCredDescriptorException(String str) {
            super(str);
        }

        public UnsupportedPubKeyCredDescriptorException(String str, Throwable th) {
            super(str, th);
        }
    }
}
