package yads;

import android.animation.ObjectAnimator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xf2 {
    public static ObjectAnimator a(ObjectAnimator objectAnimator, vq0 vq0Var, x11 x11Var, yr0 yr0Var, fs2 fs2Var) {
        m11 m11Var;
        o11 o11Var;
        int iLongValue;
        as2 as2Var = yr0Var.b;
        if (as2Var == null || (m11Var = (m11) as2Var.a(fs2Var)) == null) {
            m11Var = (m11) x11Var.g().a(fs2Var);
        }
        as2 duration = yr0Var.c;
        if (duration == null) {
            duration = x11Var.getDuration();
        }
        objectAnimator.setDuration(((Number) duration.a(fs2Var)).longValue());
        as2 as2VarE = yr0Var.g;
        if (as2VarE == null) {
            as2VarE = x11Var.e();
        }
        objectAnimator.setStartDelay(((Number) as2VarE.a(fs2Var)).longValue());
        as2 as2Var2 = yr0Var.e;
        if (as2Var2 == null || (o11Var = (o11) as2Var2.a(fs2Var)) == null) {
            o11Var = (o11) x11Var.b().a(fs2Var);
        }
        int iOrdinal = m11Var.ordinal();
        objectAnimator.setInterpolator((iOrdinal == 1 || iOrdinal == 3) ? new l95(jf2.a(o11Var)) : jf2.a(o11Var));
        x91 x91VarF = yr0Var.f;
        if (x91VarF == null) {
            x91VarF = x11Var.f();
        }
        if (x91VarF instanceof v91) {
            iLongValue = ((int) ((Number) ((v91) x91VarF).a.a.a(fs2Var)).longValue()) - 1;
            if (iLongValue < 0) {
                iLongValue = 0;
            }
        } else {
            if (!(x91VarF instanceof w91)) {
                defpackage.me0.e();
                return null;
            }
            iLongValue = -1;
        }
        objectAnimator.setRepeatCount(iLongValue);
        int iOrdinal2 = m11Var.ordinal();
        objectAnimator.setRepeatMode((iOrdinal2 == 2 || iOrdinal2 == 3) ? 2 : 1);
        List listC = x11Var.c();
        if (listC != null) {
            objectAnimator.addListener(new vf2(listC, vq0Var, fs2Var));
        }
        List listD = x11Var.d();
        if (listD != null) {
            objectAnimator.addListener(new wf2(listD, vq0Var, fs2Var));
        }
        return objectAnimator;
    }

    public static ObjectAnimator a(vq0 vq0Var, v71 v71Var, yr0 yr0Var, fs2 fs2Var) {
        Integer numA;
        Integer numA2;
        String strH = v71Var.h();
        z66 z66VarB = w56.b(fs2Var);
        Integer num = null;
        u66 u66VarA = z66VarB != null ? z66VarB.a(strH) : null;
        if (!(u66VarA instanceof o66)) {
            u66VarA = null;
        }
        o66 o66Var = (o66) u66VarA;
        if (o66Var == null) {
            o01.a(vq0Var, new b94(defpackage.me0.c("Unable to find color variable with name '", v71Var.h(), "'"), 0));
            return null;
        }
        oe2 oe2Var = yr0Var.h;
        if (oe2Var == null || (numA2 = o01.a(oe2Var, fs2Var)) == null) {
            as2 as2Var = v71Var.j;
            if (as2Var != null) {
                num = (Integer) as2Var.a(fs2Var);
            }
        } else {
            num = numA2;
        }
        oe2 oe2Var2 = yr0Var.d;
        int iIntValue = (oe2Var2 == null || (numA = o01.a(oe2Var2, fs2Var)) == null) ? ((Number) v71Var.e.a(fs2Var)).intValue() : numA.intValue();
        if (num != null) {
            o66Var.a(l20.a(l20.b(num.intValue())));
        }
        return a(ObjectAnimator.ofArgb(o66Var, y20.a, iIntValue), vq0Var, v71Var, yr0Var, fs2Var);
    }

    public static ObjectAnimator a(vq0 vq0Var, fq1 fq1Var, yr0 yr0Var, fs2 fs2Var) {
        Double dB;
        Double dB2;
        Object objA;
        Long lD;
        String strH = fq1Var.h();
        z66 z66VarB = w56.b(fs2Var);
        Object objA2 = null;
        u66 u66VarA = z66VarB != null ? z66VarB.a(strH) : null;
        if (u66VarA == null) {
            u66VarA = null;
        }
        if (u66VarA instanceof r66) {
            r66 r66Var = (r66) u66VarA;
            oe2 oe2Var = yr0Var.h;
            if (oe2Var == null || (lD = o01.d(oe2Var, fs2Var)) == null) {
                as2 as2Var = fq1Var.j;
                if (as2Var != null) {
                    objA2 = as2Var.a(fs2Var);
                }
            } else {
                objA2 = lD;
            }
            oe2 oe2Var2 = yr0Var.d;
            if (oe2Var2 == null || (objA = o01.d(oe2Var2, fs2Var)) == null) {
                objA = fq1Var.e.a(fs2Var);
            }
            if (objA2 != null) {
                r66Var.a(objA2);
            }
            return a(ObjectAnimator.ofInt(r66Var, nm3.a, ((Number) objA).intValue()), vq0Var, fq1Var, yr0Var, fs2Var);
        }
        if (u66VarA instanceof q66) {
            q66 q66Var = (q66) u66VarA;
            oe2 oe2Var3 = yr0Var.h;
            if (oe2Var3 == null || (dB2 = o01.b(oe2Var3, fs2Var)) == null) {
                as2 as2Var2 = fq1Var.j;
                if (as2Var2 != null) {
                    objA2 = (Double) as2Var2.a(fs2Var);
                }
            } else {
                objA2 = dB2;
            }
            oe2 oe2Var4 = yr0Var.d;
            double dDoubleValue = (oe2Var4 == null || (dB = o01.b(oe2Var4, fs2Var)) == null) ? ((Number) fq1Var.e.a(fs2Var)).doubleValue() : dB.doubleValue();
            if (objA2 != null) {
                q66Var.a(objA2);
            }
            return a(ObjectAnimator.ofFloat(q66Var, wo4.a, (float) dDoubleValue), vq0Var, fq1Var, yr0Var, fs2Var);
        }
        o01.a(vq0Var, new b94(defpackage.me0.c("Unable to find number variable with name '", fq1Var.h(), "'"), 0));
        return null;
    }
}
