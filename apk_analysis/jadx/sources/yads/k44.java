package yads;

import android.content.Context;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapterListener;
import defpackage.ll3;
import defpackage.nl3;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class k44 implements MediatedNativeAdapterListener {
    public final o44 a;
    public final ll3 b;
    public final nl3 c;
    public final ll3 d;
    public final Object e;
    public final Context f;
    public final WeakReference g;

    public k44(Context context, o44 o44Var, ll3 ll3Var, nl3 nl3Var, ll3 ll3Var2, Object obj) {
        this.a = o44Var;
        this.b = ll3Var;
        this.c = nl3Var;
        this.d = ll3Var2;
        this.e = obj;
        this.f = context.getApplicationContext();
        this.g = new WeakReference(context);
    }
}
