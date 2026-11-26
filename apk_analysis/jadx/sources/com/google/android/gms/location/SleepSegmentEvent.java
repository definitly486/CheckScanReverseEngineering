package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import defpackage.dq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SleepSegmentEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SleepSegmentEvent> CREATOR = new zzam();
    public static final int STATUS_MISSING_DATA = 1;
    public static final int STATUS_NOT_DETECTED = 2;
    public static final int STATUS_SUCCESSFUL = 0;
    public final long b;
    public final long c;
    public final int d;
    public final int e;
    public final int f;

    public SleepSegmentEvent(long j, long j2, int i, int i2, int i3) {
        Preconditions.checkArgument(j <= j2, "endTimeMillis must be greater than or equal to startTimeMillis");
        this.b = j;
        this.c = j2;
        this.d = i;
        this.e = i2;
        this.f = i3;
    }

    public static List<SleepSegmentEvent> extractEvents(Intent intent) {
        ArrayList arrayList;
        Preconditions.checkNotNull(intent);
        if (hasEvents(intent) && (arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.internal.EXTRA_SLEEP_SEGMENT_RESULT")) != null) {
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                byte[] bArr = (byte[]) arrayList.get(i);
                Preconditions.checkNotNull(bArr);
                arrayList2.add((SleepSegmentEvent) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR));
            }
            return Collections.unmodifiableList(arrayList2);
        }
        return Collections.EMPTY_LIST;
    }

    public static boolean hasEvents(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.location.internal.EXTRA_SLEEP_SEGMENT_RESULT");
    }

    public boolean equals(Object obj) {
        if (obj instanceof SleepSegmentEvent) {
            SleepSegmentEvent sleepSegmentEvent = (SleepSegmentEvent) obj;
            if (this.b == sleepSegmentEvent.getStartTimeMillis() && this.c == sleepSegmentEvent.getEndTimeMillis() && this.d == sleepSegmentEvent.getStatus() && this.e == sleepSegmentEvent.e && this.f == sleepSegmentEvent.f) {
                return true;
            }
        }
        return false;
    }

    public long getEndTimeMillis() {
        return this.c;
    }

    public long getSegmentDurationMillis() {
        return this.c - this.b;
    }

    public long getStartTimeMillis() {
        return this.b;
    }

    public int getStatus() {
        return this.d;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.b), Long.valueOf(this.c), Integer.valueOf(this.d));
    }

    public String toString() {
        long j = this.b;
        int length = String.valueOf(j).length();
        long j2 = this.c;
        int length2 = String.valueOf(j2).length();
        int i = this.d;
        StringBuilder sb = new StringBuilder(length + 24 + length2 + 9 + String.valueOf(i).length());
        dq.d(sb, "startMillis=", j, ", endMillis=");
        sb.append(j2);
        sb.append(", status=");
        sb.append(i);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, getStartTimeMillis());
        SafeParcelWriter.writeLong(parcel, 2, getEndTimeMillis());
        SafeParcelWriter.writeInt(parcel, 3, getStatus());
        SafeParcelWriter.writeInt(parcel, 4, this.e);
        SafeParcelWriter.writeInt(parcel, 5, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
