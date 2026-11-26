package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.k2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();
    public final int b;
    public final long c;
    public final long d;
    public final float e;
    public final long f;
    public final int g;
    public final CharSequence h;
    public final long i;
    public final ArrayList j;
    public final long k;
    public final Bundle l;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();
        public final String b;
        public final CharSequence c;
        public final int d;
        public final Bundle e;

        public static class a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            public final CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        public CustomAction(Parcel parcel) {
            this.b = parcel.readString();
            this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.d = parcel.readInt();
            this.e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.c) + ", mIcon=" + this.d + ", mExtras=" + this.e;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.b);
            TextUtils.writeToParcel(this.c, parcel, i);
            parcel.writeInt(this.d);
            parcel.writeBundle(this.e);
        }
    }

    public static class a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readLong();
        this.e = parcel.readFloat();
        this.i = parcel.readLong();
        this.d = parcel.readLong();
        this.f = parcel.readLong();
        this.h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.k = parcel.readLong();
        this.l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.g = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.b);
        sb.append(", position=");
        sb.append(this.c);
        sb.append(", buffered position=");
        sb.append(this.d);
        sb.append(", speed=");
        sb.append(this.e);
        sb.append(", updated=");
        sb.append(this.i);
        sb.append(", actions=");
        sb.append(this.f);
        sb.append(", error code=");
        sb.append(this.g);
        sb.append(", error message=");
        sb.append(this.h);
        sb.append(", custom actions=");
        sb.append(this.j);
        sb.append(", active item id=");
        return k2.b(this.k, "}", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
        parcel.writeFloat(this.e);
        parcel.writeLong(this.i);
        parcel.writeLong(this.d);
        parcel.writeLong(this.f);
        TextUtils.writeToParcel(this.h, parcel, i);
        parcel.writeTypedList(this.j);
        parcel.writeLong(this.k);
        parcel.writeBundle(this.l);
        parcel.writeInt(this.g);
    }
}
