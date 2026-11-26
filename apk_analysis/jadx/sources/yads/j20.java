package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j20 {
    public static final boolean a(List... listArr) {
        for (List list : listArr) {
            if (list != null && !list.isEmpty()) {
                return false;
            }
        }
        return true;
    }
}
