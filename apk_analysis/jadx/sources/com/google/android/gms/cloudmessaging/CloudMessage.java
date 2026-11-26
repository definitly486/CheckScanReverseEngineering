package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.firebase.messaging.Constants;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class CloudMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CloudMessage> CREATOR = new zza();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    public final Intent b;
    public ArrayMap c;

    @Target({ElementType.TYPE_PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface MessagePriority {
    }

    public CloudMessage(Intent intent) {
        this.b = intent;
    }

    public String getCollapseKey() {
        return this.b.getStringExtra(Constants.MessagePayloadKeys.COLLAPSE_KEY);
    }

    public synchronized Map<String, String> getData() {
        ArrayMap arrayMap;
        try {
            arrayMap = this.c;
            if (arrayMap == null) {
                Bundle extras = this.b.getExtras();
                ArrayMap arrayMap2 = new ArrayMap();
                if (extras != null) {
                    for (String str : extras.keySet()) {
                        Object obj = extras.get(str);
                        if (obj instanceof String) {
                            String str2 = (String) obj;
                            if (!str.startsWith(Constants.MessagePayloadKeys.RESERVED_PREFIX) && !str.equals("from") && !str.equals(Constants.MessagePayloadKeys.MESSAGE_TYPE) && !str.equals(Constants.MessagePayloadKeys.COLLAPSE_KEY)) {
                                arrayMap2.put(str, str2);
                            }
                        }
                    }
                }
                this.c = arrayMap2;
                arrayMap = arrayMap2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayMap;
    }

    public String getFrom() {
        return this.b.getStringExtra("from");
    }

    public Intent getIntent() {
        return this.b;
    }

    public String getMessageId() {
        Intent intent = this.b;
        String stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.MSGID);
        return stringExtra == null ? intent.getStringExtra(Constants.MessagePayloadKeys.MSGID_SERVER) : stringExtra;
    }

    public String getMessageType() {
        return this.b.getStringExtra(Constants.MessagePayloadKeys.MESSAGE_TYPE);
    }

    public int getOriginalPriority() {
        Intent intent = this.b;
        String stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.ORIGINAL_PRIORITY);
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.PRIORITY_V19);
        }
        if (Objects.equals(stringExtra, "high")) {
            return 1;
        }
        return Objects.equals(stringExtra, "normal") ? 2 : 0;
    }

    public int getPriority() {
        Intent intent = this.b;
        String stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.DELIVERED_PRIORITY);
        if (stringExtra == null) {
            if (Objects.equals(intent.getStringExtra(Constants.MessagePayloadKeys.PRIORITY_REDUCED_V19), "1")) {
                return 2;
            }
            stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.PRIORITY_V19);
        }
        if (Objects.equals(stringExtra, "high")) {
            return 1;
        }
        return Objects.equals(stringExtra, "normal") ? 2 : 0;
    }

    public byte[] getRawData() {
        return this.b.getByteArrayExtra(Constants.MessagePayloadKeys.RAW_DATA);
    }

    public String getSenderId() {
        return this.b.getStringExtra(Constants.MessagePayloadKeys.SENDER_ID);
    }

    public long getSentTime() {
        Bundle extras = this.b.getExtras();
        Object obj = extras != null ? extras.get(Constants.MessagePayloadKeys.SENT_TIME) : null;
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return 0L;
        }
        try {
            return Long.parseLong((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("CloudMessage", "Invalid sent time: ".concat(String.valueOf(obj)));
            return 0L;
        }
    }

    public String getTo() {
        return this.b.getStringExtra(Constants.MessagePayloadKeys.TO);
    }

    public int getTtl() {
        Bundle extras = this.b.getExtras();
        Object obj = extras != null ? extras.get(Constants.MessagePayloadKeys.TTL) : null;
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("CloudMessage", "Invalid TTL: ".concat(String.valueOf(obj)));
            return 0;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.b, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
