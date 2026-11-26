package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ew4 {
    public static final long a(long j) {
        if (j < 0) {
            wt2.a aVar = wt2.c;
            return wt2.e;
        }
        wt2.a aVar2 = wt2.c;
        return wt2.d;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x012e  */
    /* JADX WARN: Code duplicated, block: B:60:0x0130  */
    /* JADX WARN: Code duplicated, block: B:69:0x016c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x016d  */
    public static final long b(long j, long j2, au2 au2Var) {
        long j3;
        long j4;
        long jK;
        au2Var.getClass();
        long jK2 = wt2.k(j2, au2Var);
        long jB = 0;
        if (((j - 1) | 1) == Long.MAX_VALUE) {
            if (!wt2.h(j2) || (j ^ jK2) >= 0) {
                return j;
            }
            fg.c("Summing infinities of different signs");
            return 0L;
        }
        if (((jK2 - 1) | 1) != Long.MAX_VALUE) {
            long j5 = j + jK2;
            if (((jK2 ^ j5) & (j ^ j5)) < 0) {
                return j < 0 ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            return j5;
        }
        long j6 = wt2.e;
        long j7 = wt2.d;
        int i = ((int) j2) & 1;
        if (i != 0) {
            if (wt2.h(j2)) {
                j3 = 1;
                int iSignum = Integer.signum(2);
                if (wt2.h(j2)) {
                    if (iSignum == 0) {
                        fg.c("Multiplying infinite duration by zero yields an undefined result.");
                        return 0L;
                    }
                    jB = iSignum > 0 ? j2 : wt2.n(j2);
                } else if (iSignum != 0) {
                    long j8 = j2 >> 1;
                    j4 = Long.MAX_VALUE;
                    long j9 = iSignum;
                    long j10 = j8 * j9;
                    if (i == 0) {
                        if (-2147483647L <= j8 && j8 < 2147483648L) {
                            jB = yt2.c(j10);
                        } else if (j10 / j9 == j8) {
                            jB = (-4611686018426999999L > j10 || j10 >= 4611686018427000000L) ? yt2.b(j10 / 1000000) : yt2.c(j10);
                        } else {
                            long j11 = j8 / 1000000;
                            long j12 = j11 * j9;
                            long j13 = (((j8 - (j11 * 1000000)) * j9) / 1000000) + j12;
                            if (j12 / j9 != j11 || (j13 ^ j12) < 0) {
                                if (Integer.signum(iSignum) * Long.signum(j8) > 0) {
                                    jB = j7;
                                } else {
                                    jB = j6;
                                }
                            } else {
                                jB = yt2.b(kx6.i(j13, new dw4(-4611686018427387903L, 4611686018427387903L)));
                            }
                        }
                    } else if (j10 / j9 == j8) {
                        jB = yt2.b(kx6.i(j10, new dw4(-4611686018427387903L, 4611686018427387903L)));
                    } else {
                        if (Integer.signum(iSignum) * Long.signum(j8) > 0) {
                            jB = j7;
                        } else {
                            jB = j6;
                        }
                    }
                }
            } else {
                j3 = 1;
                j4 = Long.MAX_VALUE;
                long j14 = j2 >> 1;
                long j15 = j14 / 2;
                if (-4611686018426L > j15 || j15 >= 4611686018427L) {
                    jB = yt2.b(j15);
                } else {
                    jB = yt2.c((j15 * 1000000) + (((j14 - (j15 * 2)) * 1000000) / 2));
                }
            }
            jK = wt2.k(jB, au2Var);
            if (((jK - j3) | j3) == j4) {
                return jK;
            }
            return b(b(j, jB, au2Var), wt2.j(j2, wt2.n(jB)), au2Var);
        }
        jB = yt2.c((j2 >> 1) / 2);
        j3 = 1;
        j4 = Long.MAX_VALUE;
        jK = wt2.k(jB, au2Var);
        if (((jK - j3) | j3) == j4) {
            return jK;
        }
        return b(b(j, jB, au2Var), wt2.j(j2, wt2.n(jB)), au2Var);
    }

    public static final long c(long j, long j2, au2 au2Var) {
        long j3 = j - j2;
        if (((j3 ^ j) & (~(j3 ^ j2))) >= 0) {
            return yt2.f(j3, au2Var);
        }
        au2 au2Var2 = au2.MILLISECONDS;
        if (au2Var.compareTo(au2Var2) >= 0) {
            return wt2.n(a(j3));
        }
        au2Var2.getClass();
        long jConvert = au2Var.a().convert(1L, au2Var2.a());
        long j4 = (j / jConvert) - (j2 / jConvert);
        long j5 = (j % jConvert) - (j2 % jConvert);
        wt2.a aVar = wt2.c;
        return wt2.j(yt2.f(j4, au2Var2), yt2.f(j5, au2Var));
    }
}
