package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.cg;

/* JADX INFO: loaded from: classes4.dex */
public class PublicKeyCredentialParameters extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialParameters> CREATOR = new zzan();
    public final PublicKeyCredentialType b;
    public final COSEAlgorithmIdentifier c;

    public PublicKeyCredentialParameters(String str, int i) {
        Preconditions.checkNotNull(str);
        try {
            this.b = PublicKeyCredentialType.fromString(str);
            Preconditions.checkNotNull(Integer.valueOf(i));
            try {
                this.c = COSEAlgorithmIdentifier.fromCoseValue(i);
            } catch (COSEAlgorithmIdentifier.UnsupportedAlgorithmIdentifierException e) {
                cg.h(e);
                throw null;
            }
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e2) {
            cg.h(e2);
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialParameters)) {
            return false;
        }
        PublicKeyCredentialParameters publicKeyCredentialParameters = (PublicKeyCredentialParameters) obj;
        return this.b.equals(publicKeyCredentialParameters.b) && this.c.equals(publicKeyCredentialParameters.c);
    }

    public COSEAlgorithmIdentifier getAlgorithm() {
        return this.c;
    }

    public int getAlgorithmIdAsInteger() {
        return this.c.toCoseValue();
    }

    public PublicKeyCredentialType getType() {
        return this.b;
    }

    public String getTypeAsString() {
        return this.b.toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getTypeAsString(), false);
        SafeParcelWriter.writeIntegerObject(parcel, 3, Integer.valueOf(getAlgorithmIdAsInteger()), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
