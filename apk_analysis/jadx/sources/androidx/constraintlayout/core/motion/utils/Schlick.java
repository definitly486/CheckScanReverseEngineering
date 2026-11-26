package androidx.constraintlayout.core.motion.utils;

import defpackage.dh;

/* JADX INFO: loaded from: classes2.dex */
public class Schlick extends Easing {
    private static final boolean DEBUG = false;
    double mEps;
    double mS;
    double mT;

    public Schlick(String str) {
        this.mStr = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.mS = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i = iIndexOf2 + 1;
        this.mT = Double.parseDouble(str.substring(i, str.indexOf(44, i)).trim());
    }

    private double dfunc(double d) {
        double d2;
        double dB;
        double d3 = this.mT;
        double d4 = this.mS;
        if (d < d3) {
            d2 = d4 * d3 * d3;
            dB = (((d3 - d) * d4) + d) * dh.b(d3, d, d4, d);
        } else {
            d2 = (d3 - 1.0d) * (d3 - 1.0d) * d4;
            dB = ((((d3 - d) * (-d4)) - d) + 1.0d) * ((((d3 - d) * (-d4)) - d) + 1.0d);
        }
        return d2 / dB;
    }

    private double func(double d) {
        double d2 = this.mT;
        double d3 = this.mS;
        if (d < d2) {
            return (d2 * d) / (((d2 - d) * d3) + d);
        }
        return ((d - 1.0d) * (1.0d - d2)) / ((1.0d - d) - ((d2 - d) * d3));
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d) {
        return func(d);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d) {
        return dfunc(d);
    }
}
