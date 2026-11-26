package yads;

import android.net.Uri;
import defpackage.u96;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xr0 {
    public final nc1 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;
    public final List e;
    public final JSONObject f;
    public final as2 g;
    public final String h;
    public final as2 i;
    public final ry0 j;
    public final as2 k;

    public xr0(nc1 nc1Var, as2 as2Var, as2 as2Var2, as2 as2Var3, List list, JSONObject jSONObject, as2 as2Var4, String str, as2 as2Var5, ry0 ry0Var, as2 as2Var6) {
        this.a = nc1Var;
        this.b = as2Var;
        this.c = as2Var2;
        this.d = as2Var3;
        this.e = list;
        this.f = jSONObject;
        this.g = as2Var4;
        this.h = str;
        this.i = as2Var5;
        this.j = ry0Var;
        this.k = as2Var6;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0169  */
    /* JADX WARN: Code duplicated, block: B:101:0x016b  */
    /* JADX WARN: Code duplicated, block: B:103:0x016e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0172  */
    /* JADX WARN: Code duplicated, block: B:106:0x0179  */
    /* JADX WARN: Code duplicated, block: B:109:0x017e  */
    /* JADX WARN: Code duplicated, block: B:112:0x018b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:115:0x018c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0107 A[LOOP:0: B:34:0x0084->B:69:0x0107, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:75:0x011a  */
    /* JADX WARN: Code duplicated, block: B:77:0x011e  */
    /* JADX WARN: Code duplicated, block: B:78:0x0125  */
    /* JADX WARN: Code duplicated, block: B:81:0x012a  */
    /* JADX WARN: Code duplicated, block: B:82:0x0131  */
    /* JADX WARN: Code duplicated, block: B:89:0x0146  */
    /* JADX WARN: Code duplicated, block: B:90:0x014d  */
    /* JADX WARN: Code duplicated, block: B:93:0x0152  */
    /* JADX WARN: Code duplicated, block: B:94:0x0159  */
    /* JADX WARN: Code duplicated, block: B:96:0x015c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0162  */
    /* JADX WARN: Code duplicated, block: B:99:0x0167 A[DONT_INVERT] */
    public final boolean a(xr0 xr0Var, fs2 fs2Var, fs2 fs2Var2) {
        as2 as2Var;
        Uri uri;
        as2 as2Var2;
        Uri uri2;
        as2 as2Var3;
        wr0 wr0Var;
        as2 as2Var4;
        wr0 wr0Var2;
        ry0 ry0Var;
        ry0 ry0Var2;
        boolean zA;
        as2 as2Var5;
        Uri uri3;
        as2 as2Var6;
        if (xr0Var == null) {
            return false;
        }
        nc1 nc1Var = this.a;
        nc1 nc1Var2 = xr0Var.a;
        if ((nc1Var != null ? nc1Var.a(nc1Var2, fs2Var, fs2Var2) : nc1Var2 == null) && ((Boolean) this.b.a(fs2Var)).booleanValue() == ((Boolean) xr0Var.b.a(fs2Var2)).booleanValue() && defpackage.aa4.e(this.c.a(fs2Var), xr0Var.c.a(fs2Var2))) {
            as2 as2Var7 = this.d;
            Uri uri4 = as2Var7 != null ? (Uri) as2Var7.a(fs2Var) : null;
            as2 as2Var8 = xr0Var.d;
            if (defpackage.aa4.e(uri4, as2Var8 != null ? (Uri) as2Var8.a(fs2Var2) : null)) {
                List list = this.e;
                List list2 = xr0Var.e;
                if (list != null) {
                    if (list2 != null && list.size() == list2.size()) {
                        int i = 0;
                        for (Object obj : list) {
                            int i2 = i + 1;
                            if (i < 0) {
                                u96.o();
                                throw null;
                            }
                            ur0 ur0Var = (ur0) list2.get(i);
                            ur0 ur0Var2 = (ur0) obj;
                            if (ur0Var == null) {
                                ur0Var2.getClass();
                            } else {
                                xr0 xr0Var2 = ur0Var2.a;
                                xr0 xr0Var3 = ur0Var.a;
                                if (xr0Var2 != null ? xr0Var2.a(xr0Var3, fs2Var, fs2Var2) : xr0Var3 == null) {
                                    List list3 = ur0Var2.b;
                                    List list4 = ur0Var.b;
                                    if (list3 != null) {
                                        if (list4 != null && list3.size() == list4.size()) {
                                            int i3 = 0;
                                            for (Object obj2 : list3) {
                                                int i4 = i3 + 1;
                                                if (i3 < 0) {
                                                    u96.o();
                                                    throw null;
                                                }
                                                if (((xr0) obj2).a((xr0) list4.get(i3), fs2Var, fs2Var2)) {
                                                    i3 = i4;
                                                }
                                            }
                                            if (defpackage.aa4.e(ur0Var2.c.a(fs2Var), ur0Var.c.a(fs2Var2))) {
                                                i = i2;
                                            }
                                        }
                                    } else if (list4 == null) {
                                        if (defpackage.aa4.e(ur0Var2.c.a(fs2Var), ur0Var.c.a(fs2Var2))) {
                                            i = i2;
                                        }
                                    }
                                }
                            }
                        }
                        if (defpackage.aa4.e(this.f, xr0Var.f)) {
                            as2Var = this.g;
                            if (as2Var != null) {
                                uri = (Uri) as2Var.a(fs2Var);
                            } else {
                                uri = null;
                            }
                            as2Var2 = xr0Var.g;
                            if (as2Var2 != null) {
                                uri2 = (Uri) as2Var2.a(fs2Var2);
                            } else {
                                uri2 = null;
                            }
                            if (defpackage.aa4.e(uri, uri2) && defpackage.aa4.e(this.h, xr0Var.h)) {
                                as2Var3 = this.i;
                                if (as2Var3 != null) {
                                    wr0Var = (wr0) as2Var3.a(fs2Var);
                                } else {
                                    wr0Var = null;
                                }
                                as2Var4 = xr0Var.i;
                                if (as2Var4 != null) {
                                    wr0Var2 = (wr0) as2Var4.a(fs2Var2);
                                } else {
                                    wr0Var2 = null;
                                }
                                if (wr0Var == wr0Var2) {
                                    ry0Var = this.j;
                                    ry0Var2 = xr0Var.j;
                                    if (ry0Var != null) {
                                        zA = ry0Var.a(ry0Var2, fs2Var, fs2Var2);
                                    } else if (ry0Var2 == null) {
                                        zA = true;
                                    } else {
                                        zA = false;
                                    }
                                    if (zA) {
                                        as2Var5 = this.k;
                                        if (as2Var5 != null) {
                                            uri3 = (Uri) as2Var5.a(fs2Var);
                                        } else {
                                            uri3 = null;
                                        }
                                        as2Var6 = xr0Var.k;
                                        if (defpackage.aa4.e(uri3, as2Var6 != null ? (Uri) as2Var6.a(fs2Var2) : null)) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (list2 == null) {
                    if (defpackage.aa4.e(this.f, xr0Var.f)) {
                        as2Var = this.g;
                        if (as2Var != null) {
                            uri = (Uri) as2Var.a(fs2Var);
                        } else {
                            uri = null;
                        }
                        as2Var2 = xr0Var.g;
                        if (as2Var2 != null) {
                            uri2 = (Uri) as2Var2.a(fs2Var2);
                        } else {
                            uri2 = null;
                        }
                        if (defpackage.aa4.e(uri, uri2)) {
                            as2Var3 = this.i;
                            if (as2Var3 != null) {
                                wr0Var = (wr0) as2Var3.a(fs2Var);
                            } else {
                                wr0Var = null;
                            }
                            as2Var4 = xr0Var.i;
                            if (as2Var4 != null) {
                                wr0Var2 = (wr0) as2Var4.a(fs2Var2);
                            } else {
                                wr0Var2 = null;
                            }
                            if (wr0Var == wr0Var2) {
                                ry0Var = this.j;
                                ry0Var2 = xr0Var.j;
                                if (ry0Var != null) {
                                    zA = ry0Var.a(ry0Var2, fs2Var, fs2Var2);
                                } else if (ry0Var2 == null) {
                                    zA = true;
                                } else {
                                    zA = false;
                                }
                                if (zA) {
                                    as2Var5 = this.k;
                                    if (as2Var5 != null) {
                                        uri3 = (Uri) as2Var5.a(fs2Var);
                                    } else {
                                        uri3 = null;
                                    }
                                    as2Var6 = xr0Var.k;
                                    if (defpackage.aa4.e(uri3, as2Var6 != null ? (Uri) as2Var6.a(fs2Var2) : null)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }
}
