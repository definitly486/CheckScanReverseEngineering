package defpackage;

import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.camera.core.CameraState;
import androidx.core.util.Consumer;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.grpc.d;
import io.grpc.l;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g00 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ g00(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:116:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4 A[Catch: all -> 0x00b7, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x00b7, blocks: (B:23:0x006a, B:45:0x00b4), top: B:104:0x006a }] */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        switch (this.b) {
            case 0:
                ((BackgroundThreadStateHandler) this.c).lambda$updateStateAsync$1((lm3) this.d);
                return;
            case 1:
                ((Consumer) this.c).accept((CameraState) this.d);
                return;
            case 2:
                wp2.b bVar = (wp2.b) this.c;
                IOException iOException = (IOException) this.d;
                l.d dVar = bVar.b;
                l.e.a aVarA = l.e.a();
                h88 h88VarG = h88.m.h("Unable to resolve host " + wp2.this.g).g(iOException);
                n88<List<d>> n88Var = new n88<>(h88VarG, null);
                o8.h(true ^ h88VarG.f(), "cannot use OK status: %s", h88VarG);
                aVarA.a = n88Var;
                dVar.a(new l.e(n88Var, aVarA.b, aVarA.c));
                return;
            default:
                zu9 zu9Var = (zu9) this.c;
                HashMap map = (HashMap) this.d;
                zu9Var.getClass();
                String str = Build.TAGS;
                boolean z2 = str != null && str.contains("test-keys");
                if (!z2) {
                    String[] strArr = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"};
                    for (int i = 0; i < 10; i++) {
                        if (new File(strArr[i]).exists()) {
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    z = z2;
                } else {
                    Runtime runtime = Runtime.getRuntime();
                    String[] strArr2 = {"/system/xbin/which su", "/system/bin/which su", "which su"};
                    z = z2;
                    for (int i2 = 0; i2 < 3; i2++) {
                        try {
                            Process processExec = runtime.exec(strArr2[i2]);
                            try {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    while (true) {
                                        String line = bufferedReader.readLine();
                                        if (line != null) {
                                            sb.append(line);
                                        } else {
                                            processExec.destroy();
                                            if (TextUtils.isEmpty(sb.toString())) {
                                                bufferedReader.close();
                                            } else {
                                                try {
                                                    bufferedReader.close();
                                                    try {
                                                        processExec.destroy();
                                                        break;
                                                    } catch (Throwable unused) {
                                                    }
                                                    z = true;
                                                } catch (Throwable unused2) {
                                                    z = true;
                                                    if (processExec != null) {
                                                        processExec.destroy();
                                                    }
                                                }
                                            }
                                            if (processExec != null) {
                                                processExec.destroy();
                                            }
                                        }
                                    }
                                } catch (Throwable th) {
                                    try {
                                        bufferedReader.close();
                                        break;
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                    throw th;
                                }
                            } catch (Throwable unused3) {
                            }
                        } catch (Throwable unused4) {
                        }
                    }
                }
                if (!z) {
                    Locale locale = Locale.US;
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(kv2.b(Process.myPid(), "/proc/", "/mounts"))));
                        try {
                            String[] strArr3 = {"/sbin/.magisk/", "/sbin/.core/mirror", "/sbin/.core/img", "/sbin/.core/db-0/magisk.db"};
                            while (true) {
                                String line2 = bufferedReader2.readLine();
                                if (line2 == null) {
                                    bufferedReader2.close();
                                } else {
                                    for (int i3 = 0; i3 < 4; i3++) {
                                        if (line2.contains(strArr3[i3])) {
                                            z = true;
                                        }
                                    }
                                }
                                break;
                            }
                        } catch (Throwable th3) {
                            try {
                                bufferedReader2.close();
                                throw th3;
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                                throw th3;
                            }
                        }
                    } catch (Throwable unused5) {
                    }
                }
                synchronized (zu9Var) {
                    try {
                        map.put("rooted", z ? "1" : CommonUrlParts.Values.FALSE_INTEGER);
                    } catch (Throwable th5) {
                        throw th5;
                    }
                    break;
                }
                return;
        }
    }
}
