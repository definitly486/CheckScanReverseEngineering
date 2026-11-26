package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.p000authapi.zbbj;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RevokeAccessRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<RevokeAccessRequest> CREATOR = new zbp();
    public final zbbj b;
    public final Account c;
    public final String d;

    public static final class Builder {
        public zbbj a;
        public Account b;
        public String c;

        public Builder() {
            throw null;
        }

        public RevokeAccessRequest build() {
            return new RevokeAccessRequest(this.a, this.b, this.c);
        }

        public Builder setAccount(Account account) {
            this.b = account;
            return this;
        }

        public Builder setScopes(List<Scope> list) {
            this.a = zbbj.zbi(list);
            return this;
        }

        public final Builder zba(String str) {
            this.c = str;
            return this;
        }
    }

    public RevokeAccessRequest(List list, Account account, String str) {
        this.b = zbbj.zbi(list);
        this.c = account;
        this.d = str;
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (obj instanceof RevokeAccessRequest) {
            RevokeAccessRequest revokeAccessRequest = (RevokeAccessRequest) obj;
            zbbj zbbjVar = this.b;
            int size = zbbjVar.size();
            zbbj zbbjVar2 = revokeAccessRequest.b;
            if (size == zbbjVar2.size() && zbbjVar.containsAll(zbbjVar2) && Objects.equal(this.c, revokeAccessRequest.c) && Objects.equal(this.d, revokeAccessRequest.d)) {
                return true;
            }
        }
        return false;
    }

    public Account getAccount() {
        return this.c;
    }

    public List<Scope> getScopes() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 2, getAccount(), i, false);
        SafeParcelWriter.writeString(parcel, 3, this.d, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final Builder zba() {
        Builder builder = new Builder();
        builder.a = this.b;
        builder.b = this.c;
        builder.c = this.d;
        return builder;
    }
}
