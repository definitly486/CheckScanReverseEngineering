package yads;

import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class vm0 {
    public final oe3 a;

    public vm0() {
        le3 le3Var = oe3.c;
        this.a = k55.f;
    }

    public final u26 a(int i, s26 s26Var) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new eu4(new za4(s26Var.a));
            }
            if (i == 21) {
                return new eu4(new pb3());
            }
            if (i == 27) {
                return new eu4(new j83(new ki5(a(s26Var)), false, false));
            }
            if (i == 36) {
                return new eu4(new l83(new ki5(a(s26Var))));
            }
            if (i == 89) {
                return new eu4(new rm2(s26Var.b));
            }
            if (i == 138) {
                return new eu4(new yl2(s26Var.a));
            }
            if (i == 172) {
                return new eu4(new h0(s26Var.a));
            }
            if (i == 257) {
                return new ph5(new ot4(MimeTypes.APPLICATION_AIT));
            }
            if (i != 128) {
                if (i != 129) {
                    if (i == 134) {
                        return new ph5(new ot4(MimeTypes.APPLICATION_SCTE35));
                    }
                    if (i != 135) {
                        switch (i) {
                            case 15:
                                return new eu4(new xb(s26Var.a, false));
                            case 16:
                                return new eu4(new g83(new s56(a(s26Var))));
                            case 17:
                                return new eu4(new lr3(s26Var.a));
                            default:
                                return null;
                        }
                    }
                }
                return new eu4(new e0(s26Var.a));
            }
        }
        return new eu4(new d83(new s56(a(s26Var))));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3 */
    public final List a(s26 s26Var) {
        String str;
        int i;
        List listSingletonList;
        os4 os4Var = new os4(s26Var.c);
        ArrayList arrayList = this.a;
        while (os4Var.c - os4Var.b > 0) {
            int iK = os4Var.k();
            int iK2 = os4Var.b + os4Var.k();
            if (iK == 134) {
                arrayList = new ArrayList();
                int iK3 = os4Var.k() & 31;
                for (int i2 = 0; i2 < iK3; i2++) {
                    String strA = os4Var.a(3, az.c);
                    int iK4 = os4Var.k();
                    boolean z = (iK4 & 128) != 0;
                    if (z) {
                        i = iK4 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte bK = (byte) os4Var.k();
                    os4Var.e(os4Var.b + 1);
                    if (z) {
                        listSingletonList = Collections.singletonList((bK & 64) != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    uz2 uz2Var = new uz2();
                    uz2Var.k = str;
                    uz2Var.c = strA;
                    uz2Var.C = i;
                    uz2Var.m = listSingletonList;
                    arrayList.add(new vz2(uz2Var));
                }
            }
            os4Var.e(iK2);
            arrayList = arrayList;
        }
        return arrayList;
    }
}
