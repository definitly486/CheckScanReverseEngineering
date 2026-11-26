package yads;

import android.content.ContextWrapper;
import android.os.SystemClock;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import androidx.core.view.LayoutInflaterCompat;
import androidx.lifecycle.LifecycleOwner;
import com.yandex.mobile.ads.R$style;
import defpackage.fh8;
import defpackage.r54;

/* JADX INFO: loaded from: classes6.dex */
public class pq0 extends ContextWrapper {
    public final ContextThemeWrapper a;
    public final nq0 b;
    public final LifecycleOwner c;
    public LayoutInflater d;

    public pq0(ContextThemeWrapper contextThemeWrapper, nq0 nq0Var, LifecycleOwner lifecycleOwner) {
        super(contextThemeWrapper);
        this.a = contextThemeWrapper;
        this.b = nq0Var;
        this.c = lifecycleOwner;
        new fh8(new r54(this, 4));
        ea1 ea1Var = nq0Var.e;
        if (ea1Var.b >= 0) {
            return;
        }
        ea1Var.b = SystemClock.uptimeMillis();
    }

    public static final m73 a(pq0 pq0Var) {
        yf2 yf2Var = pq0Var.b.f;
        return new m73();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        LayoutInflater layoutInflaterCloneInContext;
        if (!"layout_inflater".equals(str)) {
            return this.a.getSystemService(str);
        }
        LayoutInflater layoutInflater = this.d;
        if (layoutInflater != null) {
            return layoutInflater;
        }
        synchronized (this) {
            layoutInflaterCloneInContext = this.d;
            if (layoutInflaterCloneInContext == null) {
                layoutInflaterCloneInContext = LayoutInflater.from(this.a).cloneInContext(this);
                layoutInflaterCloneInContext.getClass();
                LayoutInflaterCompat.setFactory2(layoutInflaterCloneInContext, new oq0(this));
                this.d = layoutInflaterCloneInContext;
            }
        }
        return layoutInflaterCloneInContext;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public pq0(ContextThemeWrapper contextThemeWrapper, c81 c81Var, LifecycleOwner lifecycleOwner) {
        int i = R$style.monetization_ads_divkit_Div_Theme;
        bo1 bo1Var = jn1.b.a(contextThemeWrapper).a;
        bo1Var.getClass();
        this(contextThemeWrapper, new nq0(bo1Var, contextThemeWrapper, c81Var, i, new ea1(SystemClock.uptimeMillis()), c81Var.m), lifecycleOwner);
    }
}
