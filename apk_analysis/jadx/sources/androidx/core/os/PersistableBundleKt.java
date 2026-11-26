package androidx.core.os;

import android.os.PersistableBundle;
import defpackage.b36;
import defpackage.ul2;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class PersistableBundleKt {
    @ul2
    public static final PersistableBundle persistableBundleOf(b36<String, ? extends Object>... b36VarArr) {
        PersistableBundle persistableBundle = new PersistableBundle(b36VarArr.length);
        for (b36<String, ? extends Object> b36Var : b36VarArr) {
            PersistableBundleApi21ImplKt.putValue(persistableBundle, b36Var.b, b36Var.c);
        }
        return persistableBundle;
    }

    public static final PersistableBundle toPersistableBundle(Map<String, ? extends Object> map) {
        PersistableBundle persistableBundle = new PersistableBundle(map.size());
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            PersistableBundleApi21ImplKt.putValue(persistableBundle, entry.getKey(), entry.getValue());
        }
        return persistableBundle;
    }

    public static final PersistableBundle persistableBundleOf() {
        return new PersistableBundle(0);
    }
}
