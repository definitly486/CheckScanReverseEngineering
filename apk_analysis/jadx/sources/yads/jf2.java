package yads;

import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.core.view.GravityCompat;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jf2 {
    public static final Drawable a(tc1 tc1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        as2 as2Var;
        as2 as2Var2;
        if (tc1Var == null) {
            defpackage.me0.e();
            return null;
        }
        g02 g02Var = tc1Var.a;
        f02 f02Var = g02Var.b;
        if (f02Var instanceof e02) {
            e02 e02Var = (e02) f02Var;
            float fB = pq.b(e02Var.a.d, displayMetrics, fs2Var);
            float fB2 = pq.b(e02Var.a.c, displayMetrics, fs2Var);
            as2 as2Var3 = e02Var.a.a;
            if (as2Var3 == null) {
                as2Var3 = g02Var.a;
            }
            int iIntValue = ((Number) as2Var3.a(fs2Var)).intValue();
            float fB3 = pq.b(e02Var.a.b, displayMetrics, fs2Var);
            l42 l42Var = e02Var.a.e;
            if (l42Var == null) {
                l42Var = g02Var.c;
            }
            Integer num = (l42Var == null || (as2Var2 = l42Var.a) == null) ? null : (Integer) as2Var2.a(fs2Var);
            l42 l42Var2 = e02Var.a.e;
            if (l42Var2 == null) {
                l42Var2 = g02Var.c;
            }
            return new nb5(new mb5(fB, fB2, iIntValue, fB3, num, l42Var2 != null ? Float.valueOf(pq.b((Number) l42Var2.d.a(fs2Var), displayMetrics, (g12) l42Var2.c.a(fs2Var))) : null));
        }
        if (!(f02Var instanceof d02)) {
            return null;
        }
        d02 d02Var = (d02) f02Var;
        float fB4 = pq.b(d02Var.a.b, displayMetrics, fs2Var);
        as2 as2Var4 = d02Var.a.a;
        if (as2Var4 == null) {
            as2Var4 = g02Var.a;
        }
        int iIntValue2 = ((Number) as2Var4.a(fs2Var)).intValue();
        l42 l42Var3 = d02Var.a.c;
        if (l42Var3 == null) {
            l42Var3 = g02Var.c;
        }
        Integer num2 = (l42Var3 == null || (as2Var = l42Var3.a) == null) ? null : (Integer) as2Var.a(fs2Var);
        l42 l42Var4 = d02Var.a.c;
        if (l42Var4 == null) {
            l42Var4 = g02Var.c;
        }
        return new mz(new lz(fB4, iIntValue2, num2, l42Var4 != null ? Float.valueOf(pq.b((Number) l42Var4.d.a(fs2Var), displayMetrics, (g12) l42Var4.c.a(fs2Var))) : null));
    }

    public static final boolean b(br0 br0Var) {
        if ((br0Var instanceof jq0) || (br0Var instanceof zp0) || (br0Var instanceof xp0) || (br0Var instanceof eq0) || (br0Var instanceof aq0) || (br0Var instanceof fq0) || (br0Var instanceof bq0) || (br0Var instanceof vp0) || (br0Var instanceof dq0) || (br0Var instanceof kq0) || (br0Var instanceof hq0)) {
            return false;
        }
        if ((br0Var instanceof up0) || (br0Var instanceof yp0) || (br0Var instanceof wp0) || (br0Var instanceof cq0) || (br0Var instanceof iq0) || (br0Var instanceof gq0)) {
            return true;
        }
        defpackage.me0.e();
        return false;
    }

    public static final Interpolator a(o11 o11Var) {
        int iOrdinal = o11Var.ordinal();
        if (iOrdinal == 0) {
            return new LinearInterpolator();
        }
        if (iOrdinal == 1) {
            return new xm2();
        }
        if (iOrdinal == 2) {
            return new vm2();
        }
        if (iOrdinal == 3) {
            return new ym2();
        }
        if (iOrdinal == 4) {
            return new wm2();
        }
        if (iOrdinal == 5) {
            return new tp5();
        }
        defpackage.me0.e();
        return null;
    }

    public static final boolean a(br0 br0Var, fs2 fs2Var) {
        p41 p41VarA = br0Var.a();
        if (p41VarA.r() != null || p41VarA.B() != null || p41VarA.A() != null) {
            return true;
        }
        if (br0Var instanceof up0) {
            j81 j81Var = ((up0) br0Var).a;
            List<cn1> listA = f71.a(j81Var.B, j81Var.z, fs2Var);
            if (!(listA instanceof Collection) || !listA.isEmpty()) {
                for (cn1 cn1Var : listA) {
                    if (a(cn1Var.a, cn1Var.b)) {
                        return true;
                    }
                }
            }
            return false;
        }
        if (br0Var instanceof yp0) {
            Collection collection = ((yp0) br0Var).a.y;
            if (collection == null) {
                collection = defpackage.kx2.b;
            }
            if (!(collection instanceof Collection) || !collection.isEmpty()) {
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (a((br0) it.next(), fs2Var)) {
                        return true;
                    }
                }
            }
        } else if (!(br0Var instanceof jq0) && !(br0Var instanceof zp0) && !(br0Var instanceof xp0) && !(br0Var instanceof eq0) && !(br0Var instanceof aq0) && !(br0Var instanceof gq0) && !(br0Var instanceof wp0) && !(br0Var instanceof cq0) && !(br0Var instanceof iq0) && !(br0Var instanceof vp0) && !(br0Var instanceof dq0) && !(br0Var instanceof fq0) && !(br0Var instanceof kq0) && !(br0Var instanceof bq0) && !(br0Var instanceof hq0)) {
            defpackage.me0.e();
            return false;
        }
        return false;
    }

    public static final y22 a(z22 z22Var, fs2 fs2Var) {
        Object next;
        as2 as2Var = z22Var.n;
        if (as2Var != null) {
            Iterator it = z22Var.I.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!defpackage.aa4.e(((y22) next).d, as2Var.a(fs2Var)));
            y22 y22Var = (y22) next;
            if (y22Var != null) {
                return y22Var;
            }
        }
        return (y22) defpackage.qn1.V(z22Var.I);
    }

    public static final boolean a(j81 j81Var, fs2 fs2Var) {
        as2 as2Var;
        as2 as2Var2;
        if (j81Var.C.a(fs2Var) == f81.WRAP && j81Var.I.a(fs2Var) != h81.OVERLAP) {
            if (j81Var.I.a(fs2Var) == h81.HORIZONTAL) {
                x02 x02Var = j81Var.b0;
                if (!(x02Var instanceof w02) || ((as2Var2 = ((w02) x02Var).a.a) != null && ((Boolean) as2Var2.a(fs2Var)).booleanValue())) {
                    return true;
                }
            } else {
                x02 x02Var2 = j81Var.v;
                if ((x02Var2 instanceof w02) && ((as2Var = ((w02) x02Var2).a.a) == null || !((Boolean) as2Var.a(fs2Var)).booleanValue())) {
                    b31 b31Var = j81Var.i;
                    if (b31Var != null) {
                        return !(((float) ((Number) b31Var.a.a(fs2Var)).doubleValue()) == 0.0f);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static final boolean a(p41 p41Var) {
        if (p41Var.k() != null) {
            return true;
        }
        List listM = p41Var.m();
        if (listM != null && !listM.isEmpty()) {
            return true;
        }
        List listB = p41Var.b();
        return (listB == null || listB.isEmpty()) ? false : true;
    }

    public static final int a(x02 x02Var, DisplayMetrics displayMetrics, fs2 fs2Var, ViewGroup.LayoutParams layoutParams) {
        if (x02Var == null) {
            return -2;
        }
        if (x02Var instanceof v02) {
            return -1;
        }
        if (x02Var instanceof u02) {
            return uq.a(((u02) x02Var).a, displayMetrics, fs2Var);
        }
        if (x02Var instanceof w02) {
            as2 as2Var = ((w02) x02Var).a.a;
            return (as2Var != null && ((Boolean) as2Var.a(fs2Var)).booleanValue() && (layoutParams instanceof ro1)) ? -3 : -2;
        }
        defpackage.me0.e();
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003c  */
    public static final int a(f11 f11Var, h11 h11Var) {
        int i;
        int i2;
        int i3 = f11Var == null ? -1 : if2.a[f11Var.ordinal()];
        if (i3 == 1) {
            i = 3;
        } else if (i3 != 2) {
            i = 5;
            if (i3 != 3) {
                i = i3 != 5 ? GravityCompat.START : GravityCompat.END;
            }
        } else {
            i = 1;
        }
        int i4 = h11Var != null ? if2.b[h11Var.ordinal()] : -1;
        if (i4 == 1) {
            i2 = 48;
        } else if (i4 == 2) {
            i2 = 16;
        } else if (i4 != 3) {
            i2 = 48;
        } else {
            i2 = 80;
        }
        return i2 | i;
    }

    public static final int a(m91 m91Var, o91 o91Var) {
        int i;
        int i2;
        switch (m91Var == null ? -1 : if2.c[m91Var.ordinal()]) {
            case 1:
                i = 3;
                break;
            case 2:
                i = 1;
                break;
            case 3:
                i = 5;
                break;
            case 4:
            default:
                i = GravityCompat.START;
                break;
            case 5:
                i = GravityCompat.END;
                break;
            case 6:
                i = 16777216;
                break;
            case 7:
                i = GroupFlagsKt.HasAuxSlotFlag;
                break;
            case 8:
                i = 67108864;
                break;
        }
        int i3 = o91Var != null ? if2.d[o91Var.ordinal()] : -1;
        if (i3 == 2) {
            i2 = 16;
        } else if (i3 == 3) {
            i2 = 80;
        } else if (i3 == 4) {
            i2 = 268435456;
        } else if (i3 != 5) {
            i2 = i3 != 6 ? 48 : 1073741824;
        } else {
            i2 = 536870912;
        }
        return i | i2;
    }

    public static final qj a(vi1 vi1Var) {
        int iOrdinal = vi1Var.ordinal();
        if (iOrdinal == 0) {
            return qj.FILL;
        }
        if (iOrdinal == 1) {
            return qj.NO_SCALE;
        }
        if (iOrdinal == 2) {
            return qj.FIT;
        }
        if (iOrdinal == 3) {
            return qj.STRETCH;
        }
        defpackage.me0.e();
        return null;
    }

    public static final String a(br0 br0Var) {
        if (br0Var instanceof jq0) {
            return "text";
        }
        if (br0Var instanceof zp0) {
            return "image";
        }
        if (br0Var instanceof xp0) {
            return "gif";
        }
        if (br0Var instanceof eq0) {
            return "separator";
        }
        if (br0Var instanceof aq0) {
            return "indicator";
        }
        if (br0Var instanceof fq0) {
            return "slider";
        }
        if (br0Var instanceof bq0) {
            return "input";
        }
        if (br0Var instanceof kq0) {
            return MimeTypes.BASE_TYPE_VIDEO;
        }
        if (br0Var instanceof up0) {
            return TtmlNode.RUBY_CONTAINER;
        }
        if (br0Var instanceof yp0) {
            return "grid";
        }
        if (br0Var instanceof gq0) {
            return RemoteConfigConstants.ResponseFieldKey.STATE;
        }
        if (br0Var instanceof wp0) {
            return "gallery";
        }
        if (br0Var instanceof cq0) {
            return "pager";
        }
        if (br0Var instanceof iq0) {
            return "tabs";
        }
        if (br0Var instanceof vp0) {
            return "custom";
        }
        if (br0Var instanceof dq0) {
            return "select";
        }
        if (br0Var instanceof hq0) {
            return "switch";
        }
        defpackage.me0.e();
        return null;
    }
}
