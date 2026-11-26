package defpackage;

import android.content.Context;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class po7 {
    public final Context a;
    public final jc9 b;
    public final List<EditText> c;
    public final ArrayList d;

    public po7(Context context, jc9 jc9Var, List list) {
        this.a = context;
        this.b = jc9Var;
        this.c = list;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(null);
        }
        this.d = arrayList;
    }
}
