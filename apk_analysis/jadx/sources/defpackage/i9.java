package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class i9 implements b78 {
    @Override // defpackage.b78
    public final <View extends jh5> void a(List<wd9<View>> list, wd9<View> wd9Var) {
    }

    @Override // defpackage.b78
    public final <View extends jh5> void b(List<wd9<View>> list, wd9<View> wd9Var) {
        Iterator<wd9<View>> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getClass() == wd9Var.getClass()) {
                it.remove();
                break;
            }
        }
        list.add(wd9Var);
    }
}
