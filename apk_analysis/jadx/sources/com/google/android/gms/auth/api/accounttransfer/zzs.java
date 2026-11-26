package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ah;
import defpackage.jh;
import defpackage.nz0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzs extends zzbz {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();
    public static final ArrayMap h;
    public final int b;
    public List c;
    public List d;
    public List e;
    public List f;
    public List g;

    static {
        ArrayMap arrayMap = new ArrayMap();
        h = arrayMap;
        arrayMap.put("registered", FastJsonResponse.Field.forStrings("registered", 2));
        arrayMap.put("in_progress", FastJsonResponse.Field.forStrings("in_progress", 3));
        arrayMap.put(FirebaseAnalytics.Param.SUCCESS, FastJsonResponse.Field.forStrings(FirebaseAnalytics.Param.SUCCESS, 4));
        arrayMap.put("failed", FastJsonResponse.Field.forStrings("failed", 5));
        arrayMap.put("escrowed", FastJsonResponse.Field.forStrings("escrowed", 6));
    }

    public zzs(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        this.b = i;
        this.c = arrayList;
        this.d = arrayList2;
        this.e = arrayList3;
        this.f = arrayList4;
        this.g = arrayList5;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object a(FastJsonResponse.Field field) {
        switch (field.getSafeParcelableFieldId()) {
            case 1:
                return Integer.valueOf(this.b);
            case 2:
                return this.c;
            case 3:
                return this.d;
            case 4:
                return this.e;
            case 5:
                return this.f;
            case 6:
                return this.g;
            default:
                ah.f(jh.b(field.getSafeParcelableFieldId(), "Unknown SafeParcelable id="));
                return null;
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean b(FastJsonResponse.Field field) {
        return true;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map getFieldMappings() {
        return h;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void j(FastJsonResponse.Field field, ArrayList arrayList) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.c = arrayList;
            return;
        }
        if (safeParcelableFieldId == 3) {
            this.d = arrayList;
            return;
        }
        if (safeParcelableFieldId == 4) {
            this.e = arrayList;
            return;
        }
        if (safeParcelableFieldId == 5) {
            this.f = arrayList;
        } else if (safeParcelableFieldId == 6) {
            this.g = arrayList;
        } else {
            nz0.d("Field with id=%d is not known to be a string list.", new Object[]{Integer.valueOf(safeParcelableFieldId)});
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeStringList(parcel, 2, this.c, false);
        SafeParcelWriter.writeStringList(parcel, 3, this.d, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.e, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.f, false);
        SafeParcelWriter.writeStringList(parcel, 6, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public zzs() {
        this.b = 1;
    }
}
