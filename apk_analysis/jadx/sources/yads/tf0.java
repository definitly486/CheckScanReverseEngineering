package yads;

import android.widget.ImageView;
import java.util.ArrayList;
import yads.tf0;

/* JADX INFO: loaded from: classes6.dex */
public final class tf0 {
    public final vl5 a;
    public final ArrayList b;

    public tf0(vl5 vl5Var) {
        ArrayList arrayList = new ArrayList();
        this.a = vl5Var;
        this.b = arrayList;
    }

    public final cy a(String str, ImageView imageView) {
        final xc3 xc3VarA = this.a.a(str, new sf0(imageView), 0, 0);
        cy cyVar = new cy() { // from class: b9a
            @Override // yads.cy
            public final void cancel() {
                tf0.a(xc3VarA);
            }
        };
        this.b.add(cyVar);
        return cyVar;
    }

    public static final void a(xc3 xc3Var) {
        xc3Var.a();
    }
}
