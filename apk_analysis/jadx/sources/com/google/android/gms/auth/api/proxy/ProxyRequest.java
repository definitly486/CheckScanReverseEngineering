package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Patterns;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.fg;
import defpackage.hg;
import defpackage.me0;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final int VERSION_CODE = 2;
    public final int b;
    public final byte[] body;
    public final Bundle c;
    public final int httpMethod;
    public final long timeoutMillis;
    public final String url;
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new zza();
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int LAST_CODE = 7;

    public static class Builder {
        public final String a;
        public int b = ProxyRequest.HTTP_METHOD_GET;
        public long c = 3000;
        public byte[] d = new byte[0];
        public final Bundle e = new Bundle();

        public Builder(String str) {
            Preconditions.checkNotEmpty(str);
            if (Patterns.WEB_URL.matcher(str).matches()) {
                this.a = str;
            } else {
                fg.c(me0.c("The supplied url [ ", str, "] is not match Patterns.WEB_URL!"));
                throw null;
            }
        }

        public ProxyRequest build() {
            if (this.d == null) {
                this.d = new byte[0];
            }
            return new ProxyRequest(2, this.a, this.b, this.c, this.d, this.e);
        }

        public Builder putHeader(String str, String str2) {
            Preconditions.checkNotEmpty(str, "Header name cannot be null or empty!");
            if (str2 == null) {
                str2 = "";
            }
            this.e.putString(str, str2);
            return this;
        }

        public Builder setBody(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        public Builder setHttpMethod(int i) {
            boolean z = false;
            if (i >= 0 && i <= ProxyRequest.LAST_CODE) {
                z = true;
            }
            Preconditions.checkArgument(z, "Unrecognized http method code.");
            this.b = i;
            return this;
        }

        public Builder setTimeoutMillis(long j) {
            Preconditions.checkArgument(j >= 0, "The specified timeout must be non-negative.");
            this.c = j;
            return this;
        }
    }

    public ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.b = i;
        this.url = str;
        this.httpMethod = i2;
        this.timeoutMillis = j;
        this.body = bArr;
        this.c = bundle;
    }

    public Map<String, String> getHeaderMap() {
        Bundle bundle = this.c;
        LinkedHashMap linkedHashMap = new LinkedHashMap(bundle.size());
        for (String str : bundle.keySet()) {
            String string = bundle.getString(str);
            if (string == null) {
                string = "";
            }
            linkedHashMap.put(str, string);
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public String toString() {
        return hg.d(this.httpMethod, "ProxyRequest[ url: ", this.url, ", method: ", " ]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.url, false);
        SafeParcelWriter.writeInt(parcel, 2, this.httpMethod);
        SafeParcelWriter.writeLong(parcel, 3, this.timeoutMillis);
        SafeParcelWriter.writeByteArray(parcel, 4, this.body, false);
        SafeParcelWriter.writeBundle(parcel, 5, this.c, false);
        SafeParcelWriter.writeInt(parcel, 1000, this.b);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
