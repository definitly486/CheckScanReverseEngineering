package yads;

import android.content.Context;
import android.os.SystemClock;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class zj0 implements vn, p16 {
    public static final k55 n = oe3.a(4800000L, 3100000L, 2100000L, 1500000L, 800000L);
    public static final k55 o = oe3.a(1500000L, 1000000L, 730000L, 440000L, 170000L);
    public static final k55 p = oe3.a(2200000L, 1400000L, 1100000L, 910000L, 620000L);
    public static final k55 q = oe3.a(3000000L, 1900000L, 1400000L, 1000000L, 660000L);
    public static final k55 r = oe3.a(6000000L, 4100000L, 3200000L, 1800000L, 1000000L);
    public static final k55 s = oe3.a(2800000L, 2400000L, 1600000L, 1100000L, 950000L);
    public static zj0 t;
    public final re3 a;
    public final tn b = new tn();
    public final mn5 c;
    public final du5 d;
    public final boolean e;
    public int f;
    public long g;
    public long h;
    public int i;
    public long j;
    public long k;
    public long l;
    public long m;

    public zj0(Context context, HashMap map, int i, du5 du5Var, boolean z) {
        this.a = re3.a(map);
        this.c = new mn5(i);
        this.d = du5Var;
        this.e = z;
        if (context == null) {
            this.i = 0;
            this.l = a(0);
            return;
        }
        nn4 nn4VarA = nn4.a(context);
        int iA = nn4VarA.a();
        this.i = iA;
        this.l = a(iA);
        nn4VarA.b(new ln4() { // from class: tna
            @Override // yads.ln4
            public final void a(int i2) {
                this.a.b(i2);
            }
        });
    }

    public static int[] a(String str) {
        str.getClass();
        switch (str) {
            case "AD":
            case "BM":
            case "BQ":
            case "GD":
            case "GL":
            case "KN":
            case "KY":
            case "LC":
            case "VC":
                return new int[]{1, 2, 0, 0, 2, 2};
            case "AE":
                return new int[]{1, 4, 4, 4, 4, 0};
            case "AF":
            case "GM":
                return new int[]{4, 3, 3, 4, 2, 2};
            case "AG":
                return new int[]{2, 4, 1, 2, 2, 2};
            case "AI":
                return new int[]{0, 2, 0, 3, 2, 2};
            case "AL":
            case "XK":
                return new int[]{1, 1, 1, 1, 2, 2};
            case "AM":
                return new int[]{2, 3, 2, 3, 2, 2};
            case "AO":
                return new int[]{4, 4, 3, 2, 2, 2};
            case "AQ":
            case "ER":
            case "SH":
                return new int[]{4, 2, 2, 2, 2, 2};
            case "AR":
            case "KG":
            case "TN":
            case "UY":
                return new int[]{2, 1, 1, 1, 2, 2};
            case "AS":
                return new int[]{2, 2, 3, 3, 2, 2};
            case "AT":
                return new int[]{1, 0, 1, 1, 0, 0};
            case "AU":
                return new int[]{0, 1, 1, 1, 2, 0};
            case "AW":
                return new int[]{1, 3, 4, 4, 2, 2};
            case "AX":
            case "LI":
            case "MS":
            case "PM":
            case "SM":
                return new int[]{0, 2, 2, 2, 2, 2};
            case "AZ":
            case "GF":
            case "LY":
            case "PK":
            case "SO":
            case "TO":
                return new int[]{3, 2, 3, 3, 2, 2};
            case "BA":
                return new int[]{1, 2, 1, 1, 2, 2};
            case "BB":
            case "DM":
            case "FO":
            case "GI":
                return new int[]{0, 2, 0, 0, 2, 2};
            case "BD":
                return new int[]{2, 1, 3, 3, 2, 2};
            case "BE":
                return new int[]{0, 1, 4, 4, 3, 2};
            case "BF":
                return new int[]{4, 3, 4, 3, 2, 2};
            case "BG":
            case "MT":
            case "SK":
                return new int[]{0, 0, 0, 0, 1, 2};
            case "BH":
                return new int[]{1, 2, 1, 3, 4, 2};
            case "BI":
            case "HT":
            case "KM":
            case "MG":
            case "NE":
            case "SD":
            case "TD":
            case "VE":
            case "YE":
                return new int[]{4, 4, 4, 4, 2, 2};
            case "BJ":
                return new int[]{4, 4, 3, 3, 2, 2};
            case "BL":
            case "CX":
            case "VA":
                return new int[]{1, 2, 2, 2, 2, 2};
            case "BN":
            case "CW":
                return new int[]{2, 2, 0, 0, 2, 2};
            case "BO":
                return new int[]{1, 2, 3, 2, 2, 2};
            case "BS":
                return new int[]{4, 4, 2, 2, 2, 2};
            case "BT":
                return new int[]{3, 1, 3, 2, 2, 2};
            case "BW":
                return new int[]{3, 2, 1, 0, 2, 2};
            case "BY":
                return new int[]{0, 1, 2, 3, 2, 2};
            case "BZ":
                return new int[]{2, 4, 2, 1, 2, 2};
            case "CA":
                return new int[]{0, 2, 2, 2, 3, 2};
            case "CD":
                return new int[]{4, 2, 3, 2, 2, 2};
            case "CF":
            case "KI":
                return new int[]{4, 2, 4, 2, 2, 2};
            case "CG":
            case "EG":
            case "GW":
                return new int[]{3, 4, 3, 3, 2, 2};
            case "CH":
                return new int[]{0, 0, 0, 1, 0, 2};
            case "CI":
            case "DZ":
            case "LR":
                return new int[]{3, 4, 4, 4, 2, 2};
            case "CK":
            case "PF":
                return new int[]{2, 2, 2, 1, 2, 2};
            case "CL":
            case "IL":
                return new int[]{1, 2, 2, 2, 3, 2};
            case "CM":
                return new int[]{3, 3, 3, 3, 2, 2};
            case "CN":
                return new int[]{2, 0, 1, 1, 3, 2};
            case "CO":
                return new int[]{2, 3, 4, 3, 2, 2};
            case "CR":
                return new int[]{2, 3, 4, 4, 2, 2};
            case "CU":
            case "DJ":
            case "SY":
            case "TJ":
            case "TL":
                return new int[]{4, 3, 4, 4, 2, 2};
            case "CV":
                return new int[]{2, 1, 0, 0, 2, 2};
            case "CY":
            case "KW":
                return new int[]{1, 0, 0, 0, 0, 2};
            case "CZ":
            case "NO":
                return new int[]{0, 0, 2, 0, 1, 2};
            case "DE":
                return new int[]{0, 1, 2, 2, 2, 3};
            case "DK":
                return new int[]{0, 0, 3, 2, 0, 2};
            case "DO":
                return new int[]{3, 4, 4, 4, 4, 2};
            case "EC":
                return new int[]{2, 3, 2, 1, 2, 2};
            case "EE":
            case "IS":
            case "LV":
            case "PT":
            case "SE":
            case "TW":
                return new int[]{0, 0, 0, 0, 0, 2};
            case "ES":
            case "IE":
                return new int[]{0, 1, 1, 1, 2, 2};
            case "ET":
                return new int[]{4, 3, 3, 1, 2, 2};
            case "FI":
                return new int[]{0, 0, 0, 3, 0, 2};
            case "FJ":
                return new int[]{3, 1, 2, 2, 2, 2};
            case "FK":
            case "KE":
            case "KP":
                return new int[]{3, 2, 2, 2, 2, 2};
            case "FM":
                return new int[]{4, 2, 4, 1, 2, 2};
            case "FR":
                return new int[]{1, 2, 3, 1, 0, 2};
            case "GA":
            case "TG":
                return new int[]{3, 4, 1, 0, 2, 2};
            case "GB":
                return new int[]{0, 0, 1, 1, 1, 1};
            case "GE":
                return new int[]{1, 1, 1, 2, 2, 2};
            case "GG":
            case "VI":
                return new int[]{0, 2, 0, 1, 2, 2};
            case "GH":
            case "NA":
            case "VU":
                return new int[]{3, 3, 3, 2, 2, 2};
            case "GN":
                return new int[]{4, 3, 4, 2, 2, 2};
            case "GP":
            case "MQ":
                return new int[]{2, 1, 2, 3, 2, 2};
            case "GQ":
                return new int[]{4, 2, 1, 4, 2, 2};
            case "GR":
            case "HR":
            case "SI":
                return new int[]{1, 0, 0, 0, 1, 2};
            case "GT":
                return new int[]{2, 3, 2, 2, 2, 2};
            case "GU":
            case "PE":
                return new int[]{1, 2, 4, 4, 4, 2};
            case "GY":
                return new int[]{3, 2, 2, 1, 2, 2};
            case "HK":
                return new int[]{0, 1, 2, 3, 2, 0};
            case "HU":
                return new int[]{0, 0, 0, 1, 3, 2};
            case "ID":
                return new int[]{3, 1, 2, 2, 3, 2};
            case "IM":
            case "UA":
                return new int[]{0, 2, 1, 1, 2, 2};
            case "IN":
                return new int[]{1, 1, 3, 2, 3, 3};
            case "IO":
            case "MH":
            case "TV":
            case "WF":
                return new int[]{4, 2, 2, 4, 2, 2};
            case "IQ":
                return new int[]{3, 2, 2, 3, 2, 2};
            case "IR":
                return new int[]{3, 0, 1, 1, 4, 1};
            case "IT":
                return new int[]{0, 0, 0, 1, 1, 2};
            case "JE":
            case "YT":
                return new int[]{4, 2, 2, 3, 2, 2};
            case "JM":
                return new int[]{2, 4, 3, 2, 2, 2};
            case "JO":
                return new int[]{2, 1, 1, 2, 2, 2};
            case "JP":
                return new int[]{0, 1, 1, 2, 2, 4};
            case "KH":
                return new int[]{2, 1, 4, 2, 2, 2};
            case "KR":
                return new int[]{0, 1, 1, 3, 4, 4};
            case "KZ":
                return new int[]{2, 1, 2, 2, 2, 2};
            case "LA":
                return new int[]{1, 2, 1, 3, 2, 2};
            case "LB":
                return new int[]{3, 3, 2, 4, 2, 2};
            case "LK":
                return new int[]{3, 1, 3, 3, 4, 2};
            case "LS":
                return new int[]{3, 3, 2, 2, 2, 2};
            case "LT":
                return new int[]{0, 0, 0, 0, 2, 2};
            case "LU":
                return new int[]{1, 0, 3, 2, 1, 4};
            case "MA":
                return new int[]{3, 3, 1, 1, 2, 2};
            case "MC":
                return new int[]{0, 2, 2, 0, 2, 2};
            case "MD":
            case "RS":
                return new int[]{1, 0, 0, 0, 2, 2};
            case "ME":
                return new int[]{2, 0, 0, 1, 2, 2};
            case "MF":
            case "RE":
                return new int[]{1, 2, 1, 2, 2, 2};
            case "MK":
                return new int[]{1, 0, 0, 1, 3, 2};
            case "ML":
            case "PG":
                return new int[]{4, 3, 3, 2, 2, 2};
            case "MM":
                return new int[]{2, 4, 2, 3, 2, 2};
            case "MN":
                return new int[]{2, 0, 1, 2, 2, 2};
            case "MO":
            case "MP":
                return new int[]{0, 2, 4, 4, 2, 2};
            case "MR":
            case "ZW":
                return new int[]{4, 2, 4, 4, 2, 2};
            case "MU":
                return new int[]{3, 1, 1, 2, 2, 2};
            case "MV":
                return new int[]{3, 4, 1, 4, 2, 2};
            case "MW":
                return new int[]{4, 2, 3, 3, 2, 2};
            case "MX":
                return new int[]{2, 4, 3, 4, 2, 2};
            case "MY":
                return new int[]{1, 0, 3, 1, 3, 2};
            case "MZ":
                return new int[]{3, 1, 2, 1, 2, 2};
            case "NC":
                return new int[]{3, 3, 4, 4, 2, 2};
            case "NG":
                return new int[]{3, 4, 2, 1, 2, 2};
            case "NI":
            case "PA":
            case "SV":
                return new int[]{2, 3, 3, 3, 2, 2};
            case "NL":
                return new int[]{0, 2, 2, 3, 0, 3};
            case "NP":
                return new int[]{2, 2, 4, 3, 2, 2};
            case "NR":
            case "NU":
                return new int[]{4, 2, 2, 1, 2, 2};
            case "NZ":
            case "PL":
                return new int[]{1, 1, 2, 2, 4, 2};
            case "OM":
                return new int[]{2, 3, 1, 3, 4, 2};
            case "PH":
                return new int[]{2, 1, 3, 3, 3, 0};
            case "PR":
                return new int[]{2, 0, 2, 1, 2, 1};
            case "PS":
                return new int[]{3, 4, 1, 2, 2, 2};
            case "PW":
                return new int[]{2, 2, 4, 1, 2, 2};
            case "QA":
                return new int[]{2, 4, 4, 4, 4, 2};
            case "RO":
                return new int[]{0, 0, 1, 2, 1, 2};
            case "RU":
                return new int[]{1, 0, 0, 0, 4, 3};
            case "RW":
                return new int[]{3, 4, 2, 0, 2, 2};
            case "SA":
                return new int[]{3, 1, 1, 1, 2, 2};
            case "SB":
                return new int[]{4, 2, 4, 3, 2, 2};
            case "SC":
            case "TM":
                return new int[]{4, 2, 1, 1, 2, 2};
            case "SG":
                return new int[]{1, 1, 2, 2, 2, 1};
            case "SL":
            case "UG":
                return new int[]{3, 3, 4, 3, 2, 2};
            case "SN":
                return new int[]{4, 4, 4, 3, 2, 2};
            case "SR":
                return new int[]{2, 4, 3, 0, 2, 2};
            case "SS":
                return new int[]{4, 3, 2, 3, 2, 2};
            case "ST":
                return new int[]{2, 2, 1, 2, 2, 2};
            case "SX":
            case "TC":
                return new int[]{1, 2, 1, 0, 2, 2};
            case "SZ":
                return new int[]{3, 3, 3, 4, 2, 2};
            case "TH":
                return new int[]{0, 2, 2, 3, 3, 4};
            case "TK":
                return new int[]{2, 2, 2, 4, 2, 2};
            case "TR":
                return new int[]{1, 1, 0, 0, 2, 2};
            case "TT":
                return new int[]{1, 4, 1, 3, 2, 2};
            case "TZ":
                return new int[]{3, 4, 3, 2, 2, 2};
            case "US":
                return new int[]{1, 0, 2, 2, 3, 1};
            case "UZ":
                return new int[]{2, 2, 3, 4, 2, 2};
            case "VG":
                return new int[]{2, 2, 1, 1, 2, 2};
            case "VN":
                return new int[]{0, 3, 3, 4, 2, 2};
            case "WS":
                return new int[]{3, 1, 3, 1, 2, 2};
            case "ZA":
                return new int[]{3, 2, 2, 1, 1, 2};
            case "ZM":
                return new int[]{3, 3, 4, 2, 2, 2};
            default:
                return new int[]{2, 2, 2, 2, 2, 2};
        }
    }

    public final synchronized void b(int i) {
        int i2 = this.i;
        if (i2 == 0 || this.e) {
            if (i2 == i) {
                return;
            }
            this.i = i;
            if (i != 1 && i != 0 && i != 8) {
                this.l = a(i);
                this.d.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                int i3 = this.f > 0 ? (int) (jElapsedRealtime - this.g) : 0;
                long j = this.h;
                long j2 = this.l;
                if (i3 != 0 || j != 0 || j2 != this.m) {
                    this.m = j2;
                    this.b.a(i3, j, j2);
                }
                this.g = jElapsedRealtime;
                this.h = 0L;
                this.k = 0L;
                this.j = 0L;
                mn5 mn5Var = this.c;
                mn5Var.b.clear();
                mn5Var.d = -1;
                mn5Var.e = 0;
                mn5Var.f = 0;
            }
        }
    }

    public final long a(int i) {
        Long l = (Long) this.a.get(Integer.valueOf(i));
        if (l == null) {
            l = (Long) this.a.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }
}
