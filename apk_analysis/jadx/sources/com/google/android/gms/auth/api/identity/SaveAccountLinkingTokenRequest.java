package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
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
public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new zbq();
    public static final String EXTRA_TOKEN = "extra_token";
    public static final String TOKEN_TYPE_AUTH_CODE = "auth_code";
    public final PendingIntent b;
    public final String c;
    public final String d;
    public final List e;
    public final String f;
    public final int g;

    public static final class Builder {
        public PendingIntent a;
        public String b;
        public String c;
        public List d = new ArrayList();
        public String e;
        public int f;

        public SaveAccountLinkingTokenRequest build() {
            Preconditions.checkArgument(this.a != null, "Consent PendingIntent cannot be null");
            Preconditions.checkArgument(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE.equals(this.b), "Invalid tokenType");
            Preconditions.checkArgument(!TextUtils.isEmpty(this.c), "serviceId cannot be null or empty");
            Preconditions.checkArgument(this.d != null, "scopes cannot be null");
            return new SaveAccountLinkingTokenRequest(this.a, this.b, this.c, this.d, this.e, this.f);
        }

        public Builder setConsentPendingIntent(PendingIntent pendingIntent) {
            this.a = pendingIntent;
            return this;
        }

        public Builder setScopes(List<String> list) {
            this.d = list;
            return this;
        }

        public Builder setServiceId(String str) {
            this.c = str;
            return this;
        }

        public Builder setTokenType(String str) {
            this.b = str;
            return this;
        }

        public final Builder zba(String str) {
            this.e = str;
            return this;
        }

        public final Builder zbb(int i) {
            this.f = i;
            return this;
        }
    }

    public SaveAccountLinkingTokenRequest(PendingIntent pendingIntent, String str, String str2, List list, String str3, int i) {
        this.b = pendingIntent;
        this.c = str;
        this.d = str2;
        this.e = list;
        this.f = str3;
        this.g = i;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Builder zba(SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        Preconditions.checkNotNull(saveAccountLinkingTokenRequest);
        Builder builder = builder();
        builder.setScopes(saveAccountLinkingTokenRequest.getScopes());
        builder.setServiceId(saveAccountLinkingTokenRequest.getServiceId());
        builder.setConsentPendingIntent(saveAccountLinkingTokenRequest.getConsentPendingIntent());
        builder.setTokenType(saveAccountLinkingTokenRequest.getTokenType());
        builder.zbb(saveAccountLinkingTokenRequest.g);
        String str = saveAccountLinkingTokenRequest.f;
        if (!TextUtils.isEmpty(str)) {
            builder.zba(str);
        }
        return builder;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        List list = this.e;
        int size = list.size();
        List list2 = saveAccountLinkingTokenRequest.e;
        return size == list2.size() && list.containsAll(list2) && Objects.equal(this.b, saveAccountLinkingTokenRequest.b) && Objects.equal(this.c, saveAccountLinkingTokenRequest.c) && Objects.equal(this.d, saveAccountLinkingTokenRequest.d) && Objects.equal(this.f, saveAccountLinkingTokenRequest.f) && this.g == saveAccountLinkingTokenRequest.g;
    }

    public PendingIntent getConsentPendingIntent() {
        return this.b;
    }

    public List<String> getScopes() {
        return this.e;
    }

    public String getServiceId() {
        return this.d;
    }

    public String getTokenType() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.c, this.d, this.e, this.f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getConsentPendingIntent(), i, false);
        SafeParcelWriter.writeString(parcel, 2, getTokenType(), false);
        SafeParcelWriter.writeString(parcel, 3, getServiceId(), false);
        SafeParcelWriter.writeStringList(parcel, 4, getScopes(), false);
        SafeParcelWriter.writeString(parcel, 5, this.f, false);
        SafeParcelWriter.writeInt(parcel, 6, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
