package yads;

import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.regex.PatternSyntaxException;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public final class lu4 extends ur {
    public final nl3 e;

    public lu4(nl3 nl3Var) {
        super(mu4.b);
        this.e = nl3Var;
    }

    @Override // yads.ur
    public final void a(Integer num, String str) throws JSONException {
        Character ch;
        Character ch2;
        aw5 aw5VarA = zv5.a(d(), str);
        int iIntValue = num.intValue();
        int i = aw5VarA.b;
        int i2 = iIntValue - i;
        int i3 = 0;
        if (i2 < 0) {
            i2 = 0;
        }
        aw5 aw5Var = new aw5(i2, i, aw5VarA.c);
        int size = ((ArrayList) a()).size() - 1;
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 <= size; i4++) {
            rr rrVar = (rr) ((ArrayList) a()).get(i4);
            if ((rrVar instanceof pr) && (ch2 = ((pr) rrVar).a) != null) {
                sb.append(ch2);
            }
        }
        String string = sb.toString();
        int iA = a(aw5Var, str);
        int size2 = ((ArrayList) a()).size() - 1;
        StringBuilder sb2 = new StringBuilder();
        for (int i5 = 0; i5 <= size2; i5++) {
            rr rrVar2 = (rr) ((ArrayList) a()).get(i5);
            if ((rrVar2 instanceof pr) && (ch = ((pr) rrVar2).a) != null) {
                sb2.append(ch);
            }
        }
        String string2 = sb2.toString();
        String strA = mu4.a(string2);
        if (defpackage.aa4.e(strA, this.a.a)) {
            strA = null;
        }
        if (strA == null) {
            int iB = b();
            if (aw5Var.a < iB) {
                while (iA < ((ArrayList) a()).size() && !(((rr) ((ArrayList) a()).get(iA)) instanceof pr)) {
                    iA++;
                }
                iB = Math.min(iA, d().length());
            }
            this.d = iB;
            return;
        }
        a(new sr(strA, mu4.a, this.a.c), false);
        a(string2, 0, null);
        aw5 aw5VarA2 = zv5.a(string, string2);
        int i6 = aw5VarA2.a + aw5VarA2.b;
        int i7 = 0;
        while (i3 < ((ArrayList) a()).size() && i7 < i6) {
            int i8 = i3 + 1;
            if (((ArrayList) a()).get(i3) instanceof pr) {
                i7++;
            }
            i3 = i8;
        }
        while (i3 < ((ArrayList) a()).size() && !(((rr) ((ArrayList) a()).get(i3)) instanceof pr)) {
            i3++;
        }
        this.d = i3;
    }

    @Override // yads.ur
    public final void a(String str) throws JSONException {
        String strA = mu4.a(str);
        if (defpackage.aa4.e(strA, this.a.a)) {
            strA = null;
        }
        if (strA != null) {
            a(new sr(strA, mu4.a, this.a.c), false);
            j59 j59Var = j59.a;
        }
        super.a(str);
    }

    @Override // yads.ur
    public final void a(PatternSyntaxException patternSyntaxException) {
        this.e.invoke(patternSyntaxException);
    }
}
