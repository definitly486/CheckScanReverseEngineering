package defpackage;

import com.google.common.collect.j;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface ua5 {
    default void a(vv4 vv4Var, List list, List list2) {
        boolean z = false;
        boolean z2 = list != null && list.size() == vv4Var.c.size();
        j jVar = vv4Var.c;
        j jVar2 = vv4Var.d;
        o8.b(jVar.size(), "Incorrect number of required labels provided. Expected: %s", z2);
        if (list2 != null && list2.size() == jVar2.size()) {
            z = true;
        }
        o8.b(jVar2.size(), "Incorrect number of optional labels provided. Expected: %s", z);
    }

    default void b(hw4 hw4Var, long j, List<String> list, List<String> list2) {
        boolean z = false;
        boolean z2 = list != null && list.size() == hw4Var.c.size();
        j jVar = hw4Var.c;
        j jVar2 = hw4Var.d;
        o8.b(jVar.size(), "Incorrect number of required labels provided. Expected: %s", z2);
        if (list2 != null && list2.size() == jVar2.size()) {
            z = true;
        }
        o8.b(jVar2.size(), "Incorrect number of optional labels provided. Expected: %s", z);
    }
}
