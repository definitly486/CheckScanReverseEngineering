package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class yf4 {
    public int a;
    public ArrayList<uf4> b;
    public u39 c;

    public final String toString() {
        String str = " ";
        for (int i = 0; i < this.a; i++) {
            str = str + this.b.get(i).h() + "  ";
        }
        return str;
    }
}
