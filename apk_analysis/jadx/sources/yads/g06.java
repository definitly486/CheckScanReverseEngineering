package yads;

import android.os.Bundle;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class g06 implements kv {
    public static final g06 e = new g06(new f06[0]);
    public static final jv f = new defpackage.cc(9);
    public final int b;
    public final k55 c;
    public int d;

    public g06(f06... f06VarArr) {
        this.c = oe3.b(f06VarArr);
        this.b = f06VarArr.length;
        int i = 0;
        while (i < this.c.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.c.size(); i3++) {
                if (((f06) this.c.get(i)).equals(this.c.get(i3))) {
                    sv3.b("TrackGroupArray", sv3.a("", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray.")));
                }
            }
            i = i2;
        }
    }

    public static g06 a(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(Integer.toString(0, 36));
        return parcelableArrayList == null ? new g06(new f06[0]) : new g06((f06[]) lv.a(f06.g, parcelableArrayList).toArray(new f06[0]));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && g06.class == obj.getClass()) {
            g06 g06Var = (g06) obj;
            if (this.b == g06Var.b && this.c.equals(g06Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.d;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.c.hashCode();
        this.d = iHashCode;
        return iHashCode;
    }

    public final f06 a(int i) {
        return (f06) this.c.get(i);
    }
}
