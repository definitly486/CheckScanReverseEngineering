package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class hb3 implements g84 {
    public static final Parcelable.Creator<hb3> CREATOR = new gb3();
    public final int b;
    public final String c;
    public final String d;
    public final String e;
    public final boolean f;
    public final int g;

    public hb3(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        int i = u56.a;
        this.f = parcel.readInt() != 0;
        this.g = parcel.readInt();
    }

    public static hb3 a(Map map) {
        boolean z;
        int i;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i2;
        int i3;
        List list = (List) map.get("icy-br");
        boolean z2 = true;
        int i4 = -1;
        if (list != null) {
            String str4 = (String) list.get(0);
            try {
                i3 = Integer.parseInt(str4) * 1000;
                if (i3 > 0) {
                    z = true;
                    i = i3;
                } else {
                    try {
                        sv3.d("IcyHeaders", "Invalid bitrate: " + str4);
                        z = false;
                        i = -1;
                    } catch (NumberFormatException unused) {
                        cz3.a("Invalid bitrate header: ", str4, "IcyHeaders");
                        z = false;
                        i = i3;
                    }
                }
            } catch (NumberFormatException unused2) {
                i3 = -1;
            }
        } else {
            z = false;
            i = -1;
        }
        List list2 = (List) map.get("icy-genre");
        if (list2 != null) {
            str = (String) list2.get(0);
            z = true;
        } else {
            str = null;
        }
        List list3 = (List) map.get("icy-name");
        if (list3 != null) {
            str2 = (String) list3.get(0);
            z = true;
        } else {
            str2 = null;
        }
        List list4 = (List) map.get("icy-url");
        if (list4 != null) {
            str3 = (String) list4.get(0);
            z = true;
        } else {
            str3 = null;
        }
        List list5 = (List) map.get("icy-pub");
        if (list5 != null) {
            zEquals = ((String) list5.get(0)).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        List list6 = (List) map.get("icy-metaint");
        if (list6 != null) {
            String str5 = (String) list6.get(0);
            try {
                int i5 = Integer.parseInt(str5);
                if (i5 > 0) {
                    i2 = i5;
                } else {
                    try {
                        sv3.d("IcyHeaders", "Invalid metadata interval: " + str5);
                    } catch (NumberFormatException unused3) {
                        i4 = i5;
                        cz3.a("Invalid metadata interval: ", str5, "IcyHeaders");
                    }
                    z2 = z;
                    i2 = i4;
                }
            } catch (NumberFormatException unused4) {
            }
        } else {
            z2 = z;
            i2 = i4;
        }
        if (z2) {
            return new hb3(i, str, str2, str3, zEquals, i2);
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && hb3.class == obj.getClass()) {
            hb3 hb3Var = (hb3) obj;
            if (this.b == hb3Var.b && u56.a(this.c, hb3Var.c) && u56.a(this.d, hb3Var.d) && u56.a(this.e, hb3Var.e) && this.f == hb3Var.f && this.g == hb3Var.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (this.b + 527) * 31;
        String str = this.c;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.e;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f ? 1 : 0)) * 31) + this.g;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.d + "\", genre=\"" + this.c + "\", bitrate=" + this.b + ", metadataInterval=" + this.g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        boolean z = this.f;
        int i2 = u56.a;
        parcel.writeInt(z ? 1 : 0);
        parcel.writeInt(this.g);
    }

    public hb3(int i, String str, String str2, String str3, boolean z, int i2) {
        if (i2 != -1 && i2 <= 0) {
            defpackage.mi2.b();
            throw null;
        }
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = z;
        this.g = i2;
    }

    @Override // yads.g84
    public final void a(s04 s04Var) {
        String str = this.d;
        if (str != null) {
            s04Var.D = str;
        }
        String str2 = this.c;
        if (str2 != null) {
            s04Var.B = str2;
        }
    }
}
