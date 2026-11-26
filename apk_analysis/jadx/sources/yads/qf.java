package yads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.metadata.id3.ApicFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class qf extends nb3 {
    public static final Parcelable.Creator<qf> CREATOR = new pf();
    public final String c;
    public final String d;
    public final int e;
    public final byte[] f;

    public qf(Parcel parcel) {
        super(ApicFrame.ID);
        String string = parcel.readString();
        int i = u56.a;
        this.c = string;
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.createByteArray();
    }

    @Override // yads.g84
    public final void a(s04 s04Var) {
        byte[] bArr = this.f;
        int i = this.e;
        if (s04Var.j != null) {
            Integer numValueOf = Integer.valueOf(i);
            int i2 = u56.a;
            if (!numValueOf.equals(3) && u56.a((Object) s04Var.k, (Object) 3)) {
                return;
            }
        }
        s04Var.j = (byte[]) bArr.clone();
        s04Var.k = Integer.valueOf(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && qf.class == obj.getClass()) {
            qf qfVar = (qf) obj;
            if (this.e == qfVar.e && u56.a(this.c, qfVar.c) && u56.a(this.d, qfVar.d) && Arrays.equals(this.f, qfVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (this.e + 527) * 31;
        String str = this.c;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return Arrays.hashCode(this.f) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // yads.nb3
    public final String toString() {
        return this.b + ": mimeType=" + this.c + ", description=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeByteArray(this.f);
    }

    public qf(String str, String str2, int i, byte[] bArr) {
        super(ApicFrame.ID);
        this.c = str;
        this.d = str2;
        this.e = i;
        this.f = bArr;
    }
}
