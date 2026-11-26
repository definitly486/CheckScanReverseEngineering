package defpackage;

import com.google.firebase.inject.Provider;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class a27 {
    public final HashMap a = new HashMap();

    public static class a {
        public final Provider a;

        public a(Provider provider) {
            this.a = provider;
        }
    }

    public a27(Set<a> set) {
        for (a aVar : set) {
            HashMap map = this.a;
            aVar.getClass();
            map.put(g72.class, aVar.a);
        }
    }
}
