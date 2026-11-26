package yads;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class w04 implements pe {
    public boolean A;
    public final Context a;
    public final wl0 b;
    public final PlaybackSession c;
    public String i;
    public PlaybackMetrics.Builder j;
    public int k;
    public zv4 n;
    public v04 o;
    public v04 p;
    public v04 q;
    public vz2 r;
    public vz2 s;
    public vz2 t;
    public boolean u;
    public int v;
    public boolean w;
    public int x;
    public int y;
    public int z;
    public final jx5 e = new jx5();
    public final hx5 f = new hx5();
    public final HashMap h = new HashMap();
    public final HashMap g = new HashMap();
    public final long d = SystemClock.elapsedRealtime();
    public int l = 0;
    public int m = 0;

    public w04(Context context, PlaybackSession playbackSession) {
        this.a = context.getApplicationContext();
        this.c = playbackSession;
        wl0 wl0Var = new wl0();
        this.b = wl0Var;
        wl0Var.e = this;
    }

    /* JADX WARN: Code duplicated, block: B:152:0x024f  */
    /* JADX WARN: Code duplicated, block: B:153:0x0252  */
    /* JADX WARN: Code duplicated, block: B:258:0x0413  */
    /* JADX WARN: Code duplicated, block: B:273:0x0483  */
    /* JADX WARN: Code duplicated, block: B:415:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:421:0x004b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c4 A[Catch: all -> 0x0068, TryCatch #0 {all -> 0x0068, blocks: (B:11:0x0036, B:12:0x004b, B:14:0x0051, B:16:0x0061, B:29:0x009b, B:39:0x00b3, B:41:0x00ba, B:43:0x00c4, B:44:0x00c6, B:32:0x00a0, B:37:0x00ad, B:35:0x00a5, B:21:0x006b, B:22:0x007a, B:24:0x0082, B:26:0x008c, B:27:0x0097, B:45:0x00cf), top: B:408:0x0036 }] */
    public final void a(kw4 kw4Var, oe oeVar) {
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        u04 u04Var;
        u04 u04Var2;
        int i5;
        int i6;
        u04 u04Var3;
        int i7;
        int i8;
        int i9;
        int i10;
        ql2 ql2Var;
        int i11;
        h14 h14Var;
        if (oeVar.a.a.size() == 0) {
            return;
        }
        for (int i12 = 0; i12 < oeVar.a.a.size(); i12++) {
            int iA = oeVar.a.a(i12);
            ne neVar = (ne) oeVar.b.get(iA);
            neVar.getClass();
            wl0 wl0Var = this.b;
            if (iA == 0) {
                synchronized (wl0Var) {
                    try {
                        wl0Var.e.getClass();
                        kx5 kx5Var = wl0Var.f;
                        wl0Var.f = neVar.b;
                        Iterator it = wl0Var.c.values().iterator();
                        while (it.hasNext()) {
                            vl0 vl0Var = (vl0) it.next();
                            kx5 kx5Var2 = wl0Var.f;
                            int i13 = vl0Var.b;
                            if (i13 >= kx5Var.b()) {
                                if (i13 >= kx5Var2.b()) {
                                    i13 = -1;
                                    break;
                                }
                            } else {
                                kx5Var.a(i13, vl0Var.g.a, 0L);
                                int i14 = vl0Var.g.a.p;
                                while (true) {
                                    if (i14 > vl0Var.g.a.q) {
                                        i13 = -1;
                                        break;
                                    }
                                    int iA2 = kx5Var2.a(kx5Var.a(i14));
                                    if (iA2 != -1) {
                                        i13 = kx5Var2.a(iA2, vl0Var.g.b, false).d;
                                        break;
                                    }
                                    i14++;
                                }
                            }
                            vl0Var.b = i13;
                            if (i13 == -1 || ((h14Var = vl0Var.d) != null && kx5Var2.a(h14Var.a) == -1)) {
                                it.remove();
                                if (!vl0Var.e) {
                                    if (vl0Var.a.equals(wl0Var.g)) {
                                        wl0Var.g = null;
                                    }
                                    wl0Var.e.b(neVar, vl0Var.a);
                                }
                            } else if (vl0Var.a(neVar)) {
                                it.remove();
                                if (!vl0Var.e) {
                                    if (vl0Var.a.equals(wl0Var.g)) {
                                        wl0Var.g = null;
                                    }
                                    wl0Var.e.b(neVar, vl0Var.a);
                                }
                            }
                        }
                        wl0Var.b(neVar);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else if (iA == 11) {
                wl0Var.a(neVar, this.k);
            } else {
                wl0Var.c(neVar);
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (oeVar.a(0)) {
            ne neVar2 = (ne) oeVar.b.get(0);
            neVar2.getClass();
            if (this.j != null) {
                a(neVar2.b, neVar2.d);
            }
        }
        if (oeVar.a(2) && this.j != null) {
            eq2 eq2Var = (eq2) kw4Var;
            eq2Var.q();
            le3 le3VarListIterator = eq2Var.b0.i.d.b.listIterator(0);
            loop3: while (true) {
                if (!le3VarListIterator.hasNext()) {
                    ql2Var = null;
                    break;
                }
                l16 l16Var = (l16) le3VarListIterator.next();
                for (int i15 = 0; i15 < l16Var.b; i15++) {
                    if (l16Var.f[i15] && (ql2Var = l16Var.c.e[i15].p) != null) {
                        break loop3;
                    }
                }
            }
            if (ql2Var != null) {
                PlaybackMetrics.Builder builder = this.j;
                int i16 = u56.a;
                int i17 = 0;
                while (true) {
                    if (i17 >= ql2Var.e) {
                        i11 = 1;
                        break;
                    }
                    UUID uuid = ql2Var.b[i17].c;
                    if (uuid.equals(uv.d)) {
                        i11 = 3;
                        break;
                    } else if (uuid.equals(uv.e)) {
                        i11 = 2;
                        break;
                    } else {
                        if (uuid.equals(uv.c)) {
                            i11 = 6;
                            break;
                        }
                        i17++;
                    }
                }
                builder.setDrmType(i11);
            }
        }
        if (oeVar.a(1011)) {
            this.z++;
        }
        zv4 zv4Var = this.n;
        int i18 = 4;
        if (zv4Var == null) {
            i7 = 1;
            i4 = 8;
            i2 = 6;
            i3 = 9;
        } else {
            Context context = this.a;
            boolean z2 = this.v == 4;
            if (zv4Var.b == 1001) {
                u04Var = new u04(20, 0);
            } else {
                if (zv4Var instanceof up2) {
                    up2 up2Var = (up2) zv4Var;
                    z = up2Var.d == 1;
                    i = up2Var.h;
                } else {
                    i = 0;
                    z = false;
                }
                Throwable cause = zv4Var.getCause();
                cause.getClass();
                int i19 = 27;
                if (cause instanceof IOException) {
                    if (cause instanceof la3) {
                        u04Var3 = new u04(5, ((la3) cause).e);
                    } else {
                        if ((cause instanceof ka3) || (cause instanceof xs4)) {
                            i5 = 9;
                            i6 = 6;
                            u04Var = new u04(z2 ? 10 : 11, 0);
                        } else {
                            boolean z3 = cause instanceof ja3;
                            if (z3 || (cause instanceof y36)) {
                                i5 = 9;
                                if (nn4.a(context).a() == 1) {
                                    u04Var = new u04(3, 0);
                                } else {
                                    Throwable cause2 = cause.getCause();
                                    if (cause2 instanceof UnknownHostException) {
                                        i6 = 6;
                                        u04Var = new u04(6, 0);
                                    } else {
                                        i6 = 6;
                                        if (cause2 instanceof SocketTimeoutException) {
                                            u04Var = new u04(7, 0);
                                            i3 = 9;
                                            i2 = 6;
                                            i4 = 8;
                                        } else if (z3 && ((ja3) cause).d == 1) {
                                            u04Var = new u04(4, 0);
                                        } else {
                                            u04Var = new u04(8, 0);
                                            i3 = 9;
                                            i4 = 8;
                                            i2 = 6;
                                        }
                                    }
                                }
                            } else if (zv4Var.b == 1002) {
                                u04Var = new u04(21, 0);
                            } else if (cause instanceof rl2) {
                                Throwable cause3 = cause.getCause();
                                cause3.getClass();
                                int i20 = u56.a;
                                if (i20 >= 21 && (cause3 instanceof MediaDrm.MediaDrmStateException)) {
                                    int iA3 = u56.a(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                    if (iA3 == 2 || iA3 == 4) {
                                        i19 = 26;
                                    } else if (iA3 == 10) {
                                        i19 = 25;
                                    } else if (iA3 == 7) {
                                        i19 = 26;
                                    } else if (iA3 != 8) {
                                        switch (iA3) {
                                            case 15:
                                                i19 = 28;
                                                break;
                                            case 16:
                                            case 18:
                                                i19 = 26;
                                                break;
                                            case 17:
                                            case 19:
                                            case 20:
                                            case 21:
                                            case 22:
                                                i19 = 25;
                                                break;
                                            default:
                                                switch (iA3) {
                                                    case 24:
                                                    case 25:
                                                    case 26:
                                                    case 27:
                                                    case 28:
                                                        i19 = 24;
                                                        break;
                                                }
                                                break;
                                        }
                                    } else {
                                        i19 = 28;
                                    }
                                    u04Var3 = new u04(i19, iA3);
                                } else if (i20 >= 23 && (cause3 instanceof MediaDrmResetException)) {
                                    u04Var = new u04(27, 0);
                                } else if (i20 >= 18 && (cause3 instanceof NotProvisionedException)) {
                                    u04Var = new u04(24, 0);
                                } else if (i20 >= 18 && (cause3 instanceof DeniedByServerException)) {
                                    u04Var = new u04(29, 0);
                                } else if (cause3 instanceof k46) {
                                    u04Var = new u04(23, 0);
                                } else {
                                    u04Var = cause3 instanceof qk0 ? new u04(28, 0) : new u04(30, 0);
                                }
                            } else if ((cause instanceof dx2) && (cause.getCause() instanceof FileNotFoundException)) {
                                Throwable cause4 = cause.getCause();
                                cause4.getClass();
                                Throwable cause5 = cause4.getCause();
                                u04Var = (u56.a >= 21 && (cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) ? new u04(32, 0) : new u04(31, 0);
                            } else {
                                i5 = 9;
                                u04Var = new u04(9, 0);
                            }
                            i3 = i5;
                            i4 = 8;
                            i2 = 6;
                        }
                        i3 = i5;
                        i2 = i6;
                        i4 = 8;
                    }
                    u04Var = u04Var3;
                } else {
                    int i21 = 24;
                    i2 = 6;
                    i3 = 9;
                    if (z && (i == 0 || i == 1)) {
                        u04Var = new u04(35, 0);
                    } else if (z && i == 3) {
                        u04Var = new u04(15, 0);
                    } else if (z && i == 2) {
                        u04Var = new u04(23, 0);
                    } else {
                        if (cause instanceof yy3) {
                            u04Var2 = new u04(13, u56.a(((yy3) cause).e));
                        } else if (cause instanceof uy3) {
                            u04Var2 = new u04(14, u56.a(((uy3) cause).b));
                        } else if (cause instanceof OutOfMemoryError) {
                            u04Var = new u04(14, 0);
                            i4 = 8;
                        } else if (cause instanceof qm) {
                            u04Var2 = new u04(17, ((qm) cause).b);
                        } else if (cause instanceof sm) {
                            u04Var2 = new u04(18, ((sm) cause).b);
                        } else if (u56.a < 16 || !(cause instanceof MediaCodec.CryptoException)) {
                            i4 = 8;
                            u04Var = new u04(22, 0);
                        } else {
                            int errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                            if (errorCode == 2 || errorCode == 4) {
                                i4 = 8;
                            } else {
                                if (errorCode != 10) {
                                    i4 = 8;
                                    if (errorCode != 7) {
                                        if (errorCode != 8) {
                                            switch (errorCode) {
                                                case 15:
                                                    i21 = 28;
                                                    break;
                                                case 16:
                                                case 18:
                                                    break;
                                                case 17:
                                                case 19:
                                                case 20:
                                                case 21:
                                                case 22:
                                                    break;
                                                default:
                                                    switch (errorCode) {
                                                        case 24:
                                                        case 25:
                                                        case 26:
                                                        case 27:
                                                        case 28:
                                                            break;
                                                        default:
                                                            i21 = 27;
                                                            break;
                                                    }
                                                    break;
                                            }
                                        } else {
                                            i21 = 28;
                                        }
                                    }
                                    u04Var = new u04(i21, errorCode);
                                } else {
                                    i4 = 8;
                                }
                                i21 = 25;
                                u04Var = new u04(i21, errorCode);
                            }
                            i21 = 26;
                            u04Var = new u04(i21, errorCode);
                        }
                        u04Var = u04Var2;
                        i4 = 8;
                    }
                    i4 = 8;
                }
                this.c.reportPlaybackErrorEvent(defpackage.r85.a().setTimeSinceCreatedMillis(jElapsedRealtime - this.d).setErrorCode(u04Var.a).setSubErrorCode(u04Var.b).setException(zv4Var).build());
                i7 = 1;
                this.A = true;
                this.n = null;
            }
            i4 = 8;
            i2 = 6;
            i3 = 9;
            this.c.reportPlaybackErrorEvent(defpackage.r85.a().setTimeSinceCreatedMillis(jElapsedRealtime - this.d).setErrorCode(u04Var.a).setSubErrorCode(u04Var.b).setException(zv4Var).build());
            i7 = 1;
            this.A = true;
            this.n = null;
        }
        if (oeVar.a(2)) {
            eq2 eq2Var2 = (eq2) kw4Var;
            eq2Var2.q();
            m16 m16Var = eq2Var2.b0.i.d;
            boolean zA = m16Var.a(2);
            boolean zA2 = m16Var.a(i7);
            boolean zA3 = m16Var.a(3);
            if (zA || zA2 || zA3) {
                if (zA || u56.a(this.r, (Object) null)) {
                    i8 = 5;
                } else {
                    int i22 = this.r == null ? 1 : 0;
                    this.r = null;
                    i8 = 5;
                    a(1, jElapsedRealtime, null, i22);
                }
                if (!zA2 && !u56.a(this.s, (Object) null)) {
                    int i23 = this.s == null ? 1 : 0;
                    this.s = null;
                    a(0, jElapsedRealtime, null, i23);
                }
                if (!zA3 && !u56.a(this.t, (Object) null)) {
                    int i24 = this.t == null ? 1 : 0;
                    this.t = null;
                    a(2, jElapsedRealtime, null, i24);
                }
            } else {
                i8 = 5;
                i4 = i4;
            }
        } else {
            i8 = 5;
            i4 = i4;
        }
        if (a(this.o)) {
            v04 v04Var = this.o;
            vz2 vz2Var = v04Var.a;
            if (vz2Var.s != -1) {
                int i25 = v04Var.b;
                if (!u56.a(this.r, vz2Var)) {
                    int i26 = (this.r == null && i25 == 0) ? 1 : i25;
                    this.r = vz2Var;
                    a(1, jElapsedRealtime, vz2Var, i26);
                }
                this.o = null;
            }
        }
        if (a(this.p)) {
            v04 v04Var2 = this.p;
            vz2 vz2Var2 = v04Var2.a;
            int i27 = v04Var2.b;
            if (!u56.a(this.s, vz2Var2)) {
                int i28 = (this.s == null && i27 == 0) ? 1 : i27;
                this.s = vz2Var2;
                a(0, jElapsedRealtime, vz2Var2, i28);
            }
            this.p = null;
        }
        if (a(this.q)) {
            v04 v04Var3 = this.q;
            vz2 vz2Var3 = v04Var3.a;
            int i29 = v04Var3.b;
            if (!u56.a(this.t, vz2Var3)) {
                int i30 = (this.t == null && i29 == 0) ? 1 : i29;
                this.t = vz2Var3;
                a(2, jElapsedRealtime, vz2Var3, i30);
            }
            this.q = null;
        }
        switch (nn4.a(this.a).a()) {
            case 0:
                i9 = 0;
                break;
            case 1:
                i9 = i3;
                break;
            case 2:
                i9 = 2;
                break;
            case 3:
                i9 = 4;
                break;
            case 4:
                i9 = i8;
                break;
            case 5:
                i9 = i2;
                break;
            case 6:
            case 8:
            default:
                i9 = 1;
                break;
            case 7:
                i9 = 3;
                break;
            case 9:
                i9 = i4;
                break;
            case 10:
                i9 = 7;
                break;
        }
        if (i9 != this.m) {
            this.m = i9;
            this.c.reportNetworkEvent(defpackage.q85.a().setNetworkType(i9).setTimeSinceCreatedMillis(jElapsedRealtime - this.d).build());
        }
        eq2 eq2Var3 = (eq2) kw4Var;
        eq2Var3.q();
        if (eq2Var3.b0.e != 2) {
            this.u = false;
        }
        eq2Var3.q();
        if (eq2Var3.b0.f == null) {
            this.w = false;
            i10 = 10;
        } else {
            i10 = 10;
            if (oeVar.a(10)) {
                this.w = true;
            }
        }
        eq2Var3.q();
        int i31 = eq2Var3.b0.e;
        if (this.u) {
            i18 = i8;
        } else if (this.w) {
            i18 = 13;
        } else if (i31 == 4) {
            i18 = 11;
        } else if (i31 == 2) {
            int i32 = this.l;
            if (i32 == 0 || i32 == 2) {
                i18 = 2;
            } else {
                eq2Var3.q();
                if (eq2Var3.b0.l) {
                    eq2Var3.q();
                    i18 = eq2Var3.b0.m != 0 ? i10 : i2;
                } else {
                    i18 = 7;
                }
            }
        } else if (i31 == 3) {
            eq2Var3.q();
            if (eq2Var3.b0.l) {
                eq2Var3.q();
                i18 = eq2Var3.b0.m != 0 ? i3 : 3;
            }
        } else {
            i18 = (i31 != 1 || this.l == 0) ? this.l : 12;
        }
        if (this.l != i18) {
            this.l = i18;
            this.A = true;
            this.c.reportPlaybackStateEvent(defpackage.dj.a().setState(this.l).setTimeSinceCreatedMillis(jElapsedRealtime - this.d).build());
        }
        if (oeVar.a(AnalyticsListener.EVENT_PLAYER_RELEASED)) {
            wl0 wl0Var2 = this.b;
            ne neVar3 = (ne) oeVar.b.get(AnalyticsListener.EVENT_PLAYER_RELEASED);
            neVar3.getClass();
            wl0Var2.a(neVar3);
        }
    }

    public final void b(ne neVar, String str) {
        h14 h14Var = neVar.d;
        if ((h14Var == null || !h14Var.a()) && str.equals(this.i)) {
            a();
        }
        this.g.remove(str);
        this.h.remove(str);
    }

    public final void a(ne neVar, String str) {
        h14 h14Var = neVar.d;
        if (h14Var == null || !h14Var.a()) {
            a();
            this.i = str;
            this.j = defpackage.gn.b().setPlayerName("ExoPlayerLib").setPlayerVersion("2.18.1");
            a(neVar.b, neVar.d);
        }
    }

    public final boolean a(v04 v04Var) {
        String str;
        if (v04Var == null) {
            return false;
        }
        String str2 = v04Var.c;
        wl0 wl0Var = this.b;
        synchronized (wl0Var) {
            str = wl0Var.g;
        }
        return str2.equals(str);
    }

    public final void a(int i, long j, vz2 vz2Var, int i2) {
        int i3;
        TrackChangeEvent.Builder timeSinceCreatedMillis = defpackage.hn.a(i).setTimeSinceCreatedMillis(j - this.d);
        if (vz2Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i2 != 1) {
                i3 = 3;
                if (i2 != 2) {
                    i3 = i2 != 3 ? 1 : 4;
                }
            } else {
                i3 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i3);
            String str = vz2Var.l;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = vz2Var.m;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = vz2Var.j;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i4 = vz2Var.i;
            if (i4 != -1) {
                timeSinceCreatedMillis.setBitrate(i4);
            }
            int i5 = vz2Var.r;
            if (i5 != -1) {
                timeSinceCreatedMillis.setWidth(i5);
            }
            int i6 = vz2Var.s;
            if (i6 != -1) {
                timeSinceCreatedMillis.setHeight(i6);
            }
            int i7 = vz2Var.z;
            if (i7 != -1) {
                timeSinceCreatedMillis.setChannelCount(i7);
            }
            int i8 = vz2Var.A;
            if (i8 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i8);
            }
            String str4 = vz2Var.d;
            if (str4 != null) {
                int i9 = u56.a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = vz2Var.t;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        this.c.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    public final void a(kx5 kx5Var, h14 h14Var) {
        int iA;
        PlaybackMetrics.Builder builder = this.j;
        if (h14Var == null || (iA = kx5Var.a(h14Var.a)) == -1) {
            return;
        }
        int i = 0;
        kx5Var.a(iA, this.f, false);
        kx5Var.a(this.f.d, this.e, 0L);
        k04 k04Var = this.e.d.c;
        if (k04Var != null) {
            int iA2 = u56.a(k04Var.a, (String) null);
            if (iA2 == 0) {
                i = 3;
            } else if (iA2 != 1) {
                i = iA2 != 2 ? 1 : 4;
            } else {
                i = 5;
            }
        }
        builder.setStreamType(i);
        jx5 jx5Var = this.e;
        if (jx5Var.o != C.TIME_UNSET && !jx5Var.m && !jx5Var.j && !jx5Var.a()) {
            builder.setMediaDurationMillis(u56.b(this.e.o));
        }
        builder.setPlaybackType(this.e.a() ? 2 : 1);
        this.A = true;
    }

    public final void a() {
        PlaybackMetrics.Builder builder = this.j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.z);
            this.j.setVideoFramesDropped(this.x);
            this.j.setVideoFramesPlayed(this.y);
            Long l = (Long) this.g.get(this.i);
            this.j.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.h.get(this.i);
            this.j.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.j.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            this.c.reportPlaybackMetrics(this.j.build());
        }
        this.j = null;
        this.i = null;
        this.z = 0;
        this.x = 0;
        this.y = 0;
        this.r = null;
        this.s = null;
        this.t = null;
        this.A = false;
    }
}
