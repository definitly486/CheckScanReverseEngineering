package com.warefly.checkscan.presentation.flows.promotions.models;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class Result implements Parcelable {
    private static final /* synthetic */ Result[] $VALUES;
    public static final Result ALREADY_EXIST;
    public static final Parcelable.Creator<Result> CREATOR;
    public static final Result ERROR;
    public static final Result SUCCESS;

    public static final class a implements Parcelable.Creator<Result> {
        @Override // android.os.Parcelable.Creator
        public final Result createFromParcel(Parcel parcel) {
            parcel.getClass();
            return Result.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final Result[] newArray(int i) {
            return new Result[i];
        }
    }

    static {
        Result result = new Result("SUCCESS", 0);
        SUCCESS = result;
        Result result2 = new Result("ERROR", 1);
        ERROR = result2;
        Result result3 = new Result("ALREADY_EXIST", 2);
        ALREADY_EXIST = result3;
        $VALUES = new Result[]{result, result2, result3};
        CREATOR = new a();
    }

    public Result() {
        throw null;
    }

    public static Result valueOf(String str) {
        return (Result) Enum.valueOf(Result.class, str);
    }

    public static Result[] values() {
        return (Result[]) $VALUES.clone();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(name());
    }
}
