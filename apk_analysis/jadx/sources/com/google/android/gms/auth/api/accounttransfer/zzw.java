package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArraySet;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.ah;
import defpackage.fg;
import defpackage.jh;
import defpackage.kv2;
import defpackage.nz0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzw extends zzbz {
    public static final Parcelable.Creator<zzw> CREATOR = new zzx();
    public static final HashMap i;
    public final Set b;
    public final int c;
    public String d;
    public int e;
    public byte[] f;
    public final PendingIntent g;
    public final DeviceMetaData h;

    static {
        HashMap map = new HashMap();
        i = map;
        map.put("accountType", FastJsonResponse.Field.forString("accountType", 2));
        map.put(NotificationCompat.CATEGORY_STATUS, FastJsonResponse.Field.forInteger(NotificationCompat.CATEGORY_STATUS, 3));
        map.put("transferBytes", FastJsonResponse.Field.forBase64("transferBytes", 4));
    }

    public zzw(HashSet hashSet, int i2, String str, int i3, byte[] bArr, PendingIntent pendingIntent, DeviceMetaData deviceMetaData) {
        this.b = hashSet;
        this.c = i2;
        this.d = str;
        this.e = i3;
        this.f = bArr;
        this.g = pendingIntent;
        this.h = deviceMetaData;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object a(FastJsonResponse.Field field) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 1) {
            return Integer.valueOf(this.c);
        }
        if (safeParcelableFieldId == 2) {
            return this.d;
        }
        if (safeParcelableFieldId == 3) {
            return Integer.valueOf(this.e);
        }
        if (safeParcelableFieldId == 4) {
            return this.f;
        }
        ah.f(jh.b(field.getSafeParcelableFieldId(), "Unknown SafeParcelable id="));
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean b(FastJsonResponse.Field field) {
        return this.b.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void d(FastJsonResponse.Field field, byte[] bArr) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 4) {
            fg.c(kv2.b(safeParcelableFieldId, "Field with id=", " is not known to be a byte array."));
        } else {
            this.f = bArr;
            this.b.add(Integer.valueOf(safeParcelableFieldId));
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void e(FastJsonResponse.Field field, int i2) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 3) {
            fg.c(kv2.b(safeParcelableFieldId, "Field with id=", " is not known to be an int."));
        } else {
            this.e = i2;
            this.b.add(Integer.valueOf(safeParcelableFieldId));
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map getFieldMappings() {
        return i;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void h(FastJsonResponse.Field field, String str) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 2) {
            nz0.d("Field with id=%d is not known to be a string.", new Object[]{Integer.valueOf(safeParcelableFieldId)});
        } else {
            this.d = str;
            this.b.add(Integer.valueOf(safeParcelableFieldId));
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        Set set = this.b;
        if (set.contains(1)) {
            SafeParcelWriter.writeInt(parcel, 1, this.c);
        }
        if (set.contains(2)) {
            SafeParcelWriter.writeString(parcel, 2, this.d, true);
        }
        if (set.contains(3)) {
            SafeParcelWriter.writeInt(parcel, 3, this.e);
        }
        if (set.contains(4)) {
            SafeParcelWriter.writeByteArray(parcel, 4, this.f, true);
        }
        if (set.contains(5)) {
            SafeParcelWriter.writeParcelable(parcel, 5, this.g, i2, true);
        }
        if (set.contains(6)) {
            SafeParcelWriter.writeParcelable(parcel, 6, this.h, i2, true);
        }
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public zzw() {
        this.b = new ArraySet(3);
        this.c = 1;
    }
}
