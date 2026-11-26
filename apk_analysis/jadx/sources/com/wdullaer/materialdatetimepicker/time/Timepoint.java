package com.wdullaer.materialdatetimepicker.time;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.l2;

/* JADX INFO: loaded from: classes5.dex */
public class Timepoint implements Parcelable, Comparable<Timepoint> {
    public static final Parcelable.Creator<Timepoint> CREATOR = new Parcelable.Creator<Timepoint>() { // from class: com.wdullaer.materialdatetimepicker.time.Timepoint.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timepoint createFromParcel(Parcel parcel) {
            return new Timepoint(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Timepoint[] newArray(int i) {
            return new Timepoint[i];
        }
    };
    private int hour;
    private int minute;
    private int second;

    /* JADX INFO: renamed from: com.wdullaer.materialdatetimepicker.time.Timepoint$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE;

        static {
            int[] iArr = new int[TYPE.values().length];
            $SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE = iArr;
            try {
                iArr[TYPE.SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE[TYPE.MINUTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE[TYPE.HOUR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum TYPE {
        HOUR,
        MINUTE,
        SECOND
    }

    public Timepoint(Parcel parcel) {
        this.hour = parcel.readInt();
        this.minute = parcel.readInt();
        this.second = parcel.readInt();
    }

    public void add(TYPE type, int i) {
        if (type == TYPE.MINUTE) {
            i *= 60;
        }
        if (type == TYPE.HOUR) {
            i *= 3600;
        }
        int seconds = toSeconds() + i;
        int i2 = AnonymousClass2.$SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE[type.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
            }
            this.hour = (seconds / 3600) % 24;
        }
        this.second = (seconds % 3600) % 60;
        this.minute = (seconds % 3600) / 60;
        this.hour = (seconds / 3600) % 24;
    }

    @Override // java.lang.Comparable
    public int compareTo(Timepoint timepoint) {
        return hashCode() - timepoint.hashCode();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0034 A[RETURN] */
    public boolean equals(Timepoint timepoint, TYPE type) {
        if (timepoint == null) {
            return false;
        }
        int i = AnonymousClass2.$SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE[type.ordinal()];
        if (i == 1) {
            if (timepoint.getSecond() == getSecond()) {
            }
            return false;
        }
        if (i != 2) {
            if (i != 3) {
                return true;
            }
        }
        if (timepoint.getHour() == getHour()) {
            return true;
        }
        return false;
        if (timepoint.getMinute() == getMinute()) {
            if (timepoint.getHour() == getHour()) {
                return true;
            }
        }
        return false;
    }

    public int get(TYPE type) {
        int i = AnonymousClass2.$SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE[type.ordinal()];
        if (i != 1) {
            return i != 2 ? getHour() : getMinute();
        }
        return getSecond();
    }

    public int getHour() {
        return this.hour;
    }

    public int getMinute() {
        return this.minute;
    }

    public int getSecond() {
        return this.second;
    }

    public int hashCode() {
        return toSeconds();
    }

    public boolean isAM() {
        return this.hour < 12;
    }

    public boolean isPM() {
        return !isAM();
    }

    public void setAM() {
        int i = this.hour;
        if (i >= 12) {
            this.hour = i % 12;
        }
    }

    public void setPM() {
        int i = this.hour;
        if (i < 12) {
            this.hour = (i + 12) % 24;
        }
    }

    public int toSeconds() {
        return (this.minute * 60) + (this.hour * 3600) + this.second;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("");
        sb.append(this.hour);
        sb.append("h ");
        sb.append(this.minute);
        sb.append("m ");
        return l2.e(sb, CmcdData.STREAMING_FORMAT_SS, this.second);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.hour);
        parcel.writeInt(this.minute);
        parcel.writeInt(this.second);
    }

    public Timepoint(int i, int i2, int i3) {
        this.hour = i % 24;
        this.minute = i2 % 60;
        this.second = i3 % 60;
    }

    public Timepoint(int i, int i2) {
        this(i, i2, 0);
    }

    public Timepoint(int i) {
        this(i, 0);
    }

    public Timepoint(Timepoint timepoint) {
        this(timepoint.hour, timepoint.minute, timepoint.second);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && hashCode() == ((Timepoint) obj).hashCode();
    }
}
