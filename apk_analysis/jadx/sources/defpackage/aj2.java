package defpackage;

import androidx.camera.core.SurfaceRequest;
import com.posthog.PostHogEvent;
import com.posthog.internal.PostHogApiError;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.NoSuchElementException;
import zv6.c;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class aj2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ aj2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:130:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:? A[ADDED_TO_REGION, Catch: all -> 0x00c3, REMOVE, SYNTHETIC, TRY_LEAVE, TryCatch #1 {all -> 0x00c3, blocks: (B:16:0x0055, B:21:0x005e, B:22:0x0069, B:24:0x006f, B:41:0x00ba, B:40:0x00b7, B:46:0x00c7, B:57:0x00f5, B:55:0x00dc, B:58:0x00f8, B:88:0x013f, B:86:0x0126, B:89:0x0142, B:90:0x0145, B:83:0x0121, B:25:0x0075, B:32:0x00ab, B:38:0x00b3, B:39:0x00b6, B:52:0x00d7), top: B:109:0x0055, inners: #2, #6, #7, #14, #15 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x011d A[ADDED_TO_REGION] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        Throwable th;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((SurfaceRequest) obj).willNotProvideSurface();
                return;
            default:
                td6 td6Var = (td6) obj;
                ta6 ta6Var = td6Var.b;
                lc6 lc6Var = ta6Var.F;
                if (lc6Var != null && !lc6Var.isConnected()) {
                    ta6Var.v.a("Network isn't connected.");
                    return;
                }
                String str = ta6Var.A;
                if (str != null) {
                    File file = new File(new File(str), me0.d(new StringBuilder(), ta6Var.t, ".tmp"));
                    if (he6.c(ta6Var, file)) {
                        zv6 zv6Var = null;
                        try {
                            try {
                                zv6.a aVar = new zv6.a(file);
                                int i2 = 1;
                                aVar.b = true;
                                zv6 zv6VarA = aVar.a();
                                while (true) {
                                    try {
                                        if (zv6VarA.g == 0) {
                                            zv6VarA.close();
                                        } else {
                                            ArrayList arrayList = new ArrayList();
                                            zv6.c cVar = zv6VarA.new c();
                                            int i3 = 0;
                                            while (cVar.hasNext()) {
                                                try {
                                                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream((byte[]) cVar.next());
                                                    try {
                                                        PostHogEvent postHogEvent = (PostHogEvent) ta6Var.b().a.e(new BufferedReader(new InputStreamReader(byteArrayInputStream, ha1.b), 8192), new sd6().b);
                                                        if (postHogEvent != null) {
                                                            arrayList.add(postHogEvent);
                                                            i3++;
                                                        } else {
                                                            td6Var.c(cVar, null);
                                                            j59 j59Var = j59.a;
                                                        }
                                                        byteArrayInputStream.close();
                                                    } catch (Throwable th2) {
                                                        try {
                                                            throw th2;
                                                        } catch (Throwable th3) {
                                                            m96.c(byteArrayInputStream, th2);
                                                            throw th3;
                                                        }
                                                    }
                                                } catch (Throwable th4) {
                                                    td6Var.c(cVar, th4);
                                                }
                                                if (arrayList.size() >= ta6Var.h) {
                                                    if (!arrayList.isEmpty()) {
                                                        try {
                                                            try {
                                                                td6Var.c.a(arrayList);
                                                                if (i3 <= 0 && 1 <= i3) {
                                                                    while (true) {
                                                                        try {
                                                                            try {
                                                                                zv6VarA.m();
                                                                            } catch (NoSuchElementException unused) {
                                                                                he6.a(ta6Var, file);
                                                                            }
                                                                        } catch (Throwable th5) {
                                                                            ta6Var.v.a("Error deleting file: " + th5 + '.');
                                                                        }
                                                                        int i4 = i4 != i3 ? i4 + 1 : 1;
                                                                        break;
                                                                    }
                                                                }
                                                            } catch (PostHogApiError e) {
                                                                z = e.b >= 400;
                                                                try {
                                                                    throw e;
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    th = th;
                                                                    if (z) {
                                                                        throw th;
                                                                    }
                                                                    throw th;
                                                                }
                                                            } catch (IOException e2) {
                                                                boolean z2 = !he6.d(e2);
                                                                try {
                                                                    throw e2;
                                                                } catch (Throwable th7) {
                                                                    th = th7;
                                                                    z = z2;
                                                                    th = th;
                                                                    if (z || i3 <= 0 || 1 > i3) {
                                                                        throw th;
                                                                    }
                                                                    while (true) {
                                                                        try {
                                                                            try {
                                                                                zv6VarA.m();
                                                                            } catch (Throwable th8) {
                                                                                ta6Var.v.a("Error deleting file: " + th8 + '.');
                                                                            }
                                                                            if (i2 == i3) {
                                                                                throw th;
                                                                            }
                                                                            i2++;
                                                                        } catch (NoSuchElementException unused2) {
                                                                            he6.a(ta6Var, file);
                                                                            throw th;
                                                                        }
                                                                    }
                                                                }
                                                                break;
                                                            }
                                                        } catch (Throwable th9) {
                                                            th = th9;
                                                            z = true;
                                                            if (z) {
                                                                throw th;
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                }
                                            }
                                            if (!arrayList.isEmpty()) {
                                                td6Var.c.a(arrayList);
                                                if (i3 <= 0) {
                                                }
                                            }
                                        }
                                    } catch (Throwable th10) {
                                        th = th10;
                                        zv6Var = zv6VarA;
                                        try {
                                            ta6Var.v.a("Flushing legacy events failed: " + th + '.');
                                            if (zv6Var != null) {
                                                zv6Var.close();
                                                return;
                                            }
                                            return;
                                        } catch (Throwable th11) {
                                            if (zv6Var != null) {
                                                try {
                                                    zv6Var.close();
                                                    break;
                                                } catch (Throwable unused3) {
                                                }
                                            }
                                            throw th11;
                                        }
                                    }
                                }
                            } catch (Throwable th12) {
                                th = th12;
                            }
                            return;
                        } catch (Throwable unused4) {
                            return;
                        }
                    }
                    return;
                }
                return;
        }
    }
}
