package com.warefly.checkscan.tasks.presentation.flows;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.kv2;

/* JADX INFO: loaded from: classes5.dex */
public interface TasksReason extends Parcelable {

    public static final class CheckboxStepsTaskDetails implements TasksReason {
        public static final Parcelable.Creator<CheckboxStepsTaskDetails> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<CheckboxStepsTaskDetails> {
            @Override // android.os.Parcelable.Creator
            public final CheckboxStepsTaskDetails createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CheckboxStepsTaskDetails(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final CheckboxStepsTaskDetails[] newArray(int i) {
                return new CheckboxStepsTaskDetails[i];
            }
        }

        public CheckboxStepsTaskDetails(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CheckboxStepsTaskDetails) && this.b == ((CheckboxStepsTaskDetails) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "CheckboxStepsTaskDetails(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class CheckboxTaskDetails implements TasksReason {
        public static final Parcelable.Creator<CheckboxTaskDetails> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<CheckboxTaskDetails> {
            @Override // android.os.Parcelable.Creator
            public final CheckboxTaskDetails createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new CheckboxTaskDetails(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final CheckboxTaskDetails[] newArray(int i) {
                return new CheckboxTaskDetails[i];
            }
        }

        public CheckboxTaskDetails(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CheckboxTaskDetails) && this.b == ((CheckboxTaskDetails) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "CheckboxTaskDetails(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class CompletedTasks implements TasksReason {
        public static final CompletedTasks b = new CompletedTasks();
        public static final Parcelable.Creator<CompletedTasks> CREATOR = new a();

        public static final class a implements Parcelable.Creator<CompletedTasks> {
            @Override // android.os.Parcelable.Creator
            public final CompletedTasks createFromParcel(Parcel parcel) {
                parcel.getClass();
                parcel.readInt();
                return CompletedTasks.b;
            }

            @Override // android.os.Parcelable.Creator
            public final CompletedTasks[] newArray(int i) {
                return new CompletedTasks[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(1);
        }
    }

    public static final class DailyTask implements TasksReason {
        public static final Parcelable.Creator<DailyTask> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<DailyTask> {
            @Override // android.os.Parcelable.Creator
            public final DailyTask createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new DailyTask(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final DailyTask[] newArray(int i) {
                return new DailyTask[i];
            }
        }

        public DailyTask(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DailyTask) && this.b == ((DailyTask) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "DailyTask(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class GroupedTasks implements TasksReason {
        public static final Parcelable.Creator<GroupedTasks> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<GroupedTasks> {
            @Override // android.os.Parcelable.Creator
            public final GroupedTasks createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new GroupedTasks(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final GroupedTasks[] newArray(int i) {
                return new GroupedTasks[i];
            }
        }

        public GroupedTasks(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof GroupedTasks) && this.b == ((GroupedTasks) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "GroupedTasks(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class MultiTaskDetails implements TasksReason {
        public static final Parcelable.Creator<MultiTaskDetails> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<MultiTaskDetails> {
            @Override // android.os.Parcelable.Creator
            public final MultiTaskDetails createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new MultiTaskDetails(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final MultiTaskDetails[] newArray(int i) {
                return new MultiTaskDetails[i];
            }
        }

        public MultiTaskDetails(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MultiTaskDetails) && this.b == ((MultiTaskDetails) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "MultiTaskDetails(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class PromocodeDetailsTask implements TasksReason {
        public static final Parcelable.Creator<PromocodeDetailsTask> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<PromocodeDetailsTask> {
            @Override // android.os.Parcelable.Creator
            public final PromocodeDetailsTask createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new PromocodeDetailsTask(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final PromocodeDetailsTask[] newArray(int i) {
                return new PromocodeDetailsTask[i];
            }
        }

        public PromocodeDetailsTask(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof PromocodeDetailsTask) && this.b == ((PromocodeDetailsTask) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "PromocodeDetailsTask(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class RewardedMultiTaskDetails implements TasksReason {
        public static final Parcelable.Creator<RewardedMultiTaskDetails> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<RewardedMultiTaskDetails> {
            @Override // android.os.Parcelable.Creator
            public final RewardedMultiTaskDetails createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new RewardedMultiTaskDetails(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final RewardedMultiTaskDetails[] newArray(int i) {
                return new RewardedMultiTaskDetails[i];
            }
        }

        public RewardedMultiTaskDetails(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RewardedMultiTaskDetails) && this.b == ((RewardedMultiTaskDetails) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "RewardedMultiTaskDetails(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }

    public static final class TaskDetails implements TasksReason {
        public static final Parcelable.Creator<TaskDetails> CREATOR = new a();
        public final int b;

        public static final class a implements Parcelable.Creator<TaskDetails> {
            @Override // android.os.Parcelable.Creator
            public final TaskDetails createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new TaskDetails(parcel.readInt());
            }

            @Override // android.os.Parcelable.Creator
            public final TaskDetails[] newArray(int i) {
                return new TaskDetails[i];
            }
        }

        public TaskDetails(int i) {
            this.b = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TaskDetails) && this.b == ((TaskDetails) obj).b;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b);
        }

        public final String toString() {
            return kv2.b(this.b, "TaskDetails(id=", ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.getClass();
            parcel.writeInt(this.b);
        }
    }
}
