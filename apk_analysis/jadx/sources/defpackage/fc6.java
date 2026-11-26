package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.posthog.internal.replay.RRPluginEvent;
import com.posthog.internal.replay.RRUtilsKt;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class fc6 implements ac6 {
    public static volatile boolean f;
    public final ta6 b;
    public volatile boolean c;
    public Thread d;
    public bc6 e;

    public fc6(ta6 ta6Var) {
        this.b = ta6Var;
    }

    @Override // defpackage.ac6
    public final void a(boolean z) {
        if (z) {
            ad6 ad6Var = this.b.H;
            if (ad6Var != null ? ad6Var.F : true) {
                bc6 bc6Var = this.e;
                if (bc6Var != null) {
                    b(bc6Var);
                    return;
                }
                return;
            }
            f = false;
            this.c = false;
            Thread thread = this.d;
            if (thread != null) {
                try {
                    thread.interrupt();
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // defpackage.ac6
    public final void b(final bc6 bc6Var) {
        bc6Var.getClass();
        this.e = bc6Var;
        if (f) {
            return;
        }
        ad6 ad6Var = this.b.H;
        boolean z = ad6Var != null ? ad6Var.F : true;
        this.b.N.getClass();
        if (z) {
            f = true;
            final ArrayList arrayListK = u96.k("logcat", "-v", "threadtime", "*:E");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.mmm", Locale.ROOT);
            arrayListK.add("-T");
            String str = simpleDateFormat.format(Long.valueOf(this.b.I.currentTimeMillis()));
            str.getClass();
            arrayListK.add(str);
            this.c = false;
            Thread thread = this.d;
            if (thread != null) {
                try {
                    thread.interrupt();
                } catch (Throwable unused) {
                }
            }
            Thread thread2 = new Thread(new Runnable() { // from class: ec6
                @Override // java.lang.Runnable
                public final void run() {
                    yu4 yu4VarA;
                    String string;
                    Date time;
                    String string2;
                    ArrayList arrayList = arrayListK;
                    fc6 fc6Var = this;
                    bc6 bc6Var2 = bc6Var;
                    Process process = null;
                    String line = null;
                    try {
                        Process processExec = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[0]));
                        try {
                            InputStream inputStream = processExec.getInputStream();
                            inputStream.getClass();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, ha1.b), 8192);
                            try {
                                fc6Var.c = true;
                                do {
                                    try {
                                        line = bufferedReader.readLine();
                                        bc6 bc6Var3 = fc6Var.e;
                                        if ((bc6Var3 != null ? bc6Var3.c() : false) && line != null && line.length() != 0 && !ta8.D(line, "PostHog", false) && !ta8.D(line, "StrictMode", false) && (yu4VarA = new ev4().a(line)) != null) {
                                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                                            linkedHashMap.put(FirebaseAnalytics.Param.LEVEL, ((String) yu4VarA.c).toString());
                                            String str2 = (String) yu4VarA.d;
                                            String str3 = "";
                                            if (str2 == null || (string = ta8.f0(str2).toString()) == null) {
                                                string = "";
                                            }
                                            String str4 = (String) yu4VarA.e;
                                            if (str4 != null && (string2 = ta8.f0(str4).toString()) != null) {
                                                str3 = string2;
                                            }
                                            linkedHashMap.put("payload", u96.h(string + ": " + str3));
                                            GregorianCalendar gregorianCalendar = (GregorianCalendar) yu4VarA.b;
                                            RRUtilsKt.capture(u96.h(new RRPluginEvent("rrweb/console@1", linkedHashMap, (gregorianCalendar == null || (time = gregorianCalendar.getTime()) == null) ? fc6Var.b.I.currentTimeMillis() : time.getTime())), bc6Var2);
                                        }
                                    } catch (Throwable unused2) {
                                    }
                                    if (line == null) {
                                        break;
                                    }
                                } while (fc6Var.c);
                                j59 j59Var = j59.a;
                                bufferedReader.close();
                                processExec.destroy();
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    m96.c(bufferedReader, th);
                                    throw th2;
                                }
                            }
                        } catch (Throwable unused3) {
                            process = processExec;
                            if (process != null) {
                                process.destroy();
                            }
                        }
                    } catch (Throwable unused4) {
                    }
                }
            });
            this.d = thread2;
            thread2.start();
        }
    }
}
