package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class sr7 {
    public final ArrayList a;
    public PointF b;
    public boolean c;

    public sr7(PointF pointF, boolean z, List<q62> list) {
        this.b = pointF;
        this.c = z;
        this.a = new ArrayList(list);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapeData{numCurves=");
        sb.append(this.a.size());
        sb.append("closed=");
        return sg.d(sb, this.c, '}');
    }

    public sr7() {
        this.a = new ArrayList();
    }
}
