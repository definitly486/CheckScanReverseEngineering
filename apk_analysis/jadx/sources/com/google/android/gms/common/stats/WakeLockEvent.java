package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.kv2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();
    public final int b;
    public final long c;
    public final int d;
    public final String e;
    public final String f;
    public final String g;
    public final int h;
    public final List i;
    public final String j;
    public final long k;
    public final int l;
    public final String m;
    public final float n;
    public final long o;
    public final boolean p;

    public WakeLockEvent(int i, long j, int i2, String str, int i3, ArrayList arrayList, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5, boolean z) {
        this.b = i;
        this.c = j;
        this.d = i2;
        this.e = str;
        this.f = str3;
        this.g = str5;
        this.h = i3;
        this.i = arrayList;
        this.j = str2;
        this.k = j2;
        this.l = i4;
        this.m = str4;
        this.n = f;
        this.o = j3;
        this.p = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.b);
        SafeParcelWriter.writeLong(parcel, 2, this.c);
        SafeParcelWriter.writeString(parcel, 4, this.e, false);
        SafeParcelWriter.writeInt(parcel, 5, this.h);
        SafeParcelWriter.writeStringList(parcel, 6, this.i, false);
        SafeParcelWriter.writeLong(parcel, 8, this.k);
        SafeParcelWriter.writeString(parcel, 10, this.f, false);
        SafeParcelWriter.writeInt(parcel, 11, this.d);
        SafeParcelWriter.writeString(parcel, 12, this.j, false);
        SafeParcelWriter.writeString(parcel, 13, this.m, false);
        SafeParcelWriter.writeInt(parcel, 14, this.l);
        SafeParcelWriter.writeFloat(parcel, 15, this.n);
        SafeParcelWriter.writeLong(parcel, 16, this.o);
        SafeParcelWriter.writeString(parcel, 17, this.g, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.p);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zza() {
        return this.c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int zzb() {
        return this.d;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String zzc() {
        List list = this.i;
        String strJoin = list == null ? "" : TextUtils.join(StringUtils.COMMA, list);
        String str = this.e;
        int length = String.valueOf(str).length();
        int i = this.h;
        int length2 = String.valueOf(i).length() + length + 2;
        int length3 = String.valueOf(strJoin).length();
        int i2 = this.l;
        int length4 = String.valueOf(i2).length() + length2 + 1 + length3 + 1;
        String str2 = this.f;
        if (str2 == null) {
            str2 = "";
        }
        int length5 = str2.length() + length4 + 1 + 1;
        String str3 = this.m;
        if (str3 == null) {
            str3 = "";
        }
        int length6 = str3.length() + length5 + 1;
        float f = this.n;
        int length7 = String.valueOf(f).length() + length6 + 1;
        String str4 = this.g;
        String str5 = str4 != null ? str4 : "";
        int length8 = str5.length() + length7 + 1;
        boolean z = this.p;
        StringBuilder sb = new StringBuilder(length8 + String.valueOf(z).length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i);
        sb.append("\t");
        sb.append(strJoin);
        sb.append("\t");
        sb.append(i2);
        kv2.c(sb, "\t", str2, "\t", str3);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }
}
