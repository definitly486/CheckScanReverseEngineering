package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cp5 implements g84 {
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "SCTE-35 splice command: type=".concat(getClass().getSimpleName());
    }
}
