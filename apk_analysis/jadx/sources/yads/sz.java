package yads;

import android.graphics.Point;
import android.view.View;
import com.tapjoy.TJAdUnitConstants;
import com.yandex.mobile.ads.R$id;
import defpackage.dp7;
import defpackage.j59;
import defpackage.k57;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class sz {
    public final tk a;
    public final zz5 b;
    public final uo c;

    public sz() {
        tk tkVar = new tk();
        zz5 zz5Var = new zz5();
        uo uoVar = new uo();
        this.a = tkVar;
        this.b = zz5Var;
        this.c = uoVar;
    }

    public static final View b(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x007a  */
    /* JADX WARN: Code duplicated, block: B:51:0x00cf A[PHI: r10
      0x00cf: PHI (r10v27 android.view.View) = (r10v7 android.view.View), (r10v12 android.view.View) binds: [B:34:0x009b, B:49:0x00cb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x011b A[PHI: r9
      0x011b: PHI (r9v31 android.view.View) = (r9v20 android.view.View), (r9v25 android.view.View) binds: [B:63:0x00f8, B:74:0x0118] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public final LinkedHashMap a(View view, Long l) {
        String string;
        String string2;
        j59 j59Var;
        Object aVar;
        Object aVar2;
        String strA;
        Object aVar3;
        Object aVar4;
        String strA2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        defpackage.b36 b36VarA = a(view);
        if (b36VarA != null) {
            View view2 = (View) b36VarA.b;
            Point point = ((yz5) b36VarA.c).a;
            if (point == null || (string = Integer.valueOf(point.x).toString()) == null) {
                string = "";
            }
            linkedHashMap.put("{CLICK_X}", string);
            if (point == null || (string2 = Integer.valueOf(point.y).toString()) == null) {
                string2 = "";
            }
            linkedHashMap.put("{CLICK_Y}", string2);
            linkedHashMap.put("{WIDTH}", String.valueOf(view2.getWidth()));
            linkedHashMap.put("{HEIGHT}", String.valueOf(view2.getHeight()));
            if (l == null) {
                j59Var = null;
            } else {
                if (l.longValue() < 0) {
                    l = null;
                }
                if (l != null) {
                    linkedHashMap.put("{CLICK_TIME}", String.valueOf(l.longValue()));
                    j59Var = j59.a;
                } else {
                    j59Var = null;
                }
            }
            if (j59Var == null) {
                linkedHashMap.put("{CLICK_TIME}", "");
            }
            tk tkVar = this.a;
            tkVar.getClass();
            try {
                aVar = view2.findViewById(R$id.monetization_ads_close);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (aVar instanceof k57.a) {
                aVar = null;
            }
            View view3 = (View) aVar;
            if (view3 == null) {
                try {
                    aVar2 = view2.findViewWithTag(TJAdUnitConstants.String.CLOSE);
                    if (aVar2 == null && (aVar2 = view2.findViewWithTag("skip_button")) == null && (aVar2 = view2.findViewWithTag("instream_skip")) == null) {
                        aVar2 = view2.findViewWithTag("yma_close_button");
                    }
                } catch (Throwable th2) {
                    aVar2 = new k57.a(th2);
                }
                if (aVar2 instanceof k57.a) {
                    aVar2 = null;
                }
                view3 = (View) aVar2;
                if (view3 == null) {
                    strA = null;
                } else {
                    strA = tkVar.a.a(view3, view2);
                }
            } else {
                strA = tkVar.a.a(view3, view2);
            }
            if (strA == null) {
                strA = "";
            }
            linkedHashMap.put("{CLOSE_LOCATION}", strA);
            tk tkVar2 = this.a;
            tkVar2.getClass();
            try {
                aVar3 = view2.findViewById(R$id.monetization_ads_feedback);
            } catch (Throwable th3) {
                aVar3 = new k57.a(th3);
            }
            if (aVar3 instanceof k57.a) {
                aVar3 = null;
            }
            View view4 = (View) aVar3;
            if (view4 == null) {
                try {
                    aVar4 = view2.findViewWithTag("feedback");
                    if (aVar4 == null) {
                        aVar4 = view2.findViewWithTag("yma_feedback");
                    }
                } catch (Throwable th4) {
                    aVar4 = new k57.a(th4);
                }
                if (aVar4 instanceof k57.a) {
                    aVar4 = null;
                }
                view4 = (View) aVar4;
                strA2 = view4 != null ? tkVar2.a.a(view4, view2) : null;
            }
            linkedHashMap.put("{FEEDBACK_LOCATION}", strA2 != null ? strA2 : "");
        }
        return linkedHashMap;
    }

    public final defpackage.b36 a(View view) {
        defpackage.b36 b36Var;
        Iterator it = dp7.h(new defpackage.b3(5), view).iterator();
        do {
            b36Var = null;
            if (!it.hasNext()) {
                break;
            }
            View view2 = (View) it.next();
            if (view2 instanceof m05) {
                this.b.getClass();
                yz5 touchRecorder = ((m05) view2).getTouchRecorder();
                if (touchRecorder != null) {
                    b36Var = new defpackage.b36(view2, touchRecorder);
                }
            } else if (view2 instanceof o05) {
                this.c.getClass();
                yz5 yz5VarA = ((o05) view2).a();
                if (yz5VarA != null) {
                    b36Var = new defpackage.b36(view2, yz5VarA);
                }
            }
        } while (b36Var == null);
        return b36Var;
    }
}
