package yads;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.media3.exoplayer.offline.DownloadService;
import androidx.media3.muxer.MuxerUtil;
import defpackage.n3a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class nk2 extends Handler {
    public final HandlerThread a;
    public final ok0 b;
    public final pk0 c;
    public final Handler d;
    public final ArrayList e;
    public final HashMap f;
    public int g;
    public boolean h;
    public int i;
    public int j;
    public int k;

    public nk2(HandlerThread handlerThread, ok0 ok0Var, pk0 pk0Var, Handler handler, boolean z) {
        super(handlerThread.getLooper());
        this.a = handlerThread;
        this.b = ok0Var;
        this.c = pk0Var;
        this.d = handler;
        this.i = 3;
        this.j = 5;
        this.h = z;
        this.e = new ArrayList();
        this.f = new HashMap();
    }

    public final void a() {
        int i;
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        try {
            ok0 ok0Var = this.b;
            int[] iArr = {3, 4};
            ok0Var.a();
            StringBuilder sb = new StringBuilder("state IN (");
            for (int i2 = 0; i2 < 2; i2++) {
                if (i2 > 0) {
                    sb.append(',');
                }
                sb.append(iArr[i2]);
            }
            sb.append(')');
            Cursor cursorA = ok0Var.a(sb.toString(), (String[]) null);
            while (cursorA.moveToPosition(cursorA.getPosition() + 1)) {
                try {
                    arrayList2.add(ok0.a(cursorA));
                } catch (Throwable th) {
                    try {
                        cursorA.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            }
            cursorA.close();
            while (true) {
                int size = arrayList2.size();
                arrayList = this.e;
                if (i >= size) {
                    break;
                }
                kk2 kk2Var = (kk2) arrayList2.get(i);
                arrayList.add(new kk2(kk2Var.a, 5, kk2Var.c, System.currentTimeMillis(), kk2Var.e, 0, 0, kk2Var.h));
                i++;
            }
        } catch (IOException unused) {
            sv3.b("DownloadManager", "Failed to load downloads.");
        }
        for (int i3 = 0; i3 < this.e.size(); i3++) {
            ArrayList arrayList3 = this.e;
            kk2 kk2Var2 = (kk2) arrayList3.get(i3);
            arrayList3.set(i3, new kk2(kk2Var2.a, 5, kk2Var2.c, System.currentTimeMillis(), kk2Var2.e, 0, 0, kk2Var2.h));
        }
        i = 0;
        Collections.sort(arrayList, new n3a());
        try {
            this.b.c();
        } catch (IOException e) {
            sv3.b("DownloadManager", sv3.a("Failed to update index.", e));
        }
        ArrayList arrayList4 = new ArrayList(this.e);
        for (int i4 = 0; i4 < this.e.size(); i4++) {
            this.d.obtainMessage(2, new mk2((kk2) this.e.get(i4), false, arrayList4, null)).sendToTarget();
        }
        b();
    }

    public final void b() {
        int i = 0;
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            kk2 kk2Var = (kk2) this.e.get(i2);
            pk2 pk2Var = (pk2) this.f.get(kk2Var.a.b);
            int i3 = kk2Var.b;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 == 2) {
                        pk2Var.getClass();
                        if (pk2Var.e) {
                            defpackage.ud.g();
                            return;
                        } else if (this.h || this.g != 0 || i >= this.i) {
                            a(kk2Var, 0, 0);
                            pk2Var.a(false);
                        }
                    } else if (i3 != 5 && i3 != 7) {
                        defpackage.ud.g();
                        return;
                    } else if (pk2Var == null) {
                        pk2 pk2Var2 = new pk2(kk2Var.a, this.c.a(kk2Var.a), kk2Var.h, true, this.j, this);
                        this.f.put(kk2Var.a.b, pk2Var2);
                        pk2Var2.start();
                    } else if (!pk2Var.e) {
                        pk2Var.a(false);
                    }
                } else if (pk2Var != null) {
                    if (pk2Var.e) {
                        defpackage.ud.g();
                        return;
                    }
                    pk2Var.a(false);
                }
            } else if (pk2Var != null) {
                if (pk2Var.e) {
                    defpackage.ud.g();
                    return;
                }
                pk2Var.a(false);
            } else if (this.h || this.g != 0 || this.k >= this.i) {
                pk2Var = null;
            } else {
                kk2 kk2VarA = a(kk2Var, 2, 0);
                pk2 pk2Var3 = new pk2(kk2VarA.a, this.c.a(kk2VarA.a), kk2VarA.h, false, this.j, this);
                this.f.put(kk2VarA.a.b, pk2Var3);
                int i4 = this.k;
                this.k = i4 + 1;
                if (i4 == 0) {
                    sendEmptyMessageDelayed(11, 5000L);
                }
                pk2Var3.start();
                pk2Var = pk2Var3;
            }
            if (pk2Var != null && !pk2Var.e) {
                i++;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v20, types: [java.util.ArrayList] */
    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        ?? arrayList;
        nk0 nk0Var = null;
        int i = 7;
        i = 0;
        int i2 = 0;
        switch (message.what) {
            case 0:
                this.g = message.arg1;
                try {
                    try {
                        this.b.b();
                        ok0 ok0Var = this.b;
                        int[] iArr = {0, 1, 2, 5, 7};
                        ok0Var.a();
                        StringBuilder sb = new StringBuilder("state IN (");
                        for (int i3 = 0; i3 < 5; i3++) {
                            if (i3 > 0) {
                                sb.append(',');
                            }
                            sb.append(iArr[i3]);
                        }
                        sb.append(')');
                        nk0 nk0Var2 = new nk0(ok0Var.a(sb.toString(), (String[]) null));
                        while (true) {
                            try {
                                if (nk0Var2.b.moveToPosition(nk0Var2.b.getPosition() + 1)) {
                                    this.e.add(ok0.a(nk0Var2.b));
                                } else {
                                    u56.a(nk0Var2);
                                }
                            } catch (IOException e) {
                                e = e;
                                nk0Var = nk0Var2;
                                sv3.b("DownloadManager", sv3.a("Failed to load index.", e));
                                this.e.clear();
                                u56.a(nk0Var);
                            } catch (Throwable th) {
                                th = th;
                                nk0Var = nk0Var2;
                                u56.a(nk0Var);
                                throw th;
                            }
                            this.d.obtainMessage(0, new ArrayList(this.e)).sendToTarget();
                            b();
                            i2 = 1;
                            this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                            return;
                        }
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                break;
            case 1:
                this.h = message.arg1 != 0;
                b();
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 2:
                this.g = message.arg1;
                b();
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 3:
                String str = (String) message.obj;
                int i4 = message.arg1;
                if (str != null) {
                    kk2 kk2VarA = a(str, false);
                    if (kk2VarA != null) {
                        a(kk2VarA, i4);
                    } else {
                        try {
                            this.b.a(i4, str);
                        } catch (IOException e3) {
                            sv3.b("DownloadManager", sv3.a("Failed to set manual stop reason: ".concat(str), e3));
                        }
                    }
                    break;
                } else {
                    for (int i5 = 0; i5 < this.e.size(); i5++) {
                        a((kk2) this.e.get(i5), i4);
                    }
                    try {
                        ok0 ok0Var2 = this.b;
                        ok0Var2.a();
                        try {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(DownloadService.KEY_STOP_REASON, Integer.valueOf(i4));
                            ok0Var2.a.getWritableDatabase().update("ExoPlayerDownloads", contentValues, ok0.d, null);
                        } catch (Throwable th3) {
                            throw new cd0(th3);
                        }
                    } catch (IOException e4) {
                        sv3.b("DownloadManager", sv3.a("Failed to set manual stop reason", e4));
                    }
                    break;
                }
                b();
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 4:
                this.i = message.arg1;
                b();
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 5:
                this.j = message.arg1;
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 6:
                tk2 tk2Var = (tk2) message.obj;
                int i6 = message.arg1;
                kk2 kk2VarA2 = a(tk2Var.b, true);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (kk2VarA2 != null) {
                    int i7 = kk2VarA2.b;
                    long j = (i7 == 5 || i7 == 3 || i7 == 4) ? jCurrentTimeMillis : kk2VarA2.c;
                    if (i7 != 5 && i7 != 7) {
                        i = i6 != 0 ? 1 : 0;
                    }
                    tk2 tk2Var2 = kk2VarA2.a;
                    if (!tk2Var2.b.equals(tk2Var.b)) {
                        defpackage.mi2.b();
                        return;
                    }
                    if (tk2Var2.e.isEmpty() || tk2Var.e.isEmpty()) {
                        arrayList = Collections.EMPTY_LIST;
                    } else {
                        arrayList = new ArrayList(tk2Var2.e);
                        for (int i8 = 0; i8 < tk2Var.e.size(); i8++) {
                            bs5 bs5Var = (bs5) tk2Var.e.get(i8);
                            if (!arrayList.contains(bs5Var)) {
                                arrayList.add(bs5Var);
                            }
                        }
                    }
                    a(new kk2(new tk2(tk2Var2.b, tk2Var.c, tk2Var.d, arrayList, tk2Var.f, tk2Var.g, tk2Var.h), i, j, jCurrentTimeMillis, -1L, i6, 0, new rk2()));
                } else {
                    a(new kk2(tk2Var, i6 != 0 ? 1 : 0, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i6, 0, new rk2()));
                }
                b();
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 7:
                String str2 = (String) message.obj;
                kk2 kk2VarA3 = a(str2, true);
                if (kk2VarA3 == null) {
                    sv3.b("DownloadManager", "Failed to remove nonexistent download: " + str2);
                } else {
                    a(kk2VarA3, 5, 0);
                    b();
                }
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 8:
                a();
                i2 = 1;
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 9:
                pk2 pk2Var = (pk2) message.obj;
                String str3 = pk2Var.b.b;
                this.f.remove(str3);
                boolean z = pk2Var.e;
                if (!z) {
                    int i9 = this.k - 1;
                    this.k = i9;
                    if (i9 == 0) {
                        removeMessages(11);
                    }
                }
                if (pk2Var.h) {
                    b();
                } else {
                    Exception exc = pk2Var.i;
                    if (exc != null) {
                        sv3.b("DownloadManager", sv3.a("Task failed: " + pk2Var.b + ", " + z, exc));
                    }
                    kk2 kk2VarA4 = a(str3, false);
                    kk2VarA4.getClass();
                    int i10 = kk2VarA4.b;
                    if (i10 == 2) {
                        if (z) {
                            defpackage.ud.g();
                            return;
                        }
                        tk2 tk2Var3 = kk2VarA4.a;
                        kk2 kk2Var = new kk2(tk2Var3, exc == null ? 3 : 4, kk2VarA4.c, System.currentTimeMillis(), kk2VarA4.e, kk2VarA4.f, exc == null ? 0 : 1, kk2VarA4.h);
                        this.e.remove(a(tk2Var3.b));
                        try {
                            this.b.a(kk2Var);
                        } catch (IOException e5) {
                            sv3.b("DownloadManager", sv3.a("Failed to update index.", e5));
                        }
                        this.d.obtainMessage(2, new mk2(kk2Var, false, new ArrayList(this.e), exc)).sendToTarget();
                        break;
                    } else {
                        if (i10 != 5 && i10 != 7) {
                            defpackage.ud.g();
                            return;
                        }
                        if (!z) {
                            defpackage.ud.g();
                            return;
                        }
                        if (i10 == 7) {
                            int i11 = kk2VarA4.f;
                            a(kk2VarA4, i11 == 0 ? 0 : 1, i11);
                            b();
                        } else {
                            this.e.remove(a(kk2VarA4.a.b));
                            try {
                                ok0 ok0Var3 = this.b;
                                String str4 = kk2VarA4.a.b;
                                ok0Var3.a();
                                try {
                                    ok0Var3.a.getWritableDatabase().delete("ExoPlayerDownloads", "id = ?", new String[]{str4});
                                    this.d.obtainMessage(2, new mk2(kk2VarA4, true, new ArrayList(this.e), null)).sendToTarget();
                                } catch (Throwable th4) {
                                    throw new cd0(th4);
                                }
                            } catch (IOException unused) {
                                sv3.b("DownloadManager", "Failed to remove from database");
                            }
                        }
                    }
                    b();
                }
                this.d.obtainMessage(1, i2, this.f.size()).sendToTarget();
                return;
            case 10:
                pk2 pk2Var2 = (pk2) message.obj;
                int i12 = message.arg1;
                int i13 = message.arg2;
                int i14 = u56.a;
                long j2 = ((((long) i12) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i13));
                kk2 kk2VarA5 = a(pk2Var2.b.b, false);
                kk2VarA5.getClass();
                if (j2 == kk2VarA5.e || j2 == -1) {
                    return;
                }
                a(new kk2(kk2VarA5.a, kk2VarA5.b, kk2VarA5.c, System.currentTimeMillis(), j2, kk2VarA5.f, kk2VarA5.g, kk2VarA5.h));
                return;
            case 11:
                for (int i15 = 0; i15 < this.e.size(); i15++) {
                    kk2 kk2Var2 = (kk2) this.e.get(i15);
                    if (kk2Var2.b == 2) {
                        try {
                            this.b.a(kk2Var2);
                        } catch (IOException e6) {
                            sv3.b("DownloadManager", sv3.a("Failed to update index.", e6));
                        }
                    }
                }
                sendEmptyMessageDelayed(11, 5000L);
                return;
            case 12:
                Iterator it = this.f.values().iterator();
                while (it.hasNext()) {
                    ((pk2) it.next()).a(true);
                }
                try {
                    this.b.b();
                    break;
                } catch (IOException e7) {
                    sv3.b("DownloadManager", sv3.a("Failed to update index.", e7));
                }
                this.e.clear();
                this.a.quit();
                synchronized (this) {
                    notifyAll();
                    break;
                }
                return;
            default:
                defpackage.ud.g();
                return;
        }
    }

    public final void a(kk2 kk2Var, int i) {
        if (i == 0) {
            if (kk2Var.b == 1) {
                a(kk2Var, 0, 0);
            }
        } else if (i != kk2Var.f) {
            int i2 = kk2Var.b;
            if (i2 == 0 || i2 == 2) {
                i2 = 1;
            }
            a(new kk2(kk2Var.a, i2, kk2Var.c, System.currentTimeMillis(), kk2Var.e, i, 0, kk2Var.h));
        }
    }

    public final kk2 a(kk2 kk2Var) {
        int i = kk2Var.b;
        if (i != 3 && i != 4) {
            int iA = a(kk2Var.a.b);
            if (iA == -1) {
                this.e.add(kk2Var);
                Collections.sort(this.e, new n3a());
            } else {
                boolean z = kk2Var.c != ((kk2) this.e.get(iA)).c;
                this.e.set(iA, kk2Var);
                if (z) {
                    Collections.sort(this.e, new n3a());
                }
            }
            try {
                this.b.a(kk2Var);
            } catch (IOException e) {
                sv3.b("DownloadManager", sv3.a("Failed to update index.", e));
            }
            this.d.obtainMessage(2, new mk2(kk2Var, false, new ArrayList(this.e), null)).sendToTarget();
            return kk2Var;
        }
        defpackage.ud.g();
        return null;
    }

    public final kk2 a(String str, boolean z) {
        int iA = a(str);
        if (iA != -1) {
            return (kk2) this.e.get(iA);
        }
        if (!z) {
            return null;
        }
        try {
            return this.b.b(str);
        } catch (IOException e) {
            sv3.b("DownloadManager", sv3.a("Failed to load download: " + str, e));
            return null;
        }
    }

    public final int a(String str) {
        for (int i = 0; i < this.e.size(); i++) {
            if (((kk2) this.e.get(i)).a.b.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public final kk2 a(kk2 kk2Var, int i, int i2) {
        if (i != 3 && i != 4) {
            return a(new kk2(kk2Var.a, i, kk2Var.c, System.currentTimeMillis(), kk2Var.e, i2, 0, kk2Var.h));
        }
        defpackage.ud.g();
        return null;
    }

    public static int a(kk2 kk2Var, kk2 kk2Var2) {
        long j = kk2Var.c;
        long j2 = kk2Var2.c;
        int i = u56.a;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
