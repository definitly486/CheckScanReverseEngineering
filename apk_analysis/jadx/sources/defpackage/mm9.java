package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class mm9 {
    public static final LinkedHashMap a(ArrayList arrayList) {
        String str = j46.c;
        j46 j46VarA = j46.a.a("/", false);
        LinkedHashMap linkedHashMapF = n05.f(new b36(j46VarA, new gm9(j46VarA, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532)));
        for (gm9 gm9Var : qn1.n0(arrayList, new lm9())) {
            if (((gm9) linkedHashMapF.put(gm9Var.a, gm9Var)) == null) {
                while (true) {
                    j46 j46Var = gm9Var.a;
                    j46 j46VarD = j46Var.d();
                    if (j46VarD == null) {
                        break;
                    }
                    gm9 gm9Var2 = (gm9) linkedHashMapF.get(j46VarD);
                    if (gm9Var2 != null) {
                        gm9Var2.q.add(j46Var);
                        break;
                    }
                    gm9 gm9Var3 = new gm9(j46VarD, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532);
                    linkedHashMapF.put(j46VarD, gm9Var3);
                    gm9Var3.q.add(j46Var);
                    gm9Var = gm9Var3;
                }
            }
        }
        return linkedHashMapF;
    }

    public static final String b(int i) {
        ga1.b(16);
        String string = Integer.toString(i, 16);
        string.getClass();
        return "0x".concat(string);
    }

    public static final hm9 c(j46 j46Var, w93 w93Var, nl3<? super gm9, Boolean> nl3Var) {
        Throwable th;
        Throwable th2;
        Throwable th3;
        Throwable th4;
        w93Var.getClass();
        m93 m93VarY = w93Var.y(j46Var);
        try {
            long size = m93VarY.size();
            long j = size - 22;
            if (j < 0) {
                throw new IOException("not a zip: size=" + m93VarY.size());
            }
            long jMax = Math.max(size - 65558, 0L);
            do {
                iy6 iy6Var = new iy6(m93VarY.E(j));
                try {
                    if (iy6Var.p() == 101010256) {
                        int iY = iy6Var.y() & 65535;
                        int iY2 = iy6Var.y() & 65535;
                        long jY = iy6Var.y() & 65535;
                        if (jY != (iy6Var.y() & 65535) || iY != 0 || iY2 != 0) {
                            throw new IOException("unsupported zip: spanned");
                        }
                        iy6Var.skip(4L);
                        long jP = MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iy6Var.p());
                        int iY3 = iy6Var.y() & 65535;
                        m03 m03Var = new m03(jY, jP, iY3);
                        iy6Var.E(iY3);
                        iy6Var.close();
                        long j2 = j - 20;
                        if (j2 > 0) {
                            iy6 iy6Var2 = new iy6(m93VarY.E(j2));
                            try {
                                if (iy6Var2.p() == 117853008) {
                                    int iP = iy6Var2.p();
                                    long jV = iy6Var2.v();
                                    if (iy6Var2.p() != 1 || iP != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    iy6 iy6Var3 = new iy6(m93VarY.E(jV));
                                    try {
                                        int iP2 = iy6Var3.p();
                                        if (iP2 != 101075792) {
                                            throw new IOException("bad zip: expected " + b(101075792) + " but was " + b(iP2));
                                        }
                                        iy6Var3.skip(12L);
                                        int iP3 = iy6Var3.p();
                                        int iP4 = iy6Var3.p();
                                        long jV2 = iy6Var3.v();
                                        if (jV2 != iy6Var3.v() || iP3 != 0 || iP4 != 0) {
                                            throw new IOException("unsupported zip: spanned");
                                        }
                                        iy6Var3.skip(8L);
                                        m03 m03Var2 = new m03(jV2, iy6Var3.v(), iY3);
                                        try {
                                            j59 j59Var = j59.a;
                                            try {
                                                iy6Var3.close();
                                                th4 = null;
                                            } catch (Throwable th5) {
                                                th4 = th5;
                                            }
                                            m03Var = m03Var2;
                                        } catch (Throwable th6) {
                                            th3 = th6;
                                            m03Var = m03Var2;
                                            try {
                                                iy6Var3.close();
                                                j59 j59Var2 = j59.a;
                                            } catch (Throwable th7) {
                                                sj0.c(th3, th7);
                                            }
                                            th4 = th3;
                                        }
                                        if (th4 != null) {
                                            throw th4;
                                        }
                                    } catch (Throwable th8) {
                                        th3 = th8;
                                    }
                                }
                                j59 j59Var3 = j59.a;
                                try {
                                    iy6Var2.close();
                                    th2 = null;
                                } catch (Throwable th9) {
                                    th2 = th9;
                                }
                            } catch (Throwable th10) {
                                try {
                                    iy6Var2.close();
                                    j59 j59Var4 = j59.a;
                                } catch (Throwable th11) {
                                    sj0.c(th10, th11);
                                }
                                th2 = th10;
                            }
                            if (th2 != null) {
                                throw th2;
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        iy6 iy6Var4 = new iy6(m93VarY.E(m03Var.b));
                        try {
                            long j3 = m03Var.a;
                            for (long j4 = 0; j4 < j3; j4++) {
                                gm9 gm9VarD = d(iy6Var4);
                                if (gm9VarD.h >= m03Var.b) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (nl3Var.invoke(gm9VarD).booleanValue()) {
                                    arrayList.add(gm9VarD);
                                }
                            }
                            j59 j59Var5 = j59.a;
                            try {
                                iy6Var4.close();
                                th = null;
                            } catch (Throwable th12) {
                                th = th12;
                            }
                        } catch (Throwable th13) {
                            try {
                                iy6Var4.close();
                                j59 j59Var6 = j59.a;
                            } catch (Throwable th14) {
                                sj0.c(th13, th14);
                            }
                            th = th13;
                        }
                        if (th != null) {
                            throw th;
                        }
                        hm9 hm9Var = new hm9(j46Var, w93Var, a(arrayList));
                        try {
                            m93VarY.close();
                            j59 j59Var7 = j59.a;
                        } catch (Throwable unused) {
                        }
                        return hm9Var;
                    }
                    iy6Var.close();
                    j--;
                } catch (Throwable th15) {
                    iy6Var.close();
                    throw th15;
                }
            } while (j >= jMax);
            throw new IOException("not a zip: end of central directory signature not found");
        } catch (Throwable th16) {
            if (m93VarY == null) {
                throw th16;
            }
            try {
                m93VarY.close();
                j59 j59Var8 = j59.a;
                throw th16;
            } catch (Throwable th17) {
                sj0.c(th16, th17);
                throw th16;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final gm9 d(final iy6 iy6Var) throws IOException {
        int iP = iy6Var.p();
        if (iP != 33639248) {
            throw new IOException("bad zip: expected " + b(33639248) + " but was " + b(iP));
        }
        iy6Var.skip(4L);
        short sY = iy6Var.y();
        int i = sY & 65535;
        if ((sY & 1) != 0) {
            ki0.d("unsupported zip: general purpose bit flag=".concat(b(i)));
            return null;
        }
        int iY = iy6Var.y() & 65535;
        int iY2 = iy6Var.y() & 65535;
        int iY3 = iy6Var.y() & 65535;
        long jP = ((long) iy6Var.p()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        final q07 q07Var = new q07();
        q07Var.b = ((long) iy6Var.p()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        final q07 q07Var2 = new q07();
        q07Var2.b = ((long) iy6Var.p()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        int iY4 = iy6Var.y() & 65535;
        int iY5 = iy6Var.y() & 65535;
        int iY6 = iy6Var.y() & 65535;
        iy6Var.skip(8L);
        final q07 q07Var3 = new q07();
        q07Var3.b = ((long) iy6Var.p()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        String strE = iy6Var.E(iY4);
        if (ta8.E(strE, (char) 0)) {
            ki0.d("bad zip: filename contains 0x00");
            return null;
        }
        long j = q07Var2.b == MuxerUtil.UNSIGNED_INT_MAX_VALUE ? 8L : 0L;
        if (q07Var.b == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
            j += 8;
        }
        if (q07Var3.b == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
            j += 8;
        }
        final long j2 = j;
        final r07 r07Var = new r07();
        final r07 r07Var2 = new r07();
        final r07 r07Var3 = new r07();
        final n07 n07Var = new n07();
        e(iy6Var, iY5, new bm3() { // from class: jm9
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) throws IOException {
                int iIntValue = ((Integer) obj).intValue();
                long jLongValue = ((Long) obj2).longValue();
                final iy6 iy6Var2 = iy6Var;
                if (iIntValue == 1) {
                    n07 n07Var2 = n07Var;
                    if (n07Var2.b) {
                        ki0.d("bad zip: zip64 extra repeated");
                        return null;
                    }
                    n07Var2.b = true;
                    if (jLongValue < j2) {
                        ki0.d("bad zip: zip64 extra too short");
                        return null;
                    }
                    q07 q07Var4 = q07Var2;
                    long jV = q07Var4.b;
                    if (jV == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
                        jV = iy6Var2.v();
                    }
                    q07Var4.b = jV;
                    q07 q07Var5 = q07Var;
                    q07Var5.b = q07Var5.b == MuxerUtil.UNSIGNED_INT_MAX_VALUE ? iy6Var2.v() : 0L;
                    q07 q07Var6 = q07Var3;
                    q07Var6.b = q07Var6.b == MuxerUtil.UNSIGNED_INT_MAX_VALUE ? iy6Var2.v() : 0L;
                } else if (iIntValue == 10) {
                    if (jLongValue < 4) {
                        ki0.d("bad zip: NTFS extra too short");
                        return null;
                    }
                    iy6Var2.skip(4L);
                    int i2 = (int) (jLongValue - 4);
                    final r07 r07Var4 = r07Var;
                    final r07 r07Var5 = r07Var2;
                    final r07 r07Var6 = r07Var3;
                    mm9.e(iy6Var2, i2, new bm3() { // from class: km9
                        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Long] */
                        /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Long] */
                        /* JADX WARN: Type inference failed for: r6v6, types: [T, java.lang.Long] */
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj3, Object obj4) throws IOException {
                            int iIntValue2 = ((Integer) obj3).intValue();
                            long jLongValue2 = ((Long) obj4).longValue();
                            if (iIntValue2 == 1) {
                                r07 r07Var7 = r07Var4;
                                if (r07Var7.b != 0) {
                                    ki0.d("bad zip: NTFS extra attribute tag 0x0001 repeated");
                                    return null;
                                }
                                if (jLongValue2 != 24) {
                                    ki0.d("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                                    return null;
                                }
                                iy6 iy6Var3 = iy6Var2;
                                r07Var7.b = Long.valueOf(iy6Var3.v());
                                r07Var5.b = Long.valueOf(iy6Var3.v());
                                r07Var6.b = Long.valueOf(iy6Var3.v());
                            }
                            return j59.a;
                        }
                    });
                }
                return j59.a;
            }
        });
        if (j2 > 0 && !n07Var.b) {
            ki0.d("bad zip: zip64 extra required but absent");
            return null;
        }
        String strE2 = iy6Var.E(iY6);
        String str = j46.c;
        return new gm9(j46.a.a("/", false).f(strE), ra8.u(strE, "/", false), strE2, jP, q07Var.b, q07Var2.b, iY, q07Var3.b, iY3, iY2, (Long) r07Var.b, (Long) r07Var2.b, (Long) r07Var3.b, 57344);
    }

    public static final void e(iy6 iy6Var, int i, bm3 bm3Var) throws IOException {
        bu0 bu0Var = iy6Var.c;
        long j = i;
        while (j != 0) {
            if (j < 4) {
                ki0.d("bad zip: truncated header in extra field");
                return;
            }
            int iY = iy6Var.y() & 65535;
            long jY = ((long) iy6Var.y()) & 65535;
            long j2 = j - 4;
            if (j2 < jY) {
                ki0.d("bad zip: truncated value in extra field");
                return;
            }
            iy6Var.c0(jY);
            long j3 = bu0Var.c;
            bm3Var.invoke(Integer.valueOf(iY), Long.valueOf(jY));
            long j4 = (bu0Var.c + jY) - j3;
            if (j4 < 0) {
                ki0.d(jh.b(iY, "unsupported zip: too many bytes processed for "));
                return;
            } else {
                if (j4 > 0) {
                    bu0Var.skip(j4);
                }
                j = j2 - jY;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final gm9 f(final iy6 iy6Var, gm9 gm9Var) {
        int iP = iy6Var.p();
        if (iP != 67324752) {
            throw new IOException("bad zip: expected " + b(67324752) + " but was " + b(iP));
        }
        iy6Var.skip(2L);
        short sY = iy6Var.y();
        int i = sY & 65535;
        if ((sY & 1) != 0) {
            ki0.d("unsupported zip: general purpose bit flag=".concat(b(i)));
            return null;
        }
        iy6Var.skip(18L);
        long jY = ((long) iy6Var.y()) & 65535;
        int iY = iy6Var.y() & 65535;
        iy6Var.skip(jY);
        if (gm9Var == null) {
            iy6Var.skip(iY);
            return null;
        }
        final r07 r07Var = new r07();
        final r07 r07Var2 = new r07();
        final r07 r07Var3 = new r07();
        e(iy6Var, iY, new bm3() { // from class: im9
            /* JADX WARN: Type inference failed for: r13v11, types: [T, java.lang.Integer] */
            /* JADX WARN: Type inference failed for: r13v13, types: [T, java.lang.Integer] */
            /* JADX WARN: Type inference failed for: r13v9, types: [T, java.lang.Integer] */
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) throws IOException {
                int iIntValue = ((Integer) obj).intValue();
                long jLongValue = ((Long) obj2).longValue();
                if (iIntValue == 21589) {
                    if (jLongValue < 1) {
                        ki0.d("bad zip: extended timestamp extra too short");
                        return null;
                    }
                    iy6 iy6Var2 = iy6Var;
                    byte b = iy6Var2.readByte();
                    boolean z = (b & 1) == 1;
                    boolean z2 = (b & 2) == 2;
                    boolean z3 = (b & 4) == 4;
                    long j = z ? 5L : 1L;
                    if (z2) {
                        j += 4;
                    }
                    if (z3) {
                        j += 4;
                    }
                    if (jLongValue < j) {
                        ki0.d("bad zip: extended timestamp extra too short");
                        return null;
                    }
                    if (z) {
                        r07Var.b = Integer.valueOf(iy6Var2.p());
                    }
                    if (z2) {
                        r07Var2.b = Integer.valueOf(iy6Var2.p());
                    }
                    if (z3) {
                        r07Var3.b = Integer.valueOf(iy6Var2.p());
                    }
                }
                return j59.a;
            }
        });
        return new gm9(gm9Var.a, gm9Var.b, gm9Var.c, gm9Var.d, gm9Var.e, gm9Var.f, gm9Var.g, gm9Var.h, gm9Var.i, gm9Var.j, gm9Var.k, gm9Var.l, gm9Var.m, (Integer) r07Var.b, (Integer) r07Var2.b, (Integer) r07Var3.b);
    }
}
