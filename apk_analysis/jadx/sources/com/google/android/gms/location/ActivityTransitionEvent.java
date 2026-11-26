package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import defpackage.ag;

/* JADX INFO: loaded from: classes4.dex */
public class ActivityTransitionEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new zzf();
    public final int b;
    public final int c;
    public final long d;

    public ActivityTransitionEvent(int i, int i2, long j) {
        ActivityTransition.zza(i2);
        this.b = i;
        this.c = i2;
        this.d = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.b == activityTransitionEvent.b && this.c == activityTransitionEvent.c && this.d == activityTransitionEvent.d;
    }

    public int getActivityType() {
        return this.b;
    }

    public long getElapsedRealTimeNanos() {
        return this.d;
    }

    public int getTransitionType() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), Integer.valueOf(this.c), Long.valueOf(this.d));
    }

    public String toString() {
        int i = this.b;
        StringBuilder sb = new StringBuilder(ag.d(new StringBuilder(String.valueOf(i).length() + 13), "ActivityType ", i));
        sb.append(" ");
        int i2 = this.c;
        StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 15);
        sb2.append("TransitionType ");
        sb2.append(i2);
        sb.append(sb2.toString());
        sb.append(" ");
        long j = this.d;
        StringBuilder sb3 = new StringBuilder(String.valueOf(j).length() + 21);
        sb3.append("ElapsedRealTimeNanos ");
        sb3.append(j);
        sb.append(sb3.toString());
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getActivityType());
        SafeParcelWriter.writeInt(parcel, 2, getTransitionType());
        SafeParcelWriter.writeLong(parcel, 3, getElapsedRealTimeNanos());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
