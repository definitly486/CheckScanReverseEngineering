package defpackage;

import com.my.target.q;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class lia {
    public Boolean A;
    public Boolean B;
    public Boolean C;
    public Boolean D;
    public Boolean E;
    public Boolean F;
    public aga G;
    public q H;
    public final String a;
    public ArrayList e;
    public ArrayList f;
    public String g;
    public String h;
    public k5a i;
    public String j;
    public int k;
    public boolean r;
    public boolean s;
    public Boolean u;
    public Boolean v;
    public Boolean w;
    public Boolean x;
    public Boolean y;
    public Boolean z;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public final n4a d = new n4a(pp9.d);
    public int l = -1;
    public int m = -1;
    public int n = -1;
    public int o = -1;
    public float p = -1.0f;
    public float q = -1.0f;
    public float t = -1.0f;

    public lia(String str, String str2) {
        this.a = str;
    }

    public final ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.c;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            m2a m2aVar = (m2a) obj;
            if (str.equals(m2aVar.a)) {
                arrayList.add(m2aVar);
            }
        }
        return arrayList;
    }
}
