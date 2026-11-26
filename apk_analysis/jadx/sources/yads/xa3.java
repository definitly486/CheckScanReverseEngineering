package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class xa3 extends dr {
    public final SSLSocketFactory a;

    public xa3(SSLSocketFactory sSLSocketFactory) {
        this.a = sSLSocketFactory;
    }

    public static ArrayList a(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new q83((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }
}
