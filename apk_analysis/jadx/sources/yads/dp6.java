package yads;

import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import android.webkit.WebView;
import com.tapjoy.TJVerifierKt;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dp6 {
    public final q9 a;
    public final p9 b;
    public final iq6 c;
    public cp6 d;
    public s9 e;
    public boolean f;
    public boolean g;
    public final String h;
    public boolean i;
    public boolean j;

    /* JADX WARN: Multi-variable type inference failed */
    public dp6(p9 p9Var, q9 q9Var) {
        s9 yo6Var;
        String string = UUID.randomUUID().toString();
        this.c = new iq6();
        this.f = false;
        this.g = false;
        this.b = p9Var;
        this.a = q9Var;
        this.h = string;
        this.d = new cp6(null);
        r9 r9Var = q9Var.e;
        if (r9Var == r9.HTML || r9Var == r9.JAVASCRIPT) {
            yo6Var = new yo6(string);
        } else {
            yo6Var = new jp6(string, q9Var.d, Collections.unmodifiableMap(q9Var.c));
        }
        this.e = yo6Var;
        yo6Var.b();
        tp6.c.a.add(this);
        s9 s9Var = this.e;
        nq6 nq6Var = nq6.a;
        WebView webView = (WebView) s9Var.b.get();
        String str = s9Var.a;
        JSONObject jSONObject = new JSONObject();
        rp6.a(jSONObject, "impressionOwner", ur4.NATIVE);
        rp6.a(jSONObject, "mediaEventsOwner", p9Var.a);
        rp6.a(jSONObject, "creativeType", y90.VIDEO);
        rp6.a(jSONObject, "impressionType", df3.VIEWABLE);
        rp6.a(jSONObject, "isolateVerificationScripts", Boolean.FALSE);
        nq6Var.a(webView, "init", jSONObject, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        if (this.g) {
            return;
        }
        this.d.clear();
        if (!this.g) {
            this.c.a.clear();
        }
        this.g = true;
        s9 s9Var = this.e;
        nq6.a.a((WebView) s9Var.b.get(), "finishSession", s9Var.a);
        tp6 tp6Var = tp6.c;
        boolean z = tp6Var.b.size() > 0;
        tp6Var.a.remove(this);
        tp6Var.b.remove(this);
        if (z && tp6Var.b.size() <= 0) {
            oq6 oq6VarA = oq6.a();
            oq6VarA.getClass();
            a26 a26Var = a26.g;
            a26Var.getClass();
            Handler handler = a26.i;
            if (handler != null) {
                handler.removeCallbacks(a26.k);
                a26.i = null;
            }
            a26Var.a.clear();
            a26.h.post(new x16(a26Var));
            hp6 hp6Var = hp6.d;
            hp6Var.a = false;
            hp6Var.c = null;
            aq6 aq6Var = oq6VarA.c;
            aq6Var.b.getContentResolver().unregisterContentObserver(aq6Var);
        }
        this.e.a();
        this.e = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b() {
        if (this.f || this.e == null) {
            return;
        }
        this.f = true;
        tp6 tp6Var = tp6.c;
        boolean z = tp6Var.b.size() > 0;
        tp6Var.b.add(this);
        if (!z) {
            oq6 oq6VarA = oq6.a();
            oq6VarA.getClass();
            hp6 hp6Var = hp6.d;
            hp6Var.c = oq6VarA;
            hp6Var.b();
            a26.g.getClass();
            if (a26.i == null) {
                Handler handler = new Handler(Looper.getMainLooper());
                a26.i = handler;
                handler.post(a26.j);
                a26.i.postDelayed(a26.k, 200L);
            }
            aq6 aq6Var = oq6VarA.c;
            aq6Var.h.submit(new wp6(aq6Var));
            aq6Var.b.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, aq6Var);
        }
        float f = oq6.a().a;
        s9 s9Var = this.e;
        nq6 nq6Var = nq6.a;
        nq6Var.a((WebView) s9Var.b.get(), "setDeviceVolume", Float.valueOf(f), s9Var.a);
        s9 s9Var2 = this.e;
        Date date = xo6.e.a;
        Date date2 = date != null ? (Date) date.clone() : null;
        s9Var2.getClass();
        if (date2 != null) {
            JSONObject jSONObject = new JSONObject();
            rp6.a(jSONObject, TJVerifierKt.TJC_TIMESTAMP, Long.valueOf(date2.getTime()));
            nq6Var.a((WebView) s9Var2.b.get(), "setLastActivity", jSONObject);
        }
        this.e.a(this, this.a);
    }

    public final void a(View view, l03 l03Var, String str) {
        cq6 cq6Var;
        if (this.g) {
            return;
        }
        iq6 iq6Var = this.c;
        iq6Var.getClass();
        if (str != null) {
            if (str.length() > 50) {
                defpackage.fg.c("FriendlyObstruction has detailed reason over 50 characters in length");
                return;
            } else if (!iq6.b.matcher(str).matches()) {
                defpackage.fg.c("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
                return;
            }
        }
        Iterator it = iq6Var.a.iterator();
        do {
            if (!it.hasNext()) {
                cq6Var = null;
                break;
            }
            cq6Var = (cq6) it.next();
        } while (cq6Var.a.get() != view);
        if (cq6Var == null) {
            iq6Var.a.add(new cq6(view, l03Var, str));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(View view) {
        if (this.g || ((View) this.d.get()) == view) {
            return;
        }
        this.d = new cp6(view);
        s9 s9Var = this.e;
        s9Var.getClass();
        s9Var.f = System.nanoTime();
        s9Var.e = 1;
        Collection<dp6> collectionUnmodifiableCollection = Collections.unmodifiableCollection(tp6.c.a);
        if (collectionUnmodifiableCollection == null || collectionUnmodifiableCollection.isEmpty()) {
            return;
        }
        for (dp6 dp6Var : collectionUnmodifiableCollection) {
            if (dp6Var != this && ((View) dp6Var.d.get()) == view) {
                dp6Var.d.clear();
            }
        }
    }
}
