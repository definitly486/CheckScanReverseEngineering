package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class m35 {
    public final Map a;

    public m35(Map map) {
        this.a = defpackage.n05.n(map);
    }

    public final void a(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return;
        }
        this.a.put(str, str2);
    }
}
