package defpackage;

import androidx.collection.SieveCacheKt;
import androidx.media3.muxer.MuxerUtil;
import androidx.tracing.Trace;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class ey3 {
    public static final Logger a = Logger.getLogger(b.class.getName());
    public static final gx0 b;

    public static final class a implements v48 {
        public final iy6 b;
        public int c;
        public byte d;
        public int e;
        public int f;
        public short g;

        public a(iy6 iy6Var) {
            this.b = iy6Var;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // defpackage.v48
        public final wv8 r() {
            return this.b.b.r();
        }

        @Override // defpackage.v48
        public final long t0(bu0 bu0Var, long j) throws IOException {
            int i;
            int i2;
            do {
                int i3 = this.f;
                iy6 iy6Var = this.b;
                if (i3 == 0) {
                    iy6Var.skip(this.g);
                    this.g = (short) 0;
                    if ((this.d & 4) == 0) {
                        i = this.e;
                        int iC = ey3.c(iy6Var);
                        this.f = iC;
                        this.c = iC;
                        byte b = (byte) (iy6Var.readByte() & 255);
                        this.d = (byte) (iy6Var.readByte() & 255);
                        Logger logger = ey3.a;
                        if (logger.isLoggable(Level.FINE)) {
                            logger.fine(b.a(true, this.e, this.c, b, this.d));
                        }
                        i2 = iy6Var.readInt() & Integer.MAX_VALUE;
                        this.e = i2;
                        if (b != 9) {
                            ey3.a("%s != TYPE_CONTINUATION", Byte.valueOf(b));
                            throw null;
                        }
                    }
                } else {
                    long jT0 = iy6Var.t0(bu0Var, Math.min(j, i3));
                    if (jT0 != -1) {
                        this.f -= (int) jT0;
                        return jT0;
                    }
                }
                return -1L;
            } while (i2 == i);
            ey3.a("TYPE_CONTINUATION streamId changed", new Object[0]);
            throw null;
        }
    }

    public static final class b {
        public static final String[] a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        public static final String[] b = new String[64];
        public static final String[] c = new String[256];

        static {
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = c;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = String.format("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
                i2++;
            }
            String[] strArr2 = b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            int i3 = iArr[0];
            strArr2[i3 | 8] = me0.d(new StringBuilder(), strArr2[i3], "|PADDED");
            strArr2[4] = "END_HEADERS";
            strArr2[32] = "PRIORITY";
            strArr2[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = iArr2[i4];
                int i6 = iArr[0];
                String[] strArr3 = b;
                int i7 = i6 | i5;
                strArr3[i7] = strArr3[i6] + '|' + strArr3[i5];
                StringBuilder sb = new StringBuilder();
                sb.append(strArr3[i6]);
                sb.append('|');
                strArr3[i7 | 8] = me0.d(sb, strArr3[i5], "|PADDED");
            }
            while (true) {
                String[] strArr4 = b;
                if (i >= strArr4.length) {
                    return;
                }
                if (strArr4[i] == null) {
                    strArr4[i] = c[i];
                }
                i++;
            }
        }

        /* JADX WARN: Code duplicated, block: B:38:0x0066  */
        public static String a(boolean z, int i, int i2, byte b2, byte b3) {
            String strReplace;
            String str = b2 < 10 ? a[b2] : String.format("0x%02x", Byte.valueOf(b2));
            if (b3 == 0) {
                strReplace = "";
            } else {
                String[] strArr = c;
                if (b2 == 2 || b2 == 3) {
                    strReplace = strArr[b3];
                } else if (b2 == 4 || b2 == 6) {
                    strReplace = b3 == 1 ? "ACK" : strArr[b3];
                } else if (b2 == 7 || b2 == 8) {
                    strReplace = strArr[b3];
                } else {
                    String str2 = b3 < 64 ? b[b3] : strArr[b3];
                    if (b2 != 5 || (b3 & 4) == 0) {
                        strReplace = (b2 != 0 || (b3 & 32) == 0) ? str2 : str2.replace("PRIORITY", "COMPRESSED");
                    } else {
                        strReplace = str2.replace("HEADERS", "PUSH_PROMISE");
                    }
                }
            }
            return String.format(Locale.US, "%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), str, strReplace);
        }
    }

    public static final class c implements tk3 {
        public final iy6 b;
        public final a c;
        public final ix3.a d;

        public c(iy6 iy6Var) {
            this.b = iy6Var;
            a aVar = new a(iy6Var);
            this.c = aVar;
            this.d = new ix3.a(aVar);
        }

        /* JADX WARN: Code duplicated, block: B:55:0x00d7  */
        public final boolean a(lv5.e eVar) throws IOException {
            boolean z;
            ty3 ty3Var;
            q03 q03Var;
            boolean z2;
            i06.b bVar;
            int i = 0;
            try {
                this.b.c0(9L);
                int iC = ey3.c(this.b);
                if (iC < 0 || iC > 16384) {
                    ey3.a("FRAME_SIZE_ERROR: %s", Integer.valueOf(iC));
                    throw null;
                }
                byte b = (byte) (this.b.readByte() & 255);
                byte b2 = (byte) (this.b.readByte() & 255);
                int i2 = this.b.readInt() & Integer.MAX_VALUE;
                Logger logger = ey3.a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(b.a(true, i2, iC, b, b2));
                }
                switch (b) {
                    case 0:
                        b(eVar, iC, b2, i2);
                        return true;
                    case 1:
                        f(eVar, iC, b2, i2);
                        return true;
                    case 2:
                        if (iC != 5) {
                            ey3.a("TYPE_PRIORITY length: %d != 5", Integer.valueOf(iC));
                            throw null;
                        }
                        if (i2 == 0) {
                            ey3.a("TYPE_PRIORITY streamId == 0", new Object[0]);
                            throw null;
                        }
                        iy6 iy6Var = this.b;
                        iy6Var.readInt();
                        iy6Var.readByte();
                        return true;
                    case 3:
                        m(eVar, iC, i2);
                        return true;
                    case 4:
                        n(eVar, iC, b2, i2);
                        return true;
                    case 5:
                        g(eVar, iC, b2, i2);
                        return true;
                    case 6:
                        z = true;
                        if (iC != 8) {
                            ey3.a("TYPE_PING length != 8: %s", Integer.valueOf(iC));
                            throw null;
                        }
                        if (i2 != 0) {
                            ey3.a("TYPE_PING streamId != 0", new Object[0]);
                            throw null;
                        }
                        int i3 = this.b.readInt();
                        int i4 = this.b.readInt();
                        i = (b2 & 1) != 0 ? 1 : 0;
                        long j = (((long) i3) << 32) | (((long) i4) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        eVar.b.d(mv5.a.INBOUND, j);
                        Object obj = lv5.this.m;
                        if (i != 0) {
                            synchronized (obj) {
                                try {
                                    lv5 lv5Var = lv5.this;
                                    ty3Var = lv5Var.z;
                                    if (ty3Var != null) {
                                        long j2 = ty3Var.a;
                                        if (j2 == j) {
                                            lv5Var.z = null;
                                        } else {
                                            Logger logger2 = lv5.W;
                                            Level level = Level.WARNING;
                                            Locale locale = Locale.US;
                                            logger2.log(level, "Received unexpected ping ack. Expecting " + j2 + ", got " + j);
                                        }
                                    } else {
                                        lv5.W.warning("Received unexpected ping ack. No ping outstanding");
                                    }
                                    ty3Var = null;
                                } catch (Throwable th) {
                                    throw th;
                                }
                                break;
                            }
                            if (ty3Var != null) {
                                synchronized (ty3Var) {
                                    try {
                                        if (!ty3Var.d) {
                                            ty3Var.d = true;
                                            long jA = ty3Var.b.a();
                                            ty3Var.f = jA;
                                            LinkedHashMap linkedHashMap = ty3Var.c;
                                            ty3Var.c = null;
                                            for (Map.Entry entry : linkedHashMap.entrySet()) {
                                                try {
                                                    ((Executor) entry.getValue()).execute(new ry3((em1.a) entry.getKey(), jA));
                                                } catch (Throwable th2) {
                                                    ty3.g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
                                                }
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        throw th3;
                                    }
                                }
                            }
                            break;
                        } else {
                            synchronized (obj) {
                                lv5.this.k.m0(i3, i4, true);
                                break;
                            }
                        }
                        return z;
                    case 7:
                        iy6 iy6Var2 = this.b;
                        if (iC < 8) {
                            ey3.a("TYPE_GOAWAY length < 8: %s", Integer.valueOf(iC));
                            throw null;
                        }
                        if (i2 != 0) {
                            ey3.a("TYPE_GOAWAY streamId != 0", new Object[0]);
                            throw null;
                        }
                        int i5 = iy6Var2.readInt();
                        int i6 = iy6Var2.readInt();
                        int i7 = iC - 8;
                        q03[] q03VarArrValues = q03.values();
                        int length = q03VarArrValues.length;
                        while (true) {
                            if (i < length) {
                                q03Var = q03VarArrValues[i];
                                if (q03Var.httpCode != i6) {
                                    i++;
                                }
                            } else {
                                q03Var = null;
                            }
                        }
                        if (q03Var == null) {
                            ey3.a("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i6));
                            throw null;
                        }
                        gx0 gx0VarI = gx0.e;
                        if (i7 > 0) {
                            gx0VarI = iy6Var2.i(i7);
                        }
                        lv5 lv5Var2 = lv5.this;
                        eVar.b.c(mv5.a.INBOUND, i5, q03Var, gx0VarI);
                        if (q03Var == q03.ENHANCE_YOUR_CALM) {
                            String strX = gx0VarI.x();
                            lv5.W.log(Level.WARNING, eVar + ": Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: " + strX);
                            if ("too_many_pings".equals(strX)) {
                                lv5Var2.N.run();
                            }
                        }
                        h88 h88VarB = vs3.g.d(q03Var.httpCode).b("Received Goaway");
                        if (gx0VarI.f() > 0) {
                            h88VarB = h88VarB.b(gx0VarI.x());
                        }
                        Map<q03, h88> map = lv5.V;
                        lv5Var2.q(i5, null, h88VarB);
                        return true;
                    case 8:
                        if (iC != 4) {
                            ey3.a("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(iC));
                            throw null;
                        }
                        long j3 = ((long) this.b.readInt()) & SieveCacheKt.NodeLinkMask;
                        if (j3 == 0) {
                            ey3.a("windowSizeIncrement was 0", new Object[0]);
                            throw null;
                        }
                        eVar.b.g(mv5.a.INBOUND, i2, j3);
                        lv5 lv5Var3 = lv5.this;
                        if (j3 == 0) {
                            if (i2 != 0) {
                                lv5Var3.g(i2, h88.l.h("Received 0 flow control window increment."), dm1.a.PROCESSED, false, q03.PROTOCOL_ERROR, null);
                                return true;
                            }
                            q03 q03Var2 = q03.PROTOCOL_ERROR;
                            lv5Var3.q(0, q03Var2, lv5.u(q03Var2).b("Received 0 flow control window increment."));
                            return true;
                        }
                        z = true;
                        synchronized (lv5Var3.m) {
                            lv5 lv5Var4 = lv5.this;
                            try {
                                if (i2 == 0) {
                                    lv5Var4.l.b(null, (int) j3);
                                    return true;
                                }
                                kv5 kv5Var = (kv5) lv5Var4.p.get(Integer.valueOf(i2));
                                lv5 lv5Var5 = lv5.this;
                                if (kv5Var == null) {
                                    z2 = lv5Var5.k(i2) ? false : true;
                                    if (z2) {
                                        lv5 lv5Var6 = lv5.this;
                                        q03 q03Var3 = q03.PROTOCOL_ERROR;
                                        lv5Var6.q(0, q03Var3, lv5.u(q03Var3).b(jh.b(i2, "Received window_update for unknown stream: ")));
                                        return true;
                                    }
                                    return z;
                                }
                                i06 i06Var = lv5Var5.l;
                                kv5.b bVar2 = kv5Var.n;
                                synchronized (bVar2.x) {
                                    bVar = bVar2.K;
                                    break;
                                }
                                i06Var.b(bVar, (int) j3);
                                if (z2) {
                                    lv5 lv5Var7 = lv5.this;
                                    q03 q03Var4 = q03.PROTOCOL_ERROR;
                                    lv5Var7.q(0, q03Var4, lv5.u(q03Var4).b(jh.b(i2, "Received window_update for unknown stream: ")));
                                    return true;
                                }
                                return z;
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    default:
                        this.b.skip(iC);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        public final void b(lv5.e eVar, int i, byte b, int i2) throws IOException {
            kv5 kv5Var;
            boolean z = (b & 1) != 0;
            if ((b & 32) != 0) {
                ey3.a("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                throw null;
            }
            short s = (b & 8) != 0 ? (short) (this.b.readByte() & 255) : (short) 0;
            int iB = ey3.b(i, b, s);
            iy6 iy6Var = this.b;
            eVar.b.b(mv5.a.INBOUND, i2, iy6Var.c, iB, z);
            lv5 lv5Var = lv5.this;
            synchronized (lv5Var.m) {
                kv5Var = (kv5) lv5Var.p.get(Integer.valueOf(i2));
            }
            if (kv5Var == null) {
                boolean zK = lv5.this.k(i2);
                lv5 lv5Var2 = lv5.this;
                if (zK) {
                    synchronized (lv5Var2.m) {
                        lv5.this.k.h0(i2, q03.STREAM_CLOSED);
                    }
                    iy6Var.skip(iB);
                } else {
                    q03 q03Var = q03.PROTOCOL_ERROR;
                    lv5Var2.q(0, q03Var, lv5.u(q03Var).b(jh.b(i2, "Received data for unknown stream: ")));
                }
                this.b.skip(s);
            }
            long j = iB;
            iy6Var.c0(j);
            bu0 bu0Var = new bu0();
            bu0Var.H(iy6Var.c, j);
            lj8 lj8Var = kv5Var.n.J;
            r46.a.getClass();
            synchronized (lv5.this.m) {
                kv5Var.n.q(i - iB, bu0Var, z);
            }
            lv5 lv5Var3 = lv5.this;
            int i3 = lv5Var3.u + i;
            lv5Var3.u = i3;
            if (i3 >= lv5Var3.h * 0.5f) {
                synchronized (lv5Var3.m) {
                    lv5 lv5Var4 = lv5.this;
                    lv5Var4.k.T(0, lv5Var4.u);
                }
                lv5.this.u = 0;
            }
            this.b.skip(s);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.b.close();
        }

        public final ArrayList e(int i, short s, byte b, int i2) throws IOException {
            a aVar = this.c;
            aVar.f = i;
            aVar.c = i;
            aVar.g = s;
            aVar.d = b;
            aVar.e = i2;
            ix3.a aVar2 = this.d;
            iy6 iy6Var = aVar2.b;
            ArrayList arrayList = aVar2.a;
            while (!iy6Var.m()) {
                byte b2 = iy6Var.readByte();
                int i3 = b2 & 255;
                if (i3 == 128) {
                    ki0.d("index == 0");
                    return null;
                }
                if ((b2 & 128) == 128) {
                    int iE = aVar2.e(i3, Trace.MAX_TRACE_LABEL_LENGTH);
                    int i4 = iE - 1;
                    if (i4 >= 0) {
                        zu3[] zu3VarArr = ix3.b;
                        if (i4 <= zu3VarArr.length - 1) {
                            arrayList.add(zu3VarArr[i4]);
                        }
                    }
                    int length = aVar2.f + 1 + (i4 - ix3.b.length);
                    if (length >= 0) {
                        zu3[] zu3VarArr2 = aVar2.e;
                        if (length <= zu3VarArr2.length - 1) {
                            arrayList.add(zu3VarArr2[length]);
                        }
                    }
                    ki0.d(jh.b(iE, "Header index too large "));
                    return null;
                }
                if (i3 == 64) {
                    gx0 gx0VarD = aVar2.d();
                    ix3.a(gx0VarD);
                    aVar2.c(new zu3(gx0VarD, aVar2.d()));
                } else if ((b2 & 64) == 64) {
                    aVar2.c(new zu3(aVar2.b(aVar2.e(i3, 63) - 1), aVar2.d()));
                } else if ((b2 & 32) == 32) {
                    int iE2 = aVar2.e(i3, 31);
                    aVar2.d = iE2;
                    if (iE2 < 0 || iE2 > aVar2.c) {
                        jn.d(aVar2.d, "Invalid dynamic table size update ");
                        return null;
                    }
                    int i5 = aVar2.h;
                    if (iE2 < i5) {
                        if (iE2 == 0) {
                            Arrays.fill(aVar2.e, (Object) null);
                            aVar2.f = aVar2.e.length - 1;
                            aVar2.g = 0;
                            aVar2.h = 0;
                        } else {
                            aVar2.a(i5 - iE2);
                        }
                    }
                } else if (i3 == 16 || i3 == 0) {
                    gx0 gx0VarD2 = aVar2.d();
                    ix3.a(gx0VarD2);
                    arrayList.add(new zu3(gx0VarD2, aVar2.d()));
                } else {
                    arrayList.add(new zu3(aVar2.b(aVar2.e(i3, 15) - 1), aVar2.d()));
                }
            }
            ArrayList arrayList2 = new ArrayList(arrayList);
            arrayList.clear();
            return arrayList2;
        }

        public final void f(lv5.e eVar, int i, byte b, int i2) throws IOException {
            h88 h88VarH = null;
            if (i2 == 0) {
                ey3.a("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                throw null;
            }
            boolean z = true;
            boolean z2 = (b & 1) != 0;
            short s = (b & 8) != 0 ? (short) (this.b.readByte() & 255) : (short) 0;
            if ((b & 32) != 0) {
                iy6 iy6Var = this.b;
                iy6Var.readInt();
                iy6Var.readByte();
                i -= 5;
            }
            ArrayList arrayListE = e(ey3.b(i, b, s), s, b, i2);
            mv5 mv5Var = eVar.b;
            mv5.a aVar = mv5.a.INBOUND;
            if (mv5Var.a()) {
                mv5Var.a.log(Level.FINE, aVar + " HEADERS: streamId=" + i2 + " headers=" + arrayListE + " endStream=" + z2);
            }
            if (lv5.this.O != Integer.MAX_VALUE) {
                long jF = 0;
                for (int i3 = 0; i3 < arrayListE.size(); i3++) {
                    zu3 zu3Var = (zu3) arrayListE.get(i3);
                    jF += (long) (zu3Var.b.f() + zu3Var.a.f() + 32);
                }
                int iMin = (int) Math.min(jF, SieveCacheKt.NodeLinkMask);
                int i4 = lv5.this.O;
                if (iMin > i4) {
                    h88 h88Var = h88.j;
                    Locale locale = Locale.US;
                    StringBuilder sbA = mz0.a(i4, "Response ", z2 ? "trailer" : "header", " metadata larger than ", ": ");
                    sbA.append(iMin);
                    h88VarH = h88Var.h(sbA.toString());
                }
            }
            synchronized (lv5.this.m) {
                try {
                    kv5 kv5Var = (kv5) lv5.this.p.get(Integer.valueOf(i2));
                    if (kv5Var == null) {
                        if (lv5.this.k(i2)) {
                            lv5.this.k.h0(i2, q03.STREAM_CLOSED);
                        }
                    } else if (h88VarH == null) {
                        lj8 lj8Var = kv5Var.n.J;
                        r46.a.getClass();
                        kv5Var.n.r(arrayListE, z2);
                    } else {
                        if (!z2) {
                            lv5.this.k.h0(i2, q03.CANCEL);
                        }
                        kv5Var.n.j(h88VarH, false, new la5());
                    }
                    z = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                lv5 lv5Var = lv5.this;
                q03 q03Var = q03.PROTOCOL_ERROR;
                lv5Var.q(0, q03Var, lv5.u(q03Var).b(jh.b(i2, "Received header for unknown stream: ")));
            }
        }

        public final void g(lv5.e eVar, int i, byte b, int i2) throws IOException {
            if (i2 == 0) {
                ey3.a("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                throw null;
            }
            short s = (b & 8) != 0 ? (short) (this.b.readByte() & 255) : (short) 0;
            int i3 = this.b.readInt() & Integer.MAX_VALUE;
            ArrayList arrayListE = e(ey3.b(i - 4, b, s), s, b, i2);
            mv5 mv5Var = eVar.b;
            mv5.a aVar = mv5.a.INBOUND;
            if (mv5Var.a()) {
                mv5Var.a.log(Level.FINE, aVar + " PUSH_PROMISE: streamId=" + i2 + " promisedStreamId=" + i3 + " headers=" + arrayListE);
            }
            synchronized (lv5.this.m) {
                lv5.this.k.h0(i2, q03.PROTOCOL_ERROR);
            }
        }

        public final void m(lv5.e eVar, int i, int i2) throws IOException {
            q03 q03Var;
            if (i != 4) {
                ey3.a("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
                throw null;
            }
            if (i2 == 0) {
                ey3.a("TYPE_RST_STREAM streamId == 0", new Object[0]);
                throw null;
            }
            int i3 = this.b.readInt();
            q03[] q03VarArrValues = q03.values();
            int length = q03VarArrValues.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    q03Var = null;
                    break;
                }
                q03Var = q03VarArrValues[i4];
                if (q03Var.httpCode == i3) {
                    break;
                } else {
                    i4++;
                }
            }
            if (q03Var == null) {
                ey3.a("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i3));
                throw null;
            }
            eVar.b.e(mv5.a.INBOUND, i2, q03Var);
            h88 h88VarB = lv5.u(q03Var).b("Rst Stream");
            h88.a aVar = h88VarB.a;
            boolean z = aVar == h88.a.CANCELLED || aVar == h88.a.DEADLINE_EXCEEDED;
            synchronized (lv5.this.m) {
                try {
                    kv5 kv5Var = (kv5) lv5.this.p.get(Integer.valueOf(i2));
                    if (kv5Var != null) {
                        lj8 lj8Var = kv5Var.n.J;
                        r46.a.getClass();
                        lv5.this.g(i2, h88VarB, q03Var == q03.REFUSED_STREAM ? dm1.a.REFUSED : dm1.a.PROCESSED, z, null, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void n(lv5.e eVar, int i, byte b, int i2) throws IOException {
            boolean z;
            if (i2 != 0) {
                ey3.a("TYPE_SETTINGS streamId != 0", new Object[0]);
                throw null;
            }
            if ((b & 1) != 0) {
                if (i == 0) {
                    return;
                }
                ey3.a("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
            if (i % 6 != 0) {
                ey3.a("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
                throw null;
            }
            pr7 pr7Var = new pr7();
            int i3 = 0;
            while (true) {
                short s = 4;
                if (i3 >= i) {
                    eVar.b.f(mv5.a.INBOUND, pr7Var);
                    synchronized (lv5.this.m) {
                        try {
                            int i4 = pr7Var.a;
                            if ((i4 & 16) != 0) {
                                lv5.this.G = pr7Var.b[4];
                            }
                            if ((i4 & 128) != 0) {
                                int i5 = pr7Var.b[7];
                                i06 i06Var = lv5.this.l;
                                if (i5 >= 0) {
                                    int i6 = i5 - i06Var.c;
                                    i06Var.c = i5;
                                    for (i06.b bVar : i06Var.a.h()) {
                                        bVar.a(i6);
                                    }
                                    z = i6 > 0;
                                } else {
                                    i06Var.getClass();
                                    fg.c(jh.b(i5, "Invalid initial window size: "));
                                }
                            }
                            if (eVar.d) {
                                lv5 lv5Var = lv5.this;
                                p94.f fVar = lv5Var.j;
                                io.grpc.a aVar = lv5Var.w;
                                for (gm1 gm1Var : p94.this.l) {
                                    gm1Var.getClass();
                                    o8.m(aVar, "Filter %s returned null", gm1Var);
                                }
                                lv5Var.w = aVar;
                                p94.f fVar2 = lv5.this.j;
                                p94 p94Var = p94.this;
                                p94Var.j.a(n91.a.INFO, "READY");
                                p94Var.m.execute(new w94(fVar2));
                                eVar.d = false;
                            }
                            lv5.this.k.p0(pr7Var);
                            if (z) {
                                lv5.this.l.c();
                            }
                            lv5.this.r();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    int i7 = pr7Var.a;
                    if (((i7 & 2) != 0 ? pr7Var.b[1] : -1) >= 0) {
                        ix3.a aVar2 = this.d;
                        int i8 = (i7 & 2) != 0 ? pr7Var.b[1] : -1;
                        aVar2.c = i8;
                        aVar2.d = i8;
                        int i9 = aVar2.h;
                        if (i8 < i9) {
                            if (i8 != 0) {
                                aVar2.a(i9 - i8);
                                return;
                            }
                            Arrays.fill(aVar2.e, (Object) null);
                            aVar2.f = aVar2.e.length - 1;
                            aVar2.g = 0;
                            aVar2.h = 0;
                            return;
                        }
                        return;
                    }
                    return;
                }
                short s2 = this.b.readShort();
                int i10 = this.b.readInt();
                switch (s2) {
                    case 1:
                    case 6:
                        s = s2;
                        break;
                    case 2:
                        if (i10 != 0 && i10 != 1) {
                            ey3.a("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                            throw null;
                        }
                        s = s2;
                        break;
                        break;
                    case 3:
                        break;
                    case 4:
                        if (i10 < 0) {
                            ey3.a("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                            throw null;
                        }
                        s = 7;
                        break;
                        break;
                    case 5:
                        if (i10 < 16384 || i10 > 16777215) {
                            ey3.a("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i10));
                            throw null;
                        }
                        s = s2;
                        break;
                        break;
                    default:
                        continue;
                        i3 += 6;
                        break;
                }
                pr7Var.a(s, i10);
                i3 += 6;
            }
        }
    }

    public static final class d implements vk3 {
        public final hy6 b;
        public final bu0 c;
        public final ix3.b d;
        public int e;
        public boolean f;

        public d(hy6 hy6Var) {
            this.b = hy6Var;
            bu0 bu0Var = new bu0();
            this.c = bu0Var;
            this.d = new ix3.b(bu0Var);
            this.e = 16384;
        }

        @Override // defpackage.vk3
        public final synchronized void T(int i, long j) {
            if (this.f) {
                throw new IOException("closed");
            }
            if (j == 0 || j > SieveCacheKt.NodeLinkMask) {
                Locale locale = Locale.US;
                throw new IllegalArgumentException("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j);
            }
            a(i, 4, (byte) 8, (byte) 0);
            this.b.writeInt((int) j);
            this.b.flush();
        }

        public final void a(int i, int i2, byte b, byte b2) {
            Logger logger = ey3.a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(b.a(false, i, i2, b, b2));
            }
            int i3 = this.e;
            if (i2 > i3) {
                Locale locale = Locale.US;
                fg.c(rz0.c(i3, i2, "FRAME_SIZE_ERROR length > ", ": "));
                return;
            }
            if ((Integer.MIN_VALUE & i) != 0) {
                Locale locale2 = Locale.US;
                fg.c(jh.b(i, "reserved bit set: "));
                return;
            }
            hy6 hy6Var = this.b;
            hy6Var.writeByte((i2 >>> 16) & 255);
            hy6Var.writeByte((i2 >>> 8) & 255);
            hy6Var.writeByte(i2 & 255);
            hy6Var.writeByte(b & 255);
            hy6Var.writeByte(b2 & 255);
            hy6Var.writeInt(i & Integer.MAX_VALUE);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0058  */
        public final void b(int i, List list, boolean z) throws IOException {
            int length;
            int length2;
            if (this.f) {
                ki0.d("closed");
                return;
            }
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                zu3 zu3Var = (zu3) list.get(i2);
                gx0 gx0VarV = zu3Var.a.v();
                gx0 gx0Var = zu3Var.b;
                Integer num = ix3.c.get(gx0VarV);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (length2 < 2 || length2 > 7) {
                        length = length2;
                        length2 = -1;
                    } else {
                        zu3[] zu3VarArr = ix3.b;
                        if (zu3VarArr[iIntValue].b.equals(gx0Var)) {
                            length = length2;
                        } else if (zu3VarArr[length2].b.equals(gx0Var)) {
                            length2 = iIntValue + 2;
                            length = length2;
                        } else {
                            length = length2;
                            length2 = -1;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                ix3.b bVar = this.d;
                if (length2 == -1) {
                    int i3 = bVar.d + 1;
                    while (true) {
                        zu3[] zu3VarArr2 = bVar.b;
                        if (i3 >= zu3VarArr2.length) {
                            break;
                        }
                        if (zu3VarArr2[i3].a.equals(gx0VarV)) {
                            if (bVar.b[i3].b.equals(gx0Var)) {
                                length2 = (i3 - bVar.d) + ix3.b.length;
                                break;
                            } else if (length == -1) {
                                length = (i3 - bVar.d) + ix3.b.length;
                            }
                        }
                        i3++;
                    }
                }
                if (length2 != -1) {
                    bVar.c(length2, Trace.MAX_TRACE_LABEL_LENGTH, 128);
                } else if (length == -1) {
                    bVar.a.A0(64);
                    bVar.b(gx0VarV);
                    bVar.b(gx0Var);
                    bVar.a(zu3Var);
                } else {
                    gx0 gx0Var2 = ix3.a;
                    gx0VarV.getClass();
                    gx0Var2.getClass();
                    if (!gx0VarV.s(0, gx0Var2, gx0Var2.f()) || zu3.h.equals(gx0VarV)) {
                        bVar.c(length, 63, 64);
                        bVar.b(gx0Var);
                        bVar.a(zu3Var);
                    } else {
                        bVar.c(length, 15, 0);
                        bVar.b(gx0Var);
                    }
                }
            }
            bu0 bu0Var = this.c;
            long j = bu0Var.c;
            int iMin = (int) Math.min(this.e, j);
            long j2 = iMin;
            byte b = j == j2 ? (byte) 4 : (byte) 0;
            if (z) {
                b = (byte) (b | 1);
            }
            a(i, iMin, (byte) 1, b);
            hy6 hy6Var = this.b;
            hy6Var.H(bu0Var, j2);
            if (j > j2) {
                long j3 = j - j2;
                while (j3 > 0) {
                    int iMin2 = (int) Math.min(this.e, j3);
                    long j4 = iMin2;
                    j3 -= j4;
                    a(i, iMin2, (byte) 9, j3 == 0 ? (byte) 4 : (byte) 0);
                    hy6Var.H(bu0Var, j4);
                }
            }
        }

        @Override // defpackage.vk3
        public final int b0() {
            return this.e;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            this.f = true;
            this.b.close();
        }

        @Override // defpackage.vk3
        public final synchronized void flush() {
            if (this.f) {
                throw new IOException("closed");
            }
            this.b.flush();
        }

        @Override // defpackage.vk3
        public final synchronized void g0(q03 q03Var, byte[] bArr) {
            try {
                if (this.f) {
                    throw new IOException("closed");
                }
                if (q03Var.httpCode == -1) {
                    Locale locale = Locale.US;
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
                a(0, bArr.length + 8, (byte) 7, (byte) 0);
                this.b.writeInt(0);
                this.b.writeInt(q03Var.httpCode);
                if (bArr.length > 0) {
                    this.b.write(bArr);
                }
                this.b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // defpackage.vk3
        public final synchronized void h0(int i, q03 q03Var) {
            if (this.f) {
                throw new IOException("closed");
            }
            if (q03Var.httpCode == -1) {
                throw new IllegalArgumentException();
            }
            a(i, 4, (byte) 3, (byte) 0);
            this.b.writeInt(q03Var.httpCode);
            this.b.flush();
        }

        @Override // defpackage.vk3
        public final synchronized void m0(int i, int i2, boolean z) {
            if (this.f) {
                throw new IOException("closed");
            }
            a(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.b.writeInt(i);
            this.b.writeInt(i2);
            this.b.flush();
        }

        @Override // defpackage.vk3
        public final synchronized void p0(pr7 pr7Var) {
            if (this.f) {
                throw new IOException("closed");
            }
            int i = this.e;
            if ((pr7Var.a & 32) != 0) {
                i = pr7Var.b[5];
            }
            this.e = i;
            a(0, 0, (byte) 4, (byte) 1);
            this.b.flush();
        }

        @Override // defpackage.vk3
        public final synchronized void u() {
            try {
                if (this.f) {
                    throw new IOException("closed");
                }
                Logger logger = ey3.a;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(">> CONNECTION " + ey3.b.g());
                }
                this.b.write(ey3.b.w());
                this.b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // defpackage.vk3
        public final synchronized void w(boolean z, int i, bu0 bu0Var, int i2) {
            if (this.f) {
                throw new IOException("closed");
            }
            a(i, i2, (byte) 0, z ? (byte) 1 : (byte) 0);
            if (i2 > 0) {
                this.b.H(bu0Var, i2);
            }
        }

        @Override // defpackage.vk3
        public final synchronized void x(int i, List list, boolean z) {
            if (this.f) {
                throw new IOException("closed");
            }
            b(i, list, z);
        }

        @Override // defpackage.vk3
        public final synchronized void z(pr7 pr7Var) {
            int i;
            try {
                if (this.f) {
                    throw new IOException("closed");
                }
                a(0, Integer.bitCount(pr7Var.a) * 6, (byte) 4, (byte) 0);
                int i2 = 0;
                while (i2 < 10) {
                    boolean z = true;
                    if (((1 << i2) & pr7Var.a) == 0) {
                        z = false;
                    }
                    if (z) {
                        if (i2 == 4) {
                            i = 3;
                        } else {
                            i = i2 == 7 ? 4 : i2;
                        }
                        this.b.writeShort(i);
                        this.b.writeInt(pr7Var.b[i2]);
                    }
                    i2++;
                }
                this.b.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static {
        gx0 gx0Var = gx0.e;
        b = gx0.a.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    }

    public static void a(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(Locale.US, str, objArr));
    }

    public static int b(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        a("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
        throw null;
    }

    public static int c(iy6 iy6Var) {
        return (iy6Var.readByte() & 255) | ((iy6Var.readByte() & 255) << 16) | ((iy6Var.readByte() & 255) << 8);
    }
}
