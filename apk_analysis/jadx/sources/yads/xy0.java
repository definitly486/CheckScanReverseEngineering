package yads;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class xy0 implements yy0 {
    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (!(ry0Var instanceof fy0)) {
            return false;
        }
        String str2 = (String) ((fy0) ry0Var).a.a.a(fs2Var);
        View viewFindViewWithTag = vq0Var.findViewWithTag(str2);
        if (viewFindViewWithTag == null) {
            Set setEntrySet = ((xb2) vq0Var.o.a.L.getValue()).h.entrySet();
            ArrayList arrayList = new ArrayList();
            Iterator it = setEntrySet.iterator();
            while (it.hasNext()) {
                View contentView = ((wz5) ((Map.Entry) it.next()).getValue()).d.getContentView();
                if (contentView != null) {
                    arrayList.add(contentView);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    viewFindViewWithTag = null;
                    break;
                }
                View viewFindViewWithTag2 = ((View) it2.next()).findViewWithTag(str2);
                if (viewFindViewWithTag2 != null) {
                    viewFindViewWithTag = viewFindViewWithTag2;
                    break;
                }
            }
            if (viewFindViewWithTag == null) {
                return true;
            }
        }
        viewFindViewWithTag.requestFocus();
        if (!(viewFindViewWithTag instanceof bn1)) {
            return true;
        }
        o01.a((bn1) viewFindViewWithTag);
        return true;
    }
}
