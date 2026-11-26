package yads;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class n06 {
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final k55 l;
    public final int m;
    public final k55 n;
    public final int o;
    public final int p;
    public final int q;
    public final k55 r;
    public k55 s;
    public int t;
    public final int u;
    public final boolean v;
    public final boolean w;
    public final boolean x;
    public final HashMap y;
    public final HashSet z;
    public final int a = Integer.MAX_VALUE;
    public final int b = Integer.MAX_VALUE;
    public final int c = Integer.MAX_VALUE;
    public final int d = Integer.MAX_VALUE;
    public int i = Integer.MAX_VALUE;
    public int j = Integer.MAX_VALUE;
    public boolean k = true;

    public n06() {
        le3 le3Var = oe3.c;
        k55 k55Var = k55.f;
        this.l = k55Var;
        this.m = 0;
        this.n = k55Var;
        this.o = 0;
        this.p = Integer.MAX_VALUE;
        this.q = Integer.MAX_VALUE;
        this.r = k55Var;
        this.s = k55Var;
        this.t = 0;
        this.u = 0;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = new HashMap();
        this.z = new HashSet();
    }

    public void a(Context context) {
        CaptioningManager captioningManager;
        int i = u56.a;
        if (i >= 19) {
            if ((i >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.s = oe3.a(u56.a(locale));
                }
            }
        }
    }
}
