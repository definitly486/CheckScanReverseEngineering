package yads;

import android.text.TextUtils;
import androidx.media3.common.C;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class mv implements k06 {
    public final int a;
    public final vz2 b;
    public final cm2 c = new cm2();
    public vz2 d;
    public k06 e;
    public long f;

    public mv(int i, int i2, vz2 vz2Var) {
        this.a = i2;
        this.b = vz2Var;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008c  */
    @Override // yads.k06
    public final void a(vz2 vz2Var) {
        vz2 vz2Var2;
        String str;
        String str2;
        String string;
        vz2 vz2Var3 = this.b;
        if (vz2Var3 == null) {
            vz2Var2 = vz2Var;
        } else if (vz2Var == vz2Var3) {
            vz2Var.getClass();
            vz2Var2 = vz2Var;
        } else {
            int iD = z84.d(vz2Var.m);
            String str3 = vz2Var3.b;
            String str4 = vz2Var3.c;
            if (str4 == null) {
                str4 = vz2Var.c;
            }
            String str5 = vz2Var.d;
            if ((iD == 3 || iD == 1) && (str = vz2Var3.d) != null) {
                str5 = str;
            }
            int i = vz2Var.g;
            if (i == -1) {
                i = vz2Var3.g;
            }
            int i2 = vz2Var.h;
            if (i2 == -1) {
                i2 = vz2Var3.h;
            }
            String str6 = vz2Var.j;
            if (str6 == null) {
                String str7 = vz2Var3.j;
                String[] strArrSplit = TextUtils.isEmpty(str7) ? new String[0] : str7.trim().split("(\\s*,\\s*)", -1);
                if (strArrSplit.length == 0) {
                    string = null;
                } else {
                    StringBuilder sb = new StringBuilder();
                    int length = strArrSplit.length;
                    int i3 = 0;
                    while (i3 < length) {
                        String str8 = strArrSplit[i3];
                        int i4 = length;
                        if (iD == z84.d(z84.a(str8))) {
                            if (sb.length() > 0) {
                                sb.append(StringUtils.COMMA);
                            }
                            sb.append(str8);
                        }
                        i3++;
                        length = i4;
                    }
                    if (sb.length() > 0) {
                        string = sb.toString();
                    } else {
                        string = null;
                    }
                }
                if ((TextUtils.isEmpty(string) ? new String[0] : string.trim().split("(\\s*,\\s*)", -1)).length == 1) {
                    str6 = string;
                }
            }
            h84 h84Var = vz2Var.k;
            h84 h84Var2 = vz2Var3.k;
            if (h84Var == null) {
                h84Var = h84Var2;
            } else if (h84Var2 != null) {
                g84[] g84VarArr = h84Var2.b;
                if (g84VarArr.length != 0) {
                    h84Var = new h84((g84[]) u56.a((Object[]) h84Var.b, (Object[]) g84VarArr));
                }
            }
            float f = vz2Var.t;
            if (f == -1.0f && iD == 2) {
                f = vz2Var3.t;
            }
            int i5 = vz2Var.e | vz2Var3.e;
            int i6 = vz2Var.f | vz2Var3.f;
            ql2 ql2Var = vz2Var3.p;
            ql2 ql2Var2 = vz2Var.p;
            ArrayList arrayList = new ArrayList();
            if (ql2Var != null) {
                String str9 = ql2Var.d;
                pl2[] pl2VarArr = ql2Var.b;
                int length2 = pl2VarArr.length;
                int i7 = 0;
                while (i7 < length2) {
                    int i8 = i7;
                    pl2 pl2Var = pl2VarArr[i8];
                    int i9 = length2;
                    if (pl2Var.f != null) {
                        arrayList.add(pl2Var);
                    }
                    i7 = i8 + 1;
                    length2 = i9;
                }
                str2 = str9;
            } else {
                str2 = null;
            }
            if (ql2Var2 != null) {
                if (str2 == null) {
                    str2 = ql2Var2.d;
                }
                int size = arrayList.size();
                pl2[] pl2VarArr2 = ql2Var2.b;
                String str10 = str2;
                int length3 = pl2VarArr2.length;
                int i10 = 0;
                while (i10 < length3) {
                    int i11 = i10;
                    pl2 pl2Var2 = pl2VarArr2[i11];
                    int i12 = length3;
                    if (pl2Var2.f != null) {
                        UUID uuid = pl2Var2.c;
                        int i13 = 0;
                        while (true) {
                            if (i13 >= size) {
                                arrayList.add(pl2Var2);
                                break;
                            }
                            int i14 = i13;
                            if (((pl2) arrayList.get(i13)).c.equals(uuid)) {
                                break;
                            } else {
                                i13 = i14 + 1;
                            }
                        }
                    }
                    i10 = i11 + 1;
                    length3 = i12;
                }
                str2 = str10;
            }
            ql2 ql2Var3 = arrayList.isEmpty() ? null : new ql2(str2, false, (pl2[]) arrayList.toArray(new pl2[0]));
            uz2 uz2Var = new uz2(vz2Var);
            uz2Var.a = str3;
            uz2Var.b = str4;
            uz2Var.c = str5;
            uz2Var.d = i5;
            uz2Var.e = i6;
            uz2Var.f = i;
            uz2Var.g = i2;
            uz2Var.h = str6;
            uz2Var.i = h84Var;
            uz2Var.n = ql2Var3;
            uz2Var.r = f;
            vz2Var2 = new vz2(uz2Var);
        }
        this.d = vz2Var2;
        k06 k06Var = this.e;
        int i15 = u56.a;
        k06Var.a(vz2Var2);
    }

    @Override // yads.k06
    public final int a(tc0 tc0Var, int i, boolean z) {
        k06 k06Var = this.e;
        int i2 = u56.a;
        return k06Var.b(tc0Var, i, z);
    }

    @Override // yads.k06
    public final void a(int i, os4 os4Var) {
        k06 k06Var = this.e;
        int i2 = u56.a;
        k06Var.a(i, os4Var);
    }

    @Override // yads.k06
    public final void a(long j, int i, int i2, int i3, j06 j06Var) {
        long j2 = this.f;
        if (j2 != C.TIME_UNSET && j >= j2) {
            this.e = this.c;
        }
        k06 k06Var = this.e;
        int i4 = u56.a;
        k06Var.a(j, i, i2, i3, j06Var);
    }
}
