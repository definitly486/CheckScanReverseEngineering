package defpackage;

import androidx.collection.SieveCacheKt;
import androidx.tracing.Trace;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class uy3 implements Closeable {
    public static final Logger e;
    public final wu0 b;
    public final b c;
    public final jx3.a d;

    public static final class a {
        public static int a(int i, int i2, int i3) throws IOException {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            ki0.d(rz0.c(i3, i, "PROTOCOL_ERROR padding ", " > remaining length "));
            return 0;
        }
    }

    public static final class b implements v48 {
        public final wu0 b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;

        public b(wu0 wu0Var) {
            this.b = wu0Var;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // defpackage.v48
        public final wv8 r() {
            return this.b.r();
        }

        @Override // defpackage.v48
        public final long t0(bu0 bu0Var, long j) throws IOException {
            int i;
            int i2;
            bu0Var.getClass();
            do {
                int i3 = this.f;
                wu0 wu0Var = this.b;
                if (i3 == 0) {
                    wu0Var.skip(this.g);
                    this.g = 0;
                    if ((this.d & 4) == 0) {
                        i = this.e;
                        int iS = gb9.s(wu0Var);
                        this.f = iS;
                        this.c = iS;
                        int i4 = wu0Var.readByte() & 255;
                        this.d = wu0Var.readByte() & 255;
                        Logger logger = uy3.e;
                        if (logger.isLoggable(Level.FINE)) {
                            fy3 fy3Var = fy3.a;
                            int i5 = this.e;
                            int i6 = this.c;
                            int i7 = this.d;
                            fy3Var.getClass();
                            logger.fine(fy3.a(true, i5, i6, i4, i7));
                        }
                        i2 = wu0Var.readInt() & Integer.MAX_VALUE;
                        this.e = i2;
                        if (i4 != 9) {
                            throw new IOException(i4 + " != TYPE_CONTINUATION");
                        }
                    }
                } else {
                    long jT0 = wu0Var.t0(bu0Var, Math.min(j, i3));
                    if (jT0 != -1) {
                        this.f -= (int) jT0;
                        return jT0;
                    }
                }
                return -1L;
            } while (i2 == i);
            ki0.d("TYPE_CONTINUATION streamId changed");
            return 0L;
        }
    }

    static {
        Logger logger = Logger.getLogger(fy3.class.getName());
        logger.getClass();
        e = logger;
    }

    public uy3(iy6 iy6Var) {
        iy6Var.getClass();
        this.b = iy6Var;
        b bVar = new b(iy6Var);
        this.c = bVar;
        this.d = new jx3.a(bVar);
    }

    public final boolean a(boolean z, hy3.c cVar) throws IOException {
        p03 p03Var;
        int i;
        p03 p03Var2;
        Object[] array;
        wu0 wu0Var = this.b;
        try {
            wu0Var.c0(9L);
            int iS = gb9.s(wu0Var);
            if (iS > 16384) {
                ki0.d(jh.b(iS, "FRAME_SIZE_ERROR: "));
                return false;
            }
            int i2 = wu0Var.readByte() & 255;
            byte b2 = wu0Var.readByte();
            int i3 = b2 & 255;
            int i4 = wu0Var.readInt() & Integer.MAX_VALUE;
            Logger logger = e;
            if (logger.isLoggable(Level.FINE)) {
                fy3.a.getClass();
                logger.fine(fy3.a(true, i4, iS, i2, i3));
            }
            if (z && i2 != 4) {
                StringBuilder sb = new StringBuilder("Expected a SETTINGS frame but was ");
                fy3.a.getClass();
                String[] strArr = fy3.c;
                sb.append(i2 < strArr.length ? strArr[i2] : gb9.h("0x%02x", Integer.valueOf(i2)));
                throw new IOException(sb.toString());
            }
            switch (i2) {
                case 0:
                    if (i4 == 0) {
                        ki0.d("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
                        return false;
                    }
                    boolean z2 = (b2 & 1) != 0;
                    if ((b2 & 32) != 0) {
                        ki0.d("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
                        return false;
                    }
                    int i5 = (b2 & 8) != 0 ? wu0Var.readByte() & 255 : 0;
                    cVar.a(z2, i4, wu0Var, a.a(iS, i3, i5));
                    wu0Var.skip(i5);
                    return true;
                case 1:
                    if (i4 == 0) {
                        ki0.d("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
                        return false;
                    }
                    boolean z3 = (b2 & 1) != 0;
                    int i6 = (b2 & 8) != 0 ? wu0Var.readByte() & 255 : 0;
                    if ((b2 & 32) != 0) {
                        e(cVar, i4);
                        iS -= 5;
                    }
                    cVar.b(i4, b(a.a(iS, i3, i6), i6, i3, i4), z3);
                    return true;
                case 2:
                    if (iS != 5) {
                        ki0.d(kv2.b(iS, "TYPE_PRIORITY length: ", " != 5"));
                        return false;
                    }
                    if (i4 != 0) {
                        e(cVar, i4);
                        return true;
                    }
                    ki0.d("TYPE_PRIORITY streamId == 0");
                    return false;
                case 3:
                    if (iS != 4) {
                        ki0.d(kv2.b(iS, "TYPE_RST_STREAM length: ", " != 4"));
                        return false;
                    }
                    if (i4 == 0) {
                        ki0.d("TYPE_RST_STREAM streamId == 0");
                        return false;
                    }
                    int i7 = wu0Var.readInt();
                    p03.Companion.getClass();
                    p03[] p03VarArrValues = p03.values();
                    int length = p03VarArrValues.length;
                    int i8 = 0;
                    while (true) {
                        if (i8 < length) {
                            p03 p03Var3 = p03VarArrValues[i8];
                            if (p03Var3.a() == i7) {
                                p03Var = p03Var3;
                            } else {
                                i8++;
                            }
                        } else {
                            p03Var = null;
                        }
                    }
                    if (p03Var != null) {
                        cVar.e(i4, p03Var);
                        return true;
                    }
                    ki0.d(jh.b(i7, "TYPE_RST_STREAM unexpected error code: "));
                    return false;
                case 4:
                    if (i4 != 0) {
                        ki0.d("TYPE_SETTINGS streamId != 0");
                        return false;
                    }
                    if ((b2 & 1) != 0) {
                        if (iS != 0) {
                            ki0.d("FRAME_SIZE_ERROR ack frame should be empty!");
                            return false;
                        }
                        return true;
                    }
                    if (iS % 6 != 0) {
                        ki0.d(jh.b(iS, "TYPE_SETTINGS length % 6 != 0: "));
                        return false;
                    }
                    or7 or7Var = new or7();
                    w74 w74VarM = kx6.m(6, kx6.n(0, iS));
                    int i9 = w74VarM.b;
                    int i10 = w74VarM.c;
                    int i11 = w74VarM.d;
                    if ((i11 > 0 && i9 <= i10) || (i11 < 0 && i10 <= i9)) {
                        while (true) {
                            short s = wu0Var.readShort();
                            byte[] bArr = gb9.a;
                            int i12 = s & 65535;
                            i = wu0Var.readInt();
                            if (i12 != 2) {
                                if (i12 == 3) {
                                    i12 = 4;
                                } else if (i12 == 4) {
                                    if (i < 0) {
                                        ki0.d("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                        return false;
                                    }
                                    i12 = 7;
                                } else if (i12 == 5 && (i < 16384 || i > 16777215)) {
                                }
                            } else if (i != 0 && i != 1) {
                                ki0.d("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                                return false;
                            }
                            or7Var.b(i12, i);
                            if (i9 != i10) {
                                i9 += i11;
                            }
                        }
                        ki0.d(jh.b(i, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
                        return false;
                    }
                    hy3 hy3Var = hy3.this;
                    hy3Var.i.c(new ky3(me0.d(new StringBuilder(), hy3Var.d, " applyAndAckSettings"), cVar, or7Var), 0L);
                    return true;
                case 5:
                    if (i4 == 0) {
                        ki0.d("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
                        return false;
                    }
                    int i13 = (b2 & 8) != 0 ? wu0Var.readByte() & 255 : 0;
                    cVar.d(wu0Var.readInt() & Integer.MAX_VALUE, b(a.a(iS - 4, i3, i13), i13, i3, i4));
                    return true;
                case 6:
                    if (iS != 8) {
                        ki0.d(jh.b(iS, "TYPE_PING length != 8: "));
                        return false;
                    }
                    if (i4 == 0) {
                        cVar.c(wu0Var.readInt(), wu0Var.readInt(), (b2 & 1) != 0);
                        return true;
                    }
                    ki0.d("TYPE_PING streamId != 0");
                    return false;
                case 7:
                    if (iS < 8) {
                        ki0.d(jh.b(iS, "TYPE_GOAWAY length < 8: "));
                        return false;
                    }
                    if (i4 != 0) {
                        ki0.d("TYPE_GOAWAY streamId != 0");
                        return false;
                    }
                    int i14 = wu0Var.readInt();
                    int i15 = wu0Var.readInt();
                    int i16 = iS - 8;
                    p03.Companion.getClass();
                    p03[] p03VarArrValues2 = p03.values();
                    int length2 = p03VarArrValues2.length;
                    int i17 = 0;
                    while (true) {
                        if (i17 < length2) {
                            p03 p03Var4 = p03VarArrValues2[i17];
                            if (p03Var4.a() == i15) {
                                p03Var2 = p03Var4;
                            } else {
                                i17++;
                            }
                        } else {
                            p03Var2 = null;
                        }
                    }
                    if (p03Var2 == null) {
                        ki0.d(jh.b(i15, "TYPE_GOAWAY unexpected error code: "));
                        return false;
                    }
                    gx0 gx0VarI = gx0.e;
                    if (i16 > 0) {
                        gx0VarI = wu0Var.i(i16);
                    }
                    gx0VarI.getClass();
                    gx0VarI.f();
                    hy3 hy3Var2 = hy3.this;
                    synchronized (hy3Var2) {
                        array = hy3Var2.c.values().toArray(new vy3[0]);
                        hy3Var2.g = true;
                        j59 j59Var = j59.a;
                    }
                    for (vy3 vy3Var : (vy3[]) array) {
                        if (vy3Var.a > i14 && vy3Var.g()) {
                            p03 p03Var5 = p03.REFUSED_STREAM;
                            synchronized (vy3Var) {
                                p03Var5.getClass();
                                if (vy3Var.m == null) {
                                    vy3Var.m = p03Var5;
                                    vy3Var.notifyAll();
                                }
                                break;
                            }
                            hy3.this.e(vy3Var.a);
                        }
                    }
                    return true;
                case 8:
                    if (iS != 4) {
                        ki0.d(jh.b(iS, "TYPE_WINDOW_UPDATE length !=4: "));
                        return false;
                    }
                    long j = SieveCacheKt.NodeLinkMask & ((long) wu0Var.readInt());
                    if (j == 0) {
                        ki0.d("windowSizeIncrement was 0");
                        return false;
                    }
                    hy3 hy3Var3 = hy3.this;
                    if (i4 == 0) {
                        synchronized (hy3Var3) {
                            hy3Var3.v += j;
                            hy3Var3.notifyAll();
                            j59 j59Var2 = j59.a;
                        }
                        return true;
                    }
                    vy3 vy3VarB = hy3Var3.b(i4);
                    if (vy3VarB != null) {
                        synchronized (vy3VarB) {
                            vy3VarB.f += j;
                            if (j > 0) {
                                vy3VarB.notifyAll();
                            }
                            j59 j59Var3 = j59.a;
                        }
                        return true;
                    }
                    return true;
                default:
                    wu0Var.skip(iS);
                    return true;
            }
        } catch (EOFException unused) {
        }
    }

    public final List<av3> b(int i, int i2, int i3, int i4) throws IOException {
        b bVar = this.c;
        bVar.f = i;
        bVar.c = i;
        bVar.g = i2;
        bVar.d = i3;
        bVar.e = i4;
        jx3.a aVar = this.d;
        iy6 iy6Var = aVar.c;
        ArrayList arrayList = aVar.b;
        while (!iy6Var.m()) {
            byte b2 = iy6Var.readByte();
            byte[] bArr = gb9.a;
            int i5 = b2 & 255;
            if (i5 == 128) {
                ki0.d("index == 0");
                return null;
            }
            if ((b2 & 128) == 128) {
                int iE = aVar.e(i5, Trace.MAX_TRACE_LABEL_LENGTH);
                int i6 = iE - 1;
                if (i6 >= 0) {
                    av3[] av3VarArr = jx3.a;
                    if (i6 <= av3VarArr.length - 1) {
                        arrayList.add(av3VarArr[i6]);
                    }
                }
                int length = aVar.e + 1 + (i6 - jx3.a.length);
                if (length >= 0) {
                    av3[] av3VarArr2 = aVar.d;
                    if (length < av3VarArr2.length) {
                        av3 av3Var = av3VarArr2[length];
                        av3Var.getClass();
                        arrayList.add(av3Var);
                    }
                }
                ki0.d(jh.b(iE, "Header index too large "));
                return null;
            }
            if (i5 == 64) {
                av3[] av3VarArr3 = jx3.a;
                gx0 gx0VarD = aVar.d();
                jx3.a(gx0VarD);
                aVar.c(new av3(gx0VarD, aVar.d()));
            } else if ((b2 & 64) == 64) {
                aVar.c(new av3(aVar.b(aVar.e(i5, 63) - 1), aVar.d()));
            } else if ((b2 & 32) == 32) {
                int iE2 = aVar.e(i5, 31);
                aVar.a = iE2;
                if (iE2 < 0 || iE2 > 4096) {
                    jn.d(aVar.a, "Invalid dynamic table size update ");
                    return null;
                }
                int i7 = aVar.g;
                if (iE2 < i7) {
                    if (iE2 == 0) {
                        av3[] av3VarArr4 = aVar.d;
                        aq5.t(null, av3VarArr4, 0, av3VarArr4.length);
                        aVar.e = aVar.d.length - 1;
                        aVar.f = 0;
                        aVar.g = 0;
                    } else {
                        aVar.a(i7 - iE2);
                    }
                }
            } else if (i5 == 16 || i5 == 0) {
                av3[] av3VarArr5 = jx3.a;
                gx0 gx0VarD2 = aVar.d();
                jx3.a(gx0VarD2);
                arrayList.add(new av3(gx0VarD2, aVar.d()));
            } else {
                arrayList.add(new av3(aVar.b(aVar.e(i5, 15) - 1), aVar.d()));
            }
        }
        List<av3> listT0 = qn1.t0(arrayList);
        arrayList.clear();
        return listT0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    public final void e(hy3.c cVar, int i) {
        wu0 wu0Var = this.b;
        wu0Var.readInt();
        wu0Var.readByte();
        byte[] bArr = gb9.a;
    }
}
