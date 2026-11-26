package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import defpackage.ah;
import defpackage.jh;
import defpackage.nz0;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzu extends zzbz {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    public static final HashMap h;
    public final HashSet b;
    public final int c;
    public zzw d;
    public String e;
    public String f;
    public final String g;

    static {
        HashMap map = new HashMap();
        h = map;
        map.put("authenticatorInfo", FastJsonResponse.Field.forConcreteType("authenticatorInfo", 2, zzw.class));
        map.put("signature", FastJsonResponse.Field.forString("signature", 3));
        map.put("package", FastJsonResponse.Field.forString("package", 4));
    }

    public zzu(HashSet hashSet, int i, zzw zzwVar, String str, String str2, String str3) {
        this.b = hashSet;
        this.c = i;
        this.d = zzwVar;
        this.e = str;
        this.f = str2;
        this.g = str3;
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
            return this.e;
        }
        if (safeParcelableFieldId == 4) {
            return this.f;
        }
        ah.f(jh.b(field.getSafeParcelableFieldId(), "Unknown SafeParcelable id="));
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void addConcreteTypeInternal(FastJsonResponse.Field field, String str, FastJsonResponse fastJsonResponse) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 2) {
            nz0.d("Field with id=%d is not a known custom type. Found %s", new Object[]{Integer.valueOf(safeParcelableFieldId), fastJsonResponse.getClass().getCanonicalName()});
        } else {
            this.d = (zzw) fastJsonResponse;
            this.b.add(Integer.valueOf(safeParcelableFieldId));
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean b(FastJsonResponse.Field field) {
        return this.b.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map getFieldMappings() {
        return h;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void h(FastJsonResponse.Field field, String str) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 3) {
            this.e = str;
        } else {
            if (safeParcelableFieldId != 4) {
                nz0.d("Field with id=%d is not known to be a string.", new Object[]{Integer.valueOf(safeParcelableFieldId)});
                return;
            }
            this.f = str;
        }
        this.b.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        HashSet hashSet = this.b;
        if (hashSet.contains(1)) {
            SafeParcelWriter.writeInt(parcel, 1, this.c);
        }
        if (hashSet.contains(2)) {
            SafeParcelWriter.writeParcelable(parcel, 2, this.d, i, true);
        }
        if (hashSet.contains(3)) {
            SafeParcelWriter.writeString(parcel, 3, this.e, true);
        }
        if (hashSet.contains(4)) {
            SafeParcelWriter.writeString(parcel, 4, this.f, true);
        }
        if (hashSet.contains(5)) {
            SafeParcelWriter.writeString(parcel, 5, this.g, true);
        }
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public zzu() {
        this.b = new HashSet(3);
        this.c = 1;
    }
}
