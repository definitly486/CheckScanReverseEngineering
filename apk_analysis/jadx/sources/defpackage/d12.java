package defpackage;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class d12 extends a1 {
    public final ArrayList a = new ArrayList(0);

    public interface a {
        void a();
    }

    public static void h(g15 g15Var, String str, String str2, pj0 pj0Var) {
        g15Var.b();
        int iC = g15Var.c();
        f58 f58Var = g15Var.c;
        StringBuilder sb = f58Var.b;
        sb.append((char) 160);
        sb.append('\n');
        g15Var.a.b.getClass();
        f58Var.b(sb.length(), str2);
        sb.append((CharSequence) str2);
        g15Var.b();
        f58Var.a((char) 160);
        g15Var.b.a(e12.g, str);
        g15Var.d(pj0Var, iC);
        g15Var.a(pj0Var);
    }

    @Override // defpackage.a1, defpackage.b15
    public final void a(TextView textView) {
        if (textView.getMovementMethod() == null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    @Override // defpackage.a1, defpackage.b15
    public final void c(TextView textView, SpannableStringBuilder spannableStringBuilder) {
        e06[] e06VarArr = (e06[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), e06.class);
        if (e06VarArr != null) {
            TextPaint paint = textView.getPaint();
            for (e06 e06Var : e06VarArr) {
                e06Var.e = (int) (paint.measureText(e06Var.c) + 0.5f);
            }
        }
        bt8[] bt8VarArr = (bt8[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), bt8.class);
        if (bt8VarArr != null) {
            for (bt8 bt8Var : bt8VarArr) {
                spannableStringBuilder.removeSpan(bt8Var);
            }
        }
        bt8 bt8Var2 = new bt8();
        new WeakReference(textView);
        spannableStringBuilder.setSpan(bt8Var2, 0, spannableStringBuilder.length(), 18);
    }

    @Override // defpackage.a1, defpackage.b15
    public final void d(c15.a aVar) {
        wm1 wm1Var = new wm1();
        aVar.a(xa8.class, new za8());
        aVar.a(ax2.class, new dx2());
        aVar.a(wj0.class, new zj0());
        aVar.a(um1.class, new zm1());
        aVar.a(m63.class, wm1Var);
        aVar.a(g44.class, wm1Var);
        aVar.a(dr4.class, new jr4());
        aVar.a(nv3.class, new qv3(0));
        aVar.a(hq4.class, new sq4());
        aVar.a(dt8.class, new qv3(1));
    }

    @Override // defpackage.a1, defpackage.b15
    public final void g(g15.a aVar) {
        aVar.a(dq8.class, new u02(this));
        aVar.a(xa8.class, new v02());
        aVar.a(ax2.class, new w02());
        aVar.a(wj0.class, new x02());
        aVar.a(um1.class, new y02());
        aVar.a(m63.class, new z02());
        aVar.a(g44.class, new a12());
        aVar.a(w04.class, new b12());
        aVar.a(fv0.class, new az7());
        aVar.a(d06.class, new az7());
        aVar.a(dr4.class, new c12());
        aVar.a(dt8.class, new o02());
        aVar.a(nv3.class, new p02());
        aVar.a(o48.class, new q02());
        aVar.a(pu3.class, new r02());
        aVar.a(d36.class, new s02());
        aVar.a(hq4.class, new t02());
    }
}
