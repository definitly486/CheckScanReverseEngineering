package yads;

import android.webkit.WebView;
import com.tapjoy.TJVerifierKt;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xo6 implements vp6 {
    public static final xo6 e = new xo6(new xp6());
    public Date a;
    public boolean b;
    public final xp6 c;
    public boolean d;

    public xo6(xp6 xp6Var) {
        this.c = xp6Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.vp6
    public final void a(boolean z) {
        if (!this.d && z) {
            Date date = new Date();
            Date date2 = this.a;
            if (date2 == null || date.after(date2)) {
                this.a = date;
                if (this.b) {
                    Iterator it = Collections.unmodifiableCollection(tp6.c.b).iterator();
                    while (it.hasNext()) {
                        s9 s9Var = ((dp6) it.next()).e;
                        Date date3 = this.a;
                        Date date4 = date3 != null ? (Date) date3.clone() : null;
                        s9Var.getClass();
                        if (date4 != null) {
                            JSONObject jSONObject = new JSONObject();
                            rp6.a(jSONObject, TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(date4.getTime()));
                            nq6.a.a((WebView) s9Var.b.get(), "setLastActivity", jSONObject);
                        }
                    }
                }
            }
        }
        this.d = z;
    }
}
