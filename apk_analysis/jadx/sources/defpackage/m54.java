package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class m54 {
    public final /* synthetic */ int a = 1;
    public Object b;
    public Object c;

    public m54(List list, Map map) {
        this.b = list;
        this.c = map;
    }

    public void a(char c) {
        StringBuilder sb = (StringBuilder) this.c;
        if (sb != null) {
            sb.append(c);
            return;
        }
        if (((String) this.b) == null) {
            this.b = String.valueOf(c);
            return;
        }
        StringBuilder sbA = ja8.a();
        this.c = sbA;
        sbA.append((String) this.b);
        this.b = null;
        ((StringBuilder) this.c).append(c);
    }

    public void b(String str) {
        StringBuilder sb = (StringBuilder) this.c;
        if (sb != null) {
            sb.append(str);
            return;
        }
        if (((String) this.b) == null) {
            this.b = str;
            return;
        }
        StringBuilder sbA = ja8.a();
        this.c = sbA;
        sbA.append((String) this.b);
        this.b = null;
        ((StringBuilder) this.c).append(str);
    }

    public boolean c() {
        return (((StringBuilder) this.c) == null && ((String) this.b) == null) ? false : true;
    }

    public void d() {
        StringBuilder sb = (StringBuilder) this.c;
        if (sb != null) {
            String[] strArr = ja8.a;
            if (sb.length() <= 8192) {
                sb.delete(0, sb.length());
                ja8.e.b(sb);
            }
            this.c = null;
        }
        this.b = null;
    }

    public String e() {
        StringBuilder sb = (StringBuilder) this.c;
        if (sb == null) {
            String str = (String) this.b;
            return str != null ? str : "";
        }
        this.b = sb.toString();
        ja8.k((StringBuilder) this.c);
        this.c = null;
        return (String) this.b;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                StringBuilder sb = (StringBuilder) this.c;
                if (sb != null) {
                    return sb.toString();
                }
                String str = (String) this.b;
                return str != null ? str : "";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ m54() {
    }
}
