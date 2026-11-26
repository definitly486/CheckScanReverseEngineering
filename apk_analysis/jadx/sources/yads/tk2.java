package yads;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class tk2 implements Parcelable {
    public static final Parcelable.Creator<tk2> CREATOR = new sk2();
    public final String b;
    public final Uri c;
    public final String d;
    public final List e;
    public final byte[] f;
    public final String g;
    public final byte[] h;

    public tk2(String str, Uri uri, String str2, List list, byte[] bArr, String str3, byte[] bArr2) {
        int iA = u56.a(uri, str2);
        if (iA == 0 || iA == 2 || iA == 1) {
            zj.a("customCacheKey must be null for type: " + iA, str3 == null);
        }
        this.b = str;
        this.c = uri;
        this.d = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.e = Collections.unmodifiableList(arrayList);
        this.f = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.g = str3;
        this.h = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : u56.f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof tk2)) {
            return false;
        }
        tk2 tk2Var = (tk2) obj;
        return this.b.equals(tk2Var.b) && this.c.equals(tk2Var.c) && u56.a(this.d, tk2Var.d) && this.e.equals(tk2Var.e) && Arrays.equals(this.f, tk2Var.f) && u56.a(this.g, tk2Var.g) && Arrays.equals(this.h, tk2Var.h);
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + (this.b.hashCode() * 961)) * 31;
        String str = this.d;
        int iHashCode2 = (Arrays.hashCode(this.f) + ((this.e.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        String str2 = this.g;
        return Arrays.hashCode(this.h) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return this.d + StringUtils.PROCESS_POSTFIX_DELIMITER + this.b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c.toString());
        parcel.writeString(this.d);
        parcel.writeInt(this.e.size());
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            parcel.writeParcelable((Parcelable) this.e.get(i2), 0);
        }
        parcel.writeByteArray(this.f);
        parcel.writeString(this.g);
        parcel.writeByteArray(this.h);
    }

    public tk2(Parcel parcel) {
        String string = parcel.readString();
        int i = u56.a;
        this.b = string;
        this.c = Uri.parse(parcel.readString());
        this.d = parcel.readString();
        int i2 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add((bs5) parcel.readParcelable(bs5.class.getClassLoader()));
        }
        this.e = Collections.unmodifiableList(arrayList);
        this.f = parcel.createByteArray();
        this.g = parcel.readString();
        this.h = parcel.createByteArray();
    }
}
