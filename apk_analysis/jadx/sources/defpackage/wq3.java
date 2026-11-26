package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.collection.ArrayMap;
import com.bumptech.glide.Registry;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class wq3 extends ContextWrapper {
    public static final ip3 i = new ip3();
    public final pr a;
    public final ar3 b;
    public final m24 c;
    public final List<o37<Object>> d;
    public final ArrayMap e;
    public final kz2 f;
    public final yq3 g;
    public s37 h;

    public wq3(Context context, pr prVar, q17 q17Var, m24 m24Var, rq3 rq3Var, ArrayMap arrayMap, List list, kz2 kz2Var, yq3 yq3Var) {
        super(context.getApplicationContext());
        this.a = prVar;
        this.c = m24Var;
        this.d = list;
        this.e = arrayMap;
        this.f = kz2Var;
        this.g = yq3Var;
        this.b = new ar3(q17Var);
    }

    public final Registry a() {
        return (Registry) this.b.get();
    }
}
