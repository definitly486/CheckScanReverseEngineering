package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class nb3 implements g84 {
    public final String b;

    public nb3(String str) {
        this.b = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.b;
    }
}
