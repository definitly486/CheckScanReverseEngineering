package com.google.android.gms.common.moduleinstall;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes4.dex */
public class ModuleInstallStatusUpdate extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ModuleInstallStatusUpdate> CREATOR = new zad();
    public final int b;
    public final int c;
    public final Long d;
    public final Long e;
    public final int f;
    public final ProgressInfo g;

    @Retention(RetentionPolicy.CLASS)
    public @interface InstallState {
        public static final int STATE_CANCELED = 3;
        public static final int STATE_COMPLETED = 4;
        public static final int STATE_DOWNLOADING = 2;
        public static final int STATE_DOWNLOAD_PAUSED = 7;
        public static final int STATE_FAILED = 5;
        public static final int STATE_INSTALLING = 6;
        public static final int STATE_PENDING = 1;
        public static final int STATE_UNKNOWN = 0;
    }

    public static class ProgressInfo {
        public final long a;
        public final long b;

        public ProgressInfo(long j, long j2) {
            Preconditions.checkNotZero(j2);
            this.a = j;
            this.b = j2;
        }

        public long getBytesDownloaded() {
            return this.a;
        }

        public long getTotalBytesToDownload() {
            return this.b;
        }
    }

    public ModuleInstallStatusUpdate(int i, int i2, Long l, Long l2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = l;
        this.e = l2;
        this.f = i3;
        this.g = (l == null || l2 == null || l2.longValue() == 0) ? null : new ProgressInfo(l.longValue(), l2.longValue());
    }

    public int getErrorCode() {
        return this.f;
    }

    public int getInstallState() {
        return this.c;
    }

    public ProgressInfo getProgressInfo() {
        return this.g;
    }

    public int getSessionId() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getSessionId());
        SafeParcelWriter.writeInt(parcel, 2, getInstallState());
        SafeParcelWriter.writeLongObject(parcel, 3, this.d, false);
        SafeParcelWriter.writeLongObject(parcel, 4, this.e, false);
        SafeParcelWriter.writeInt(parcel, 5, getErrorCode());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
