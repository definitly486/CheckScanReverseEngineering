package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class SignRequestParams extends RequestParams {
    public static final Parcelable.Creator<SignRequestParams> CREATOR = new zzk();
    public static final int MAX_DISPLAY_HINT_LENGTH = 80;
    public final Integer b;
    public final Double c;
    public final Uri d;
    public final byte[] e;
    public final List f;
    public final ChannelIdValue g;
    public final String h;
    public final HashSet i;

    public static final class Builder {
        public Integer a;
        public Double b;
        public Uri c;
        public byte[] d;
        public List e;
        public ChannelIdValue f;
        public String g;

        public SignRequestParams build() {
            return new SignRequestParams(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
        }

        public Builder setAppId(Uri uri) {
            this.c = uri;
            return this;
        }

        public Builder setChannelIdValue(ChannelIdValue channelIdValue) {
            this.f = channelIdValue;
            return this;
        }

        public Builder setDefaultSignChallenge(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        public Builder setDisplayHint(String str) {
            this.g = str;
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

    public SignRequestParams(Integer num, Double d, Uri uri, byte[] bArr, List list, ChannelIdValue channelIdValue, String str) {
        this.b = num;
        this.c = d;
        this.d = uri;
        this.e = bArr;
        Preconditions.checkArgument((list == null || list.isEmpty()) ? false : true, "registeredKeys must not be null or empty");
        this.f = list;
        this.g = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RegisteredKey registeredKey = (RegisteredKey) it.next();
            Preconditions.checkArgument((registeredKey.getAppId() == null && uri == null) ? false : true, "registered key has null appId and no request appId is provided");
            registeredKey.getChallengeValue();
            Preconditions.checkArgument(true, "register request has null challenge and no default challenge isprovided");
            if (registeredKey.getAppId() != null) {
                hashSet.add(Uri.parse(registeredKey.getAppId()));
            }
        }
        this.i = hashSet;
        Preconditions.checkArgument(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.h = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignRequestParams)) {
            return false;
        }
        SignRequestParams signRequestParams = (SignRequestParams) obj;
        List list = signRequestParams.f;
        if (Objects.equal(this.b, signRequestParams.b) && Objects.equal(this.c, signRequestParams.c) && Objects.equal(this.d, signRequestParams.d) && Arrays.equals(this.e, signRequestParams.e)) {
            List list2 = this.f;
            if (list2.containsAll(list) && list.containsAll(list2) && Objects.equal(this.g, signRequestParams.g) && Objects.equal(this.h, signRequestParams.h)) {
                return true;
            }
        }
        return false;
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

    public byte[] getDefaultSignChallenge() {
        return this.e;
    }

    @Override // com.google.android.gms.fido.u2f.api.common.RequestParams
    public String getDisplayHint() {
        return this.h;
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
        return Objects.hashCode(this.b, this.d, this.c, this.f, this.g, this.h, Integer.valueOf(Arrays.hashCode(this.e)));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIntegerObject(parcel, 2, getRequestId(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getAppId(), i, false);
        SafeParcelWriter.writeByteArray(parcel, 5, getDefaultSignChallenge(), false);
        SafeParcelWriter.writeTypedList(parcel, 6, getRegisteredKeys(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, getChannelIdValue(), i, false);
        SafeParcelWriter.writeString(parcel, 8, getDisplayHint(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
