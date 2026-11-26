package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class RegisterRequestParams extends RequestParams {
    public static final Parcelable.Creator<RegisterRequestParams> CREATOR = new zzh();
    public static final int MAX_DISPLAY_HINT_LENGTH = 80;
    public final Integer b;
    public final Double c;
    public final Uri d;
    public final List e;
    public final List f;
    public final ChannelIdValue g;
    public final String h;
    public final HashSet i;

    public static final class Builder {
        public Integer a;
        public Double b;
        public Uri c;
        public List d;
        public List e;
        public ChannelIdValue f;
        public String g;

        public RegisterRequestParams build() {
            return new RegisterRequestParams(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
        }

        public Builder setAppId(Uri uri) {
            this.c = uri;
            return this;
        }

        public Builder setChannelIdValue(ChannelIdValue channelIdValue) {
            this.f = channelIdValue;
            return this;
        }

        public Builder setDisplayHint(String str) {
            this.g = str;
            return this;
        }

        public Builder setRegisterRequests(List<RegisterRequest> list) {
            this.d = list;
            return this;
        }

        public Builder setRegisteredKeys(List<RegisteredKey> list) {
            this.e = list;
            return this;
        }

        public Builder setRequestId(Integer num) {
            this.a = num;
            return this;
        }

        public Builder setTimeoutSeconds(Double d) {
            this.b = d;
            return this;
        }
    }

    public RegisterRequestParams(Integer num, Double d, Uri uri, List list, List list2, ChannelIdValue channelIdValue, String str) {
        this.b = num;
        this.c = d;
        this.d = uri;
        Preconditions.checkArgument((list == null || list.isEmpty()) ? false : true, "empty list of register requests is provided");
        this.e = list;
        this.f = list2;
        this.g = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RegisterRequest registerRequest = (RegisterRequest) it.next();
            Preconditions.checkArgument((uri == null && registerRequest.getAppId() == null) ? false : true, "register request has null appId and no request appId is provided");
            if (registerRequest.getAppId() != null) {
                hashSet.add(Uri.parse(registerRequest.getAppId()));
            }
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            RegisteredKey registeredKey = (RegisteredKey) it2.next();
            Preconditions.checkArgument((uri == null && registeredKey.getAppId() == null) ? false : true, "registered key has null appId and no request appId is provided");
            if (registeredKey.getAppId() != null) {
                hashSet.add(Uri.parse(registeredKey.getAppId()));
            }
        }
        this.i = hashSet;
        Preconditions.checkArgument(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.h = str;
    }

    public boolean equals(Object obj) {
        List list;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequestParams)) {
            return false;
        }
        RegisterRequestParams registerRequestParams = (RegisterRequestParams) obj;
        List list2 = registerRequestParams.f;
        return Objects.equal(this.b, registerRequestParams.b) && Objects.equal(this.c, registerRequestParams.c) && Objects.equal(this.d, registerRequestParams.d) && Objects.equal(this.e, registerRequestParams.e) && (((list = this.f) == null && list2 == null) || (list != null && list2 != null && list.containsAll(list2) && list2.containsAll(list))) && Objects.equal(this.g, registerRequestParams.g) && Objects.equal(this.h, registerRequestParams.h);
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Set<Uri> getAllAppIds() {
        return this.i;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Uri getAppId() {
        return this.d;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public ChannelIdValue getChannelIdValue() {
        return this.g;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public String getDisplayHint() {
        return this.h;
    }

    public List<RegisterRequest> getRegisterRequests() {
        return this.e;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public List<RegisteredKey> getRegisteredKeys() {
        return this.f;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Integer getRequestId() {
        return this.b;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public Double getTimeoutSeconds() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.b, this.d, this.c, this.e, this.f, this.g, this.h);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIntegerObject(parcel, 2, getRequestId(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getAppId(), i, false);
        SafeParcelWriter.writeTypedList(parcel, 5, getRegisterRequests(), false);
        SafeParcelWriter.writeTypedList(parcel, 6, getRegisteredKeys(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, getChannelIdValue(), i, false);
        SafeParcelWriter.writeString(parcel, 8, getDisplayHint(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
