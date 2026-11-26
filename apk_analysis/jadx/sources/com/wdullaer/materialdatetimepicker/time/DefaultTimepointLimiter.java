package com.wdullaer.materialdatetimepicker.time;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fg;
import java.util.Arrays;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
class DefaultTimepointLimiter implements TimepointLimiter {
    public static final Parcelable.Creator<DefaultTimepointLimiter> CREATOR = new Parcelable.Creator<DefaultTimepointLimiter>() { // from class: com.wdullaer.materialdatetimepicker.time.DefaultTimepointLimiter.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DefaultTimepointLimiter createFromParcel(Parcel parcel) {
            return new DefaultTimepointLimiter(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DefaultTimepointLimiter[] newArray(int i) {
            return new DefaultTimepointLimiter[i];
        }
    };
    private TreeSet<Timepoint> exclusiveSelectableTimes;
    private TreeSet<Timepoint> mDisabledTimes;
    private Timepoint mMaxTime;
    private Timepoint mMinTime;
    private TreeSet<Timepoint> mSelectableTimes;

    public DefaultTimepointLimiter(Parcel parcel) {
        this.mSelectableTimes = new TreeSet<>();
        this.mDisabledTimes = new TreeSet<>();
        this.exclusiveSelectableTimes = new TreeSet<>();
        this.mMinTime = (Timepoint) parcel.readParcelable(Timepoint.class.getClassLoader());
        this.mMaxTime = (Timepoint) parcel.readParcelable(Timepoint.class.getClassLoader());
        TreeSet<Timepoint> treeSet = this.mSelectableTimes;
        Parcelable.Creator<Timepoint> creator = Timepoint.CREATOR;
        treeSet.addAll(Arrays.asList(parcel.createTypedArray(creator)));
        this.mDisabledTimes.addAll(Arrays.asList(parcel.createTypedArray(creator)));
        this.exclusiveSelectableTimes = getExclusiveSelectableTimes(this.mSelectableTimes, this.mDisabledTimes);
    }

    private TreeSet<Timepoint> getExclusiveSelectableTimes(TreeSet<Timepoint> treeSet, TreeSet<Timepoint> treeSet2) {
        TreeSet<Timepoint> treeSet3 = new TreeSet<>((SortedSet<Timepoint>) treeSet);
        treeSet3.removeAll(treeSet2);
        return treeSet3;
    }

    private Timepoint searchValidTimePoint(Timepoint timepoint, Timepoint.TYPE type, Timepoint.TYPE type2) {
        Timepoint timepoint2 = new Timepoint(timepoint);
        Timepoint timepoint3 = new Timepoint(timepoint);
        int i = type2 == Timepoint.TYPE.MINUTE ? 60 : 1;
        int i2 = 0;
        if (type2 == Timepoint.TYPE.SECOND) {
            i = 3600;
        }
        while (i2 < i * 24) {
            i2++;
            timepoint2.add(type2, 1);
            timepoint3.add(type2, -1);
            if (type == null || timepoint2.get(type) == timepoint.get(type)) {
                Timepoint timepointCeiling = this.mDisabledTimes.ceiling(timepoint2);
                Timepoint timepointFloor = this.mDisabledTimes.floor(timepoint2);
                if (!timepoint2.equals(timepointCeiling, type2) && !timepoint2.equals(timepointFloor, type2)) {
                    return timepoint2;
                }
            }
            if (type == null || timepoint3.get(type) == timepoint.get(type)) {
                Timepoint timepointCeiling2 = this.mDisabledTimes.ceiling(timepoint3);
                Timepoint timepointFloor2 = this.mDisabledTimes.floor(timepoint3);
                if (!timepoint3.equals(timepointCeiling2, type2) && !timepoint3.equals(timepointFloor2, type2)) {
                    return timepoint3;
                }
            }
            if (type != null && timepoint3.get(type) != timepoint.get(type) && timepoint2.get(type) != timepoint.get(type)) {
                break;
            }
        }
        return timepoint;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Timepoint[] getDisabledTimes() {
        TreeSet<Timepoint> treeSet = this.mDisabledTimes;
        return (Timepoint[]) treeSet.toArray(new Timepoint[treeSet.size()]);
    }

    public Timepoint getMaxTime() {
        return this.mMaxTime;
    }

    public Timepoint getMinTime() {
        return this.mMinTime;
    }

    public Timepoint[] getSelectableTimes() {
        TreeSet<Timepoint> treeSet = this.mSelectableTimes;
        return (Timepoint[]) treeSet.toArray(new Timepoint[treeSet.size()]);
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimepointLimiter
    public boolean isAmDisabled() {
        Timepoint timepoint = new Timepoint(12);
        Timepoint timepoint2 = this.mMinTime;
        if (timepoint2 == null || timepoint2.compareTo(timepoint) < 0) {
            return !this.exclusiveSelectableTimes.isEmpty() && this.exclusiveSelectableTimes.first().compareTo(timepoint) >= 0;
        }
        return true;
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimepointLimiter
    public boolean isOutOfRange(Timepoint timepoint, int i, Timepoint.TYPE type) {
        Timepoint.TYPE type2;
        Timepoint.TYPE type3;
        if (timepoint == null) {
            return false;
        }
        if (i == 0) {
            Timepoint timepoint2 = this.mMinTime;
            if (timepoint2 != null && timepoint2.getHour() > timepoint.getHour()) {
                return true;
            }
            Timepoint timepoint3 = this.mMaxTime;
            if (timepoint3 != null && timepoint3.getHour() + 1 <= timepoint.getHour()) {
                return true;
            }
            if (this.exclusiveSelectableTimes.isEmpty()) {
                if (this.mDisabledTimes.isEmpty() || type != (type3 = Timepoint.TYPE.HOUR)) {
                    return false;
                }
                return timepoint.equals(this.mDisabledTimes.ceiling(timepoint), type3) || timepoint.equals(this.mDisabledTimes.floor(timepoint), type3);
            }
            Timepoint timepointCeiling = this.exclusiveSelectableTimes.ceiling(timepoint);
            Timepoint timepointFloor = this.exclusiveSelectableTimes.floor(timepoint);
            Timepoint.TYPE type4 = Timepoint.TYPE.HOUR;
            return (timepoint.equals(timepointCeiling, type4) || timepoint.equals(timepointFloor, type4)) ? false : true;
        }
        if (i != 1) {
            return isOutOfRange(timepoint);
        }
        if (this.mMinTime != null && new Timepoint(this.mMinTime.getHour(), this.mMinTime.getMinute()).compareTo(timepoint) > 0) {
            return true;
        }
        if (this.mMaxTime != null && new Timepoint(this.mMaxTime.getHour(), this.mMaxTime.getMinute(), 59).compareTo(timepoint) < 0) {
            return true;
        }
        if (!this.exclusiveSelectableTimes.isEmpty()) {
            Timepoint timepointCeiling2 = this.exclusiveSelectableTimes.ceiling(timepoint);
            Timepoint timepointFloor2 = this.exclusiveSelectableTimes.floor(timepoint);
            Timepoint.TYPE type5 = Timepoint.TYPE.MINUTE;
            return (timepoint.equals(timepointCeiling2, type5) || timepoint.equals(timepointFloor2, type5)) ? false : true;
        }
        if (this.mDisabledTimes.isEmpty() || type != (type2 = Timepoint.TYPE.MINUTE)) {
            return false;
        }
        return timepoint.equals(this.mDisabledTimes.ceiling(timepoint), type2) || timepoint.equals(this.mDisabledTimes.floor(timepoint), type2);
    }

    @Override // com.wdullaer.materialdatetimepicker.time.TimepointLimiter
    public boolean isPmDisabled() {
        Timepoint timepoint = new Timepoint(12);
        Timepoint timepoint2 = this.mMaxTime;
        if (timepoint2 == null || timepoint2.compareTo(timepoint) >= 0) {
            return !this.exclusiveSelectableTimes.isEmpty() && this.exclusiveSelectableTimes.last().compareTo(timepoint) < 0;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x012d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x012e A[RETURN] */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0118, code lost:
    
        if (r3.getMinute() != r4.getMinute()) goto L75;
     */
    @Override // com.wdullaer.materialdatetimepicker.time.TimepointLimiter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Timepoint roundToNearest(Timepoint timepoint, Timepoint.TYPE type, Timepoint.TYPE type2) {
        Timepoint timepoint2 = this.mMinTime;
        if (timepoint2 != null && timepoint2.compareTo(timepoint) > 0) {
            return this.mMinTime;
        }
        Timepoint timepoint3 = this.mMaxTime;
        if (timepoint3 != null && timepoint3.compareTo(timepoint) < 0) {
            return this.mMaxTime;
        }
        Timepoint.TYPE type3 = Timepoint.TYPE.SECOND;
        if (type != type3) {
            if (!this.exclusiveSelectableTimes.isEmpty()) {
                Timepoint timepointFloor = this.exclusiveSelectableTimes.floor(timepoint);
                Timepoint timepointCeiling = this.exclusiveSelectableTimes.ceiling(timepoint);
                if (timepointFloor == null || timepointCeiling == null) {
                    if (timepointFloor == null) {
                        timepointFloor = timepointCeiling;
                    }
                    if (type == null) {
                        return timepointFloor;
                    }
                    return (timepointFloor.getHour() == timepoint.getHour() && (type != Timepoint.TYPE.MINUTE || timepointFloor.getMinute() == timepoint.getMinute())) ? timepointFloor : timepoint;
                }
                if (type == Timepoint.TYPE.HOUR) {
                    if (timepointFloor.getHour() == timepoint.getHour() || timepointCeiling.getHour() != timepoint.getHour()) {
                        if (timepointFloor.getHour() != timepoint.getHour() || timepointCeiling.getHour() == timepoint.getHour()) {
                            if (timepointFloor.getHour() != timepoint.getHour() && timepointCeiling.getHour() != timepoint.getHour()) {
                                return timepoint;
                            }
                        }
                        return timepointFloor;
                    }
                    return timepointCeiling;
                }
                if (type == Timepoint.TYPE.MINUTE) {
                    if (timepointFloor.getHour() == timepoint.getHour() || timepointCeiling.getHour() == timepoint.getHour()) {
                        if (timepointFloor.getHour() == timepoint.getHour() || timepointCeiling.getHour() != timepoint.getHour()) {
                            if (timepointFloor.getHour() != timepoint.getHour() || timepointCeiling.getHour() == timepoint.getHour()) {
                                if (timepointFloor.getMinute() == timepoint.getMinute() || timepointCeiling.getMinute() != timepoint.getMinute()) {
                                    if (timepointFloor.getMinute() != timepoint.getMinute() || timepointCeiling.getMinute() == timepoint.getMinute()) {
                                        if (timepointFloor.getMinute() != timepoint.getMinute()) {
                                        }
                                    }
                                    return timepointFloor;
                                }
                                return timepointCeiling;
                            }
                            if (timepointFloor.getMinute() == timepoint.getMinute()) {
                                return timepointFloor;
                            }
                        } else if (timepointCeiling.getMinute() == timepoint.getMinute()) {
                            return timepointCeiling;
                        }
                    }
                    return timepoint;
                }
                if (Math.abs(timepoint.compareTo(timepointFloor)) < Math.abs(timepoint.compareTo(timepointCeiling))) {
                    return timepointFloor;
                }
                return timepointCeiling;
            }
            if (!this.mDisabledTimes.isEmpty() && (type == null || type != type2)) {
                if (type2 != type3) {
                    Timepoint.TYPE type4 = Timepoint.TYPE.MINUTE;
                    if (type2 == type4) {
                        return (timepoint.equals(this.mDisabledTimes.ceiling(timepoint), type4) || timepoint.equals(this.mDisabledTimes.floor(timepoint), type4)) ? searchValidTimePoint(timepoint, type, type2) : timepoint;
                    }
                    Timepoint.TYPE type5 = Timepoint.TYPE.HOUR;
                    if (type2 == type5) {
                        return (timepoint.equals(this.mDisabledTimes.ceiling(timepoint), type5) || timepoint.equals(this.mDisabledTimes.floor(timepoint), type5)) ? searchValidTimePoint(timepoint, type, type2) : timepoint;
                    }
                } else if (this.mDisabledTimes.contains(timepoint)) {
                    return searchValidTimePoint(timepoint, type, type2);
                }
            }
        }
        return timepoint;
    }

    public void setDisabledTimes(Timepoint[] timepointArr) {
        this.mDisabledTimes.addAll(Arrays.asList(timepointArr));
        this.exclusiveSelectableTimes = getExclusiveSelectableTimes(this.mSelectableTimes, this.mDisabledTimes);
    }

    public void setMaxTime(Timepoint timepoint) {
        Timepoint timepoint2 = this.mMinTime;
        if (timepoint2 == null || timepoint.compareTo(timepoint2) >= 0) {
            this.mMaxTime = timepoint;
        } else {
            fg.c("Maximum time must be greater than the minimum time");
        }
    }

    public void setMinTime(Timepoint timepoint) {
        Timepoint timepoint2 = this.mMaxTime;
        if (timepoint2 == null || timepoint.compareTo(timepoint2) <= 0) {
            this.mMinTime = timepoint;
        } else {
            fg.c("Minimum time must be smaller than the maximum time");
        }
    }

    public void setSelectableTimes(Timepoint[] timepointArr) {
        this.mSelectableTimes.addAll(Arrays.asList(timepointArr));
        this.exclusiveSelectableTimes = getExclusiveSelectableTimes(this.mSelectableTimes, this.mDisabledTimes);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mMinTime, i);
        parcel.writeParcelable(this.mMaxTime, i);
        TreeSet<Timepoint> treeSet = this.mSelectableTimes;
        parcel.writeTypedArray((Parcelable[]) treeSet.toArray(new Timepoint[treeSet.size()]), i);
        TreeSet<Timepoint> treeSet2 = this.mDisabledTimes;
        parcel.writeTypedArray((Parcelable[]) treeSet2.toArray(new Timepoint[treeSet2.size()]), i);
    }

    public DefaultTimepointLimiter() {
        this.mSelectableTimes = new TreeSet<>();
        this.mDisabledTimes = new TreeSet<>();
        this.exclusiveSelectableTimes = new TreeSet<>();
    }

    public boolean isOutOfRange(Timepoint timepoint) {
        Timepoint timepoint2 = this.mMinTime;
        if (timepoint2 != null && timepoint2.compareTo(timepoint) > 0) {
            return true;
        }
        Timepoint timepoint3 = this.mMaxTime;
        if (timepoint3 == null || timepoint3.compareTo(timepoint) >= 0) {
            return !this.exclusiveSelectableTimes.isEmpty() ? !this.exclusiveSelectableTimes.contains(timepoint) : this.mDisabledTimes.contains(timepoint);
        }
        return true;
    }
}
