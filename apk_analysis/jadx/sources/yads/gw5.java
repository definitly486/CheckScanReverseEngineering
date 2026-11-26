package yads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class gw5 extends nb3 {
    public static final Parcelable.Creator<gw5> CREATOR = new fw5();
    public final String c;
    public final String d;

    /* JADX WARN: Illegal instructions before constructor call */
    public gw5(Parcel parcel) {
        String string = parcel.readString();
        int i = u56.a;
        super(string);
        this.c = parcel.readString();
        this.d = parcel.readString();
    }

    @Override // yads.g84
    public final void a(s04 s04Var) {
        byte b;
        String str = this.b;
        str.getClass();
        switch (str) {
            case "TAL":
                b = 0;
                break;
            case "TCM":
                b = 1;
                break;
            case "TDA":
                b = 2;
                break;
            case "TP1":
                b = 3;
                break;
            case "TP2":
                b = 4;
                break;
            case "TP3":
                b = 5;
                break;
            case "TRK":
                b = 6;
                break;
            case "TT2":
                b = 7;
                break;
            case "TXT":
                b = 8;
                break;
            case "TYE":
                b = 9;
                break;
            case "TALB":
                b = 10;
                break;
            case "TCOM":
                b = 11;
                break;
            case "TDAT":
                b = 12;
                break;
            case "TDRC":
                b = 13;
                break;
            case "TDRL":
                b = 14;
                break;
            case "TEXT":
                b = 15;
                break;
            case "TIT2":
                b = 16;
                break;
            case "TPE1":
                b = 17;
                break;
            case "TPE2":
                b = 18;
                break;
            case "TPE3":
                b = 19;
                break;
            case "TRCK":
                b = 20;
                break;
            case "TYER":
                b = 21;
                break;
            default:
                b = -1;
                break;
        }
        try {
            switch (b) {
                case 0:
                case 10:
                    s04Var.c = this.d;
                    break;
                case 1:
                case 11:
                    s04Var.x = this.d;
                    break;
                case 2:
                case 12:
                    int i = Integer.parseInt(this.d.substring(2, 4));
                    int i2 = Integer.parseInt(this.d.substring(0, 2));
                    s04Var.r = Integer.valueOf(i);
                    s04Var.s = Integer.valueOf(i2);
                    break;
                case 3:
                case 17:
                    s04Var.b = this.d;
                    break;
                case 4:
                case 18:
                    s04Var.d = this.d;
                    break;
                case 5:
                case 19:
                    s04Var.y = this.d;
                    break;
                case 6:
                case 20:
                    String str2 = this.d;
                    int i3 = u56.a;
                    String[] strArrSplit = str2.split("/", -1);
                    int i4 = Integer.parseInt(strArrSplit[0]);
                    Integer numValueOf = strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null;
                    s04Var.m = Integer.valueOf(i4);
                    s04Var.n = numValueOf;
                    break;
                case 7:
                case 16:
                    s04Var.a = this.d;
                    break;
                case 8:
                case 15:
                    s04Var.w = this.d;
                    break;
                case 9:
                case 21:
                    s04Var.q = Integer.valueOf(Integer.parseInt(this.d));
                    break;
                case 13:
                    ArrayList arrayListA = a(this.d);
                    int size = arrayListA.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                s04Var.s = (Integer) arrayListA.get(2);
                            }
                        }
                        s04Var.r = (Integer) arrayListA.get(1);
                    }
                    s04Var.q = (Integer) arrayListA.get(0);
                    break;
                case 14:
                    ArrayList arrayListA2 = a(this.d);
                    int size2 = arrayListA2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                s04Var.v = (Integer) arrayListA2.get(2);
                            }
                        }
                        s04Var.u = (Integer) arrayListA2.get(1);
                    }
                    s04Var.t = (Integer) arrayListA2.get(0);
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && gw5.class == obj.getClass()) {
            gw5 gw5Var = (gw5) obj;
            if (u56.a(this.b, gw5Var.b) && u56.a(this.c, gw5Var.c) && u56.a(this.d, gw5Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iA = l4.a(527, 31, this.b);
        String str = this.c;
        int iHashCode = (iA + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // yads.nb3
    public final String toString() {
        return this.b + ": description=" + this.c + ": value=" + this.d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }

    public gw5(String str, String str2, String str3) {
        super(str);
        this.c = str2;
        this.d = str3;
    }

    public static ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            }
            if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            }
            if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }
}
