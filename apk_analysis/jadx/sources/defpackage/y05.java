package defpackage;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.widget.TextView;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class y05 extends v05 {
    public final v36 b;
    public final f15 c;
    public final List<b15> d;
    public final TextView.BufferType a = TextView.BufferType.SPANNABLE;
    public final boolean e = true;

    public y05(v36 v36Var, f15 f15Var, List list) {
        this.b = v36Var;
        this.c = f15Var;
        this.d = list;
    }

    @Override // defpackage.v05
    public final void a(TextView textView, String str) {
        List<b15> list = this.d;
        Iterator<b15> it = list.iterator();
        String strF = str;
        while (it.hasNext()) {
            strF = it.next().f(strF);
        }
        v36 v36Var = this.b;
        v36Var.getClass();
        if (strF == null) {
            o2.d("input must not be null");
            return;
        }
        dq2 dq2Var = new dq2(v36Var.a, v36Var.c, v36Var.b);
        int i = 0;
        while (true) {
            int length = strF.length();
            int i2 = i;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                }
                char cCharAt = strF.charAt(i2);
                if (cCharAt == '\n' || cCharAt == '\r') {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == -1) {
                break;
            }
            dq2Var.i(strF.substring(i, i2));
            i = i2 + 1;
            if (i < strF.length() && strF.charAt(i2) == '\r' && strF.charAt(i) == '\n') {
                i = i2 + 2;
            }
        }
        if (strF.length() > 0 && (i == 0 || i < strF.length())) {
            dq2Var.i(strF.substring(i));
        }
        dq2Var.f(dq2Var.n);
        l54 l54VarA = dq2Var.j.a(new m54(dq2Var.k, dq2Var.m));
        Iterator it2 = dq2Var.o.iterator();
        while (it2.hasNext()) {
            ((uj0) it2.next()).g(l54VarA);
        }
        zn5 zn5VarA = dq2Var.l.a;
        Iterator it3 = v36Var.d.iterator();
        while (it3.hasNext()) {
            zn5VarA = ((ie6) it3.next()).a();
        }
        Iterator<b15> it4 = list.iterator();
        while (it4.hasNext()) {
            it4.next().getClass();
        }
        f15 f15Var = this.c;
        g15.a aVar = (g15.a) f15Var.c;
        x05 x05Var = (x05) f15Var.d;
        g27 g27Var = new g27();
        g27Var.b = new HashMap(3);
        g15 g15Var = new g15(x05Var, g27Var, new f58(), Collections.unmodifiableMap(aVar.a), new sj0(0));
        zn5VarA.a(g15Var);
        Iterator<b15> it5 = list.iterator();
        while (it5.hasNext()) {
            it5.next().getClass();
        }
        f58 f58Var = g15Var.c;
        SpannableStringBuilder bVar = new f58.b(f58Var.b);
        for (f58.a aVar2 : f58Var.c) {
            bVar.setSpan(aVar2.a, aVar2.b, aVar2.c, aVar2.d);
        }
        if (TextUtils.isEmpty(bVar) && this.e && !TextUtils.isEmpty(str)) {
            bVar = new SpannableStringBuilder(str);
        }
        Iterator<b15> it6 = list.iterator();
        while (it6.hasNext()) {
            it6.next().c(textView, bVar);
        }
        textView.setText(bVar, this.a);
        Iterator<b15> it7 = list.iterator();
        while (it7.hasNext()) {
            it7.next().a(textView);
        }
    }
}
