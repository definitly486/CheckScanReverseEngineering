package com.google.firebase;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.PlaybackException;
import defpackage.b36;
import defpackage.bs6;
import defpackage.c9;
import defpackage.jh;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.pp1;
import defpackage.r01;
import defpackage.rg;
import java.time.Instant;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public final class Timestamp implements Comparable<Timestamp>, Parcelable {
    private final int nanoseconds;
    private final long seconds;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<Timestamp> CREATOR = new Parcelable.Creator<Timestamp>() { // from class: com.google.firebase.Timestamp$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timestamp createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new Timestamp(parcel.readLong(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timestamp[] newArray(int i) {
            return new Timestamp[i];
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    public Timestamp(Date date) {
        date.getClass();
        Companion companion = Companion;
        b36 preciseTime = companion.toPreciseTime(date);
        long jLongValue = ((Number) preciseTime.b).longValue();
        int iIntValue = ((Number) preciseTime.c).intValue();
        companion.validateRange(jLongValue, iIntValue);
        this.seconds = jLongValue;
        this.nanoseconds = iIntValue;
    }

    public static final Timestamp now() {
        return Companion.now();
    }

    @Override // java.lang.Comparable
    public int compareTo(Timestamp timestamp) {
        timestamp.getClass();
        nl3[] nl3VarArr = {new bs6() { // from class: com.google.firebase.Timestamp.compareTo.1
            @Override // defpackage.bs6, defpackage.bf4
            public Object get(Object obj) {
                return Long.valueOf(((Timestamp) obj).getSeconds());
            }
        }, new bs6() { // from class: com.google.firebase.Timestamp.compareTo.2
            @Override // defpackage.bs6, defpackage.bf4
            public Object get(Object obj) {
                return Integer.valueOf(((Timestamp) obj).getNanoseconds());
            }
        }};
        for (int i = 0; i < 2; i++) {
            nl3 nl3Var = nl3VarArr[i];
            int iA = pp1.a((Comparable) nl3Var.invoke(this), (Comparable) nl3Var.invoke(timestamp));
            if (iA != 0) {
                return iA;
            }
        }
        return 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof Timestamp) && compareTo((Timestamp) obj) == 0;
        }
        return true;
    }

    public final int getNanoseconds() {
        return this.nanoseconds;
    }

    public final long getSeconds() {
        return this.seconds;
    }

    public int hashCode() {
        long j = this.seconds;
        return (((((int) j) * 1369) + ((int) (j >> 32))) * 37) + this.nanoseconds;
    }

    public final Date toDate() {
        return new Date((this.seconds * 1000) + ((long) (this.nanoseconds / PlaybackException.CUSTOM_ERROR_CODE_BASE)));
    }

    public final Instant toInstant() {
        Instant instantOfEpochSecond = Instant.ofEpochSecond(this.seconds, this.nanoseconds);
        instantOfEpochSecond.getClass();
        return instantOfEpochSecond;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Timestamp(seconds=");
        sb.append(this.seconds);
        sb.append(", nanoseconds=");
        return rg.h(sb, this.nanoseconds, ')');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeLong(this.seconds);
        parcel.writeInt(this.nanoseconds);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final b36<Long, Integer> toPreciseTime(Date date) {
            long time = date.getTime() / 1000;
            int time2 = (int) ((date.getTime() % 1000) * 1000000);
            return time2 < 0 ? new b36<>(Long.valueOf(time - 1), Integer.valueOf(time2 + 1000000000)) : new b36<>(Long.valueOf(time), Integer.valueOf(time2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void validateRange(long j, int i) {
            if (i < 0 || i >= 1000000000) {
                c9.f(jh.b(i, "Timestamp nanoseconds out of range: "));
            } else if (-62135596800L > j || j >= 253402300800L) {
                c9.f(r01.c(j, "Timestamp seconds out of range: "));
            }
        }

        public final Timestamp now() {
            return new Timestamp(new Date());
        }

        private Companion() {
        }
    }

    public Timestamp(long j, int i) {
        Companion.validateRange(j, i);
        this.seconds = j;
        this.nanoseconds = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Timestamp(Instant instant) {
        this(instant.getEpochSecond(), instant.getNano());
        instant.getClass();
    }
}
