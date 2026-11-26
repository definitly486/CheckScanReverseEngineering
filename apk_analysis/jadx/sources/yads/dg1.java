package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class dg1 implements qv5 {
    public final tq3 a;

    public dg1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        List listB;
        Object objA;
        fg1 fg1Var = (fg1) xq3Var;
        zw2 zw2Var = fg1Var.a;
        tq3 tq3Var = this.a;
        defpackage.cl4 cl4Var = tq3Var.G3;
        defpackage.cl4 cl4Var2 = tq3Var.E3;
        if (zw2Var.b && jSONObject.has(TJAdUnitConstants.String.ARGUMENTS)) {
            listB = wq3.b(ys4Var, jSONObject, TJAdUnitConstants.String.ARGUMENTS, cl4Var2);
        } else {
            int i = zw2Var.a;
            if (i == 2) {
                List list = (List) ((yw2) zw2Var).c;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                qv5 qv5Var = (qv5) cl4Var.getValue();
                for (int i2 = 0; i2 < size; i2++) {
                    try {
                        objA = qv5Var.a(ys4Var, (xq3) list.get(i2), jSONObject);
                    } catch (ft4 e) {
                        ys4Var.a().b(e);
                        objA = null;
                    }
                    if (objA != null) {
                        arrayList.add(objA);
                    }
                }
                listB = arrayList;
            } else {
                if (i != 3) {
                    throw gt4.a(TJAdUnitConstants.String.ARGUMENTS, jSONObject);
                }
                listB = wq3.b(ys4Var, jSONObject, ((xw2) zw2Var).c, cl4Var2);
            }
        }
        return new vf1(listB, (String) qq3.a(fg1Var.b, jSONObject, TtmlNode.TAG_BODY), (String) qq3.a(fg1Var.c, jSONObject, "name", uq3.b, eg1.a), (fd1) qq3.a(fg1Var.d, jSONObject, "return_type", fd1.d, uq3.a));
    }
}
