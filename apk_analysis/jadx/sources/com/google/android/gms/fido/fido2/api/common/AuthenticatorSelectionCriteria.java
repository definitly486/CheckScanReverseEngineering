package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.cg;

/* JADX INFO: loaded from: classes4.dex */
public class AuthenticatorSelectionCriteria extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticatorSelectionCriteria> CREATOR = new zzm();
    public final Attachment b;
    public final Boolean c;
    public final zzay d;
    public final ResidentKeyRequirement e;

    public static class Builder {
        public Attachment a;
        public Boolean b;
        public ResidentKeyRequirement c;

        public AuthenticatorSelectionCriteria build() {
            Attachment attachment = this.a;
            String string = attachment == null ? null : attachment.toString();
            Boolean bool = this.b;
            ResidentKeyRequirement residentKeyRequirement = this.c;
            return new AuthenticatorSelectionCriteria(string, bool, null, residentKeyRequirement == null ? null : residentKeyRequirement.toString());
        }

        public Builder setAttachment(Attachment attachment) {
            this.a = attachment;
            return this;
        }

        public Builder setRequireResidentKey(Boolean bool) {
            this.b = bool;
            return this;
        }

        public Builder setResidentKeyRequirement(ResidentKeyRequirement residentKeyRequirement) {
            this.c = residentKeyRequirement;
            return this;
        }
    }

    public AuthenticatorSelectionCriteria(String str, Boolean bool, String str2, String str3) {
        Attachment attachmentFromString;
        if (str == null) {
            attachmentFromString = null;
        } else {
            try {
                attachmentFromString = Attachment.fromString(str);
            } catch (Attachment.UnsupportedAttachmentException | ResidentKeyRequirement.UnsupportedResidentKeyRequirementException | zzax e) {
                cg.h(e);
                throw null;
            }
        }
        this.b = attachmentFromString;
        this.c = bool;
        this.d = str2 == null ? null : zzay.zza(str2);
        this.e = str3 == null ? null : ResidentKeyRequirement.fromString(str3);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorSelectionCriteria)) {
            return false;
        }
        AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
        return Objects.equal(this.b, authenticatorSelectionCriteria.b) && Objects.equal(this.c, authenticatorSelectionCriteria.c) && Objects.equal(this.d, authenticatorSelectionCriteria.d) && Objects.equal(this.e, authenticatorSelectionCriteria.e);
    }

    public Attachment getAttachment() {
        return this.b;
    }

    public String getAttachmentAsString() {
        Attachment attachment = this.b;
        if (attachment == null) {
            return null;
        }
        return attachment.toString();
    }

    public Boolean getRequireResidentKey() {
        return this.c;
    }

    public ResidentKeyRequirement getResidentKeyRequirement() {
        return this.e;
    }

    public String getResidentKeyRequirementAsString() {
        ResidentKeyRequirement residentKeyRequirement = this.e;
        if (residentKeyRequirement == null) {
            return null;
        }
        return residentKeyRequirement.toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAttachmentAsString(), false);
        SafeParcelWriter.writeBooleanObject(parcel, 3, getRequireResidentKey(), false);
        zzay zzayVar = this.d;
        SafeParcelWriter.writeString(parcel, 4, zzayVar == null ? null : zzayVar.toString(), false);
        SafeParcelWriter.writeString(parcel, 5, getResidentKeyRequirementAsString(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
