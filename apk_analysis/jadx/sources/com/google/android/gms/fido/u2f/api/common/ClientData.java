package com.google.android.gms.fido.u2f.api.common;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.ti0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class ClientData {
    public static final String KEY_CHALLENGE = "challenge";
    public static final String KEY_CID_PUBKEY = "cid_pubkey";
    public static final String KEY_ORIGIN = "origin";
    public static final String KEY_TYPE = "typ";
    public static final String TYPE_FINISH_ENROLLMENT = "navigator.id.finishEnrollment";
    public static final String TYPE_GET_ASSERTION = "navigator.id.getAssertion";
    public final String a;
    public final String b;
    public final String c;
    public final ChannelIdValue d;

    public static class Builder implements Cloneable {
        public String b;
        public String c;
        public String d;
        public ChannelIdValue e = ChannelIdValue.ABSENT;

        public static Builder newInstance() {
            return new Builder();
        }

        public ClientData build() {
            return new ClientData(this.b, this.c, this.d, this.e);
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Builder m9504clone() {
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            ChannelIdValue channelIdValue = this.e;
            Builder builder = new Builder();
            builder.b = str;
            builder.c = str2;
            builder.d = str3;
            builder.e = channelIdValue;
            return builder;
        }

        public Builder setChallenge(String str) {
            this.c = str;
            return this;
        }

        public Builder setChannelId(ChannelIdValue channelIdValue) {
            this.e = channelIdValue;
            return this;
        }

        public Builder setOrigin(String str) {
            this.d = str;
            return this;
        }

        public Builder setType(String str) {
            this.b = str;
            return this;
        }
    }

    public ClientData(String str, String str2, String str3, ChannelIdValue channelIdValue) {
        this.a = (String) Preconditions.checkNotNull(str);
        this.b = (String) Preconditions.checkNotNull(str2);
        this.c = (String) Preconditions.checkNotNull(str3);
        this.d = (ChannelIdValue) Preconditions.checkNotNull(channelIdValue);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientData)) {
            return false;
        }
        ClientData clientData = (ClientData) obj;
        return this.a.equals(clientData.a) && this.b.equals(clientData.b) && this.c.equals(clientData.c) && this.d.equals(clientData.d);
    }

    public int hashCode() {
        return ((((((this.a.hashCode() + 31) * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public String toJsonString() {
        ChannelIdValue channelIdValue = this.d;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(KEY_TYPE, this.a);
            jSONObject.put(KEY_CHALLENGE, this.b);
            jSONObject.put("origin", this.c);
            int iOrdinal = channelIdValue.getType().ordinal();
            if (iOrdinal == 1) {
                jSONObject.put(KEY_CID_PUBKEY, channelIdValue.getStringValue());
            } else if (iOrdinal == 2) {
                jSONObject.put(KEY_CID_PUBKEY, channelIdValue.getObjectValue());
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }
}
