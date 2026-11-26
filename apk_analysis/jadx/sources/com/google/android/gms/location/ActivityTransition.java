package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes4.dex */
public class ActivityTransition extends AbstractSafeParcelable {
    public static final int ACTIVITY_TRANSITION_ENTER = 0;
    public static final int ACTIVITY_TRANSITION_EXIT = 1;
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new zze();
    public final int b;
    public final int c;

    public static class Builder {
        public int a = -1;
        public int b = -1;

        public ActivityTransition build() {
            Preconditions.checkState(this.a != -1, "Activity type not set.");
            Preconditions.checkState(this.b != -1, "Activity transition type not set.");
            return new ActivityTransition(this.a, this.b);
        }

        public Builder setActivityTransition(int i) {
            ActivityTransition.zza(i);
            this.b = i;
            return this;
        }

        public Builder setActivityType(int i) {
            this.a = i;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SupportedActivityTransition {
    }

    public ActivityTransition(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public static void zza(int i) {
        boolean z = false;
        if (i >= 0 && i <= 1) {
            z = true;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 30);
        sb.append("Transition type ");
        sb.append(i);
        sb.append(" is not valid.");
        Preconditions.checkArgument(z, sb.toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.b == activityTransition.b && this.c == activityTransition.c;
    }

    public int getActivityType() {
        return this.b;
    }

    public int getTransitionType() {
        return this.c;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), Integer.valueOf(this.c));
    }

    public String toString() {
        int i = this.b;
        int length = String.valueOf(i).length();
        int i2 = this.c;
        StringBuilder sb = new StringBuilder(length + 52 + String.valueOf(i2).length() + 1);
        sb.append("ActivityTransition [mActivityType=");
        sb.append(i);
        sb.append(", mTransitionType=");
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getActivityType());
        SafeParcelWriter.writeInt(parcel, 2, getTransitionType());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
