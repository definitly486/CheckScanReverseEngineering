package yads;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.rm9;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class dh4 {
    public final i00 a;
    public final defpackage.y22 b;
    public final nn0 c;
    public final qh4 d;
    public final HashMap e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x0223 A[PHI: r10
      0x0223: PHI (r10v15 java.lang.Object) = (r10v14 java.lang.Object), (r10v16 java.lang.Object) binds: [B:99:0x0220, B:96:0x0216] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:103:0x0227  */
    /* JADX WARN: Code duplicated, block: B:104:0x022b  */
    /* JADX WARN: Code duplicated, block: B:106:0x022e  */
    /* JADX WARN: Code duplicated, block: B:107:0x023c A[PHI: r10
      0x023c: PHI (r10v18 java.lang.Object) = 
      (r10v13 java.lang.Object)
      (r10v14 java.lang.Object)
      (r10v15 java.lang.Object)
      (r10v16 java.lang.Object)
      (r10v17 java.lang.Object)
      (r10v19 java.lang.Object)
      (r10v19 java.lang.Object)
     binds: [B:73:0x01b1, B:99:0x0220, B:105:0x022c, B:96:0x0216, B:92:0x0200, B:83:0x01d6, B:89:0x01e3] A[DONT_GENERATE, DONT_INLINE]] */
    public dh4(rh4 rh4Var, e4 e4Var, bf5 bf5Var, b05 b05Var, we3 we3Var, of4 of4Var, mk mkVar, sj4 sj4Var, aj4 aj4Var, d9 d9Var, hm4 hm4Var, we4 we4Var, j24 j24Var, uj5 uj5Var, ac0 ac0Var, nn0 nn0Var) {
        Object obj;
        Object obj2;
        Object hj0Var;
        i00 i00Var = i00.a;
        defpackage.y22 y22VarA = xn.a(rm9.b(), new i90());
        ih4 ih4Var = rh4Var.a;
        ph4 ph4Var = new ph4(ih4Var.c, ih4Var.d);
        ih4 ih4Var2 = rh4Var.a;
        ph4Var.b = ih4Var2.a;
        ph4Var.c = ih4Var2.b;
        ph4Var.d = ih4Var2.e;
        qh4 qh4Var = new qh4(ph4Var);
        a24 a24Var = new a24(mkVar, e4Var, we3Var, of4Var.d, we4Var, j24Var, new tj6(qh4Var), uj5Var);
        Context context = ((do6) bf5Var).a;
        q84 q84VarA = mw.a(context, context);
        ck ckVar = new ck(d9Var, b05Var, a24Var, sj4Var, aj4Var, q84VarA, ac0Var, y22VarA);
        HashMap map = new HashMap();
        View viewA = qh4Var.a("close_button");
        TextView textView = viewA instanceof TextView ? (TextView) viewA : null;
        i10 i10Var = textView != null ? new i10(textView) : null;
        map.put("close_button", i10Var != null ? new hj0(i10Var) : null);
        View viewA2 = qh4Var.a("feedback");
        ImageView imageView = viewA2 instanceof ImageView ? (ImageView) viewA2 : null;
        rw2 rw2Var = imageView != null ? new rw2(imageView, new hc3(imageView.getContext(), new kj4(d9Var), b05Var), y22VarA) : null;
        map.put("feedback", rw2Var != null ? new wb3(rw2Var) : null);
        e55 e55Var = qh4Var.b;
        defpackage.ze4[] ze4VarArr = qh4.g;
        defpackage.ze4 ze4Var = ze4VarArr[1];
        ImageView imageView2 = (ImageView) e55Var.a.get();
        View viewA3 = qh4Var.a("media");
        map.put("media", ckVar.a(imageView2, viewA3 instanceof CustomizableMediaView ? (CustomizableMediaView) viewA3 : null));
        View viewA4 = qh4Var.a("rating");
        a45 a45Var = viewA4 instanceof b45 ? new a45(viewA4, q84VarA) : null;
        map.put("rating", a45Var != null ? new hj0(a45Var) : null);
        View viewA5 = qh4Var.a();
        jb5 jb5Var = viewA5 != null ? new jb5(viewA5) : null;
        map.put("root_container", jb5Var != null ? new hj0(jb5Var) : null);
        e55 e55Var2 = qh4Var.e;
        defpackage.ze4 ze4Var2 = ze4VarArr[4];
        List<yb0> list = (List) e55Var2.a.get();
        if (list != null) {
            for (yb0 yb0Var : list) {
                String str = yb0Var.a;
                s70 s70Var = hm4Var.f;
                String str2 = s70Var != null ? s70Var.e : null;
                View viewA6 = yb0Var.a();
                map.put(str, viewA6 != null ? new hj0(new bc0(viewA6, ckVar.f, yb0Var, str2)) : null);
            }
        }
        for (ak akVar : hm4Var.a) {
            View viewA7 = qh4Var.a(akVar.a);
            if (viewA7 != null && !map.containsKey(akVar.a)) {
                String str3 = akVar.b;
                switch (str3.hashCode()) {
                    case -1034364087:
                        obj = null;
                        if (str3.equals("number")) {
                            if (viewA7 instanceof TextView) {
                                obj2 = (TextView) viewA7;
                            } else {
                                obj2 = obj;
                            }
                            if (obj2 != null) {
                                hj0Var = new hj0(new jw5((TextView) viewA7));
                            } else {
                                hj0Var = obj;
                            }
                        } else {
                            hj0Var = obj;
                        }
                        break;
                    case -891985903:
                        obj = null;
                        if (str3.equals(TypedValues.Custom.S_STRING)) {
                            if (viewA7 instanceof TextView) {
                                obj2 = (TextView) viewA7;
                            } else {
                                obj2 = obj;
                            }
                            if (obj2 != null) {
                                hj0Var = new hj0(new jw5((TextView) viewA7));
                            } else {
                                hj0Var = obj;
                            }
                        } else {
                            hj0Var = obj;
                        }
                        break;
                    case -410956671:
                        obj = null;
                        if (str3.equals(TtmlNode.RUBY_CONTAINER)) {
                            hj0Var = new hj0(new jb5(viewA7));
                        } else {
                            hj0Var = obj;
                        }
                        break;
                    case 100313435:
                        obj = null;
                        if (!str3.equals("image")) {
                            hj0Var = obj;
                        } else if ((viewA7 instanceof ImageView ? (ImageView) viewA7 : null) != null) {
                            hj0Var = new wb3(new be3((ImageView) viewA7, ckVar.b, ckVar.a, ckVar.g));
                        } else {
                            hj0Var = obj;
                        }
                        break;
                    case 103772132:
                        if (str3.equals("media")) {
                            if ((viewA7 instanceof CustomizableMediaView ? (CustomizableMediaView) viewA7 : null) != null) {
                                hj0Var = ckVar.a(null, (CustomizableMediaView) viewA7);
                            }
                        }
                        obj = null;
                        hj0Var = obj;
                        break;
                    case 1124446108:
                        if (str3.equals("warning")) {
                            if ((viewA7 instanceof TextView ? (TextView) viewA7 : null) != null) {
                                hj0Var = new hj0(new jj6((TextView) viewA7));
                            }
                        }
                        obj = null;
                        hj0Var = obj;
                        break;
                    default:
                        obj = null;
                        hj0Var = obj;
                        break;
                }
                map.put(akVar.a, hj0Var == null ? new hj0(new bn0(viewA7)) : hj0Var);
            }
        }
        for (Map.Entry entry : qh4Var.f.entrySet()) {
            String str4 = (String) entry.getKey();
            View view = (View) ((WeakReference) entry.getValue()).get();
            if (view != null && !map.containsKey(str4)) {
                map.put(str4, new hj0(new bn0(view)));
            }
        }
        this.a = i00Var;
        this.b = y22VarA;
        this.c = nn0Var;
        this.d = qh4Var;
        this.e = map;
    }

    public final void a() {
        for (bk bkVar : this.e.values()) {
            if (bkVar != null) {
                bkVar.a();
            }
        }
    }

    public final View b() {
        return this.d.a();
    }

    public final bk a(ak akVar) {
        if (akVar != null) {
            return (bk) this.e.get(akVar.a);
        }
        return null;
    }
}
