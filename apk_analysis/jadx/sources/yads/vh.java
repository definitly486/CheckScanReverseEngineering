package yads;

import androidx.core.app.NotificationCompat;
import com.tapjoy.TJVerifierKt;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class vh {
    public final q84 a;
    public final boolean b;

    public vh(q84 q84Var, boolean z) {
        this.a = q84Var;
        this.b = z;
    }

    public final void a(ArrayList arrayList) {
        Map mapH;
        for (Iterator it = arrayList.iterator(); it.hasNext(); it = it) {
            us4 us4Var = (us4) it.next();
            if (this.b) {
                defpackage.cl4 cl4Var = hf.a;
                ff ffVar = us4Var.a;
                mapH = defpackage.n05.h(us4Var.b, new defpackage.b36(new Thread("ApplicationExitInfoDetails"), new StackTraceElement[]{new StackTraceElement("ExitInfo", TJVerifierKt.TJC_TIMESTAMP, ((SimpleDateFormat) hf.a.getValue()).format(new Date(ffVar.a)), 0), new StackTraceElement("ExitInfo", "description", ffVar.b, 0), new StackTraceElement("Memory", "pss", hf.a(ffVar.f), 0), new StackTraceElement("Memory", "rss", hf.a(ffVar.g), 0), new StackTraceElement("Process", "name", ffVar.h, 0), new StackTraceElement("Process", "pid", String.valueOf(ffVar.e), 0), new StackTraceElement("Process", "importance", String.valueOf(ffVar.d), 0), new StackTraceElement("Process", "uid", String.valueOf(ffVar.j), 0), new StackTraceElement("Process", NotificationCompat.CATEGORY_STATUS, String.valueOf(ffVar.i), 0)}));
            } else {
                mapH = us4Var.b;
            }
            this.a.b(mapH);
        }
    }
}
