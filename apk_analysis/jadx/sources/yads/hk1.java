package yads;

import android.text.Editable;
import defpackage.j59;
import defpackage.jx9;
import defpackage.nl3;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class hk1 implements i36 {
    public final /* synthetic */ ur a;
    public final /* synthetic */ qg3 b;
    public final /* synthetic */ bn1 c;
    public final /* synthetic */ tt d;
    public final /* synthetic */ String e;

    public hk1(ur urVar, qg3 qg3Var, bn1 bn1Var, tt ttVar, String str) {
        this.a = urVar;
        this.b = qg3Var;
        this.c = bn1Var;
        this.d = ttVar;
        this.e = str;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    public static final j59 a(hk1 hk1Var, nl3 nl3Var, Editable editable) {
        String string;
        Character ch;
        String string2;
        String str = "";
        if (editable != null) {
            hk1Var.getClass();
            string = editable.toString();
            if (string == null) {
                string = "";
            }
        } else {
            string = "";
        }
        ur urVar = hk1Var.a;
        if (urVar != null) {
            bn1 bn1Var = hk1Var.c;
            if (!defpackage.aa4.e(urVar.d(), string)) {
                Editable text = bn1Var.getText();
                if (text != null && (string2 = text.toString()) != null) {
                    str = string2;
                }
                urVar.a(Integer.valueOf(bn1Var.getSelectionStart()), str);
                bn1Var.setText(urVar.d());
                bn1Var.setSelection(urVar.d);
                String strD = urVar.d();
                z66 z66VarB = w56.b(hk1Var.d.b);
                String str2 = hk1Var.e;
                if (str2 != null) {
                    u66 u66VarA = z66VarB != null ? z66VarB.a(str2) : null;
                    if (u66VarA != null) {
                        u66VarA.c(strD);
                    }
                }
            }
            int size = ((ArrayList) urVar.a()).size() - 1;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i <= size; i++) {
                rr rrVar = (rr) ((ArrayList) urVar.a()).get(i);
                if ((rrVar instanceof pr) && (ch = ((pr) rrVar).a) != null) {
                    sb.append(ch);
                }
            }
            String strReplace = sb.toString().replace(',', '.');
            strReplace.getClass();
            nl3Var.invoke(strReplace);
        } else {
            qg3 qg3Var = hk1Var.b;
            if (qg3Var != null) {
                bn1 bn1Var2 = hk1Var.c;
                if (!defpackage.aa4.e(qg3Var.b, string)) {
                    if (qg3Var.a(string)) {
                        qg3Var.b = string;
                        qg3Var.c = bn1Var2.getSelectionStart();
                        nl3Var.invoke(string);
                    } else {
                        bn1Var2.setText(qg3Var.b);
                        bn1Var2.setSelection(qg3Var.c);
                    }
                }
            } else {
                nl3Var.invoke(string);
            }
        }
        return j59.a;
    }

    @Override // yads.i36
    public final void a(nl3 nl3Var) {
        bn1 bn1Var = this.c;
        jx9 jx9Var = new jx9(0, this, nl3Var);
        if (bn1Var.j == null) {
            zm1 zm1Var = new zm1(bn1Var);
            bn1Var.addTextChangedListener(zm1Var);
            bn1Var.j = zm1Var;
        }
        bn1Var.i.add(jx9Var);
    }

    @Override // yads.i36
    public final void a(Object obj) {
        String str = (String) obj;
        if (str == null) {
            str = "";
        }
        ur urVar = this.a;
        if (urVar != null) {
            bn1 bn1Var = this.c;
            urVar.a(str);
            String strD = urVar.d();
            z66 z66VarB = w56.b(this.d.b);
            String str2 = this.e;
            if (str2 != null) {
                u66 u66VarA = z66VarB != null ? z66VarB.a(str2) : null;
                if (u66VarA != null) {
                    u66VarA.c(strD);
                }
            }
            bn1Var.setText(urVar.d());
            return;
        }
        qg3 qg3Var = this.b;
        if (qg3Var != null) {
            if (!qg3Var.a(str)) {
                return;
            }
            qg3Var.b = str;
            qg3Var.c = str.length();
        }
        Editable text = this.c.getText();
        if (defpackage.aa4.e(text != null ? text.toString() : null, str)) {
            return;
        }
        this.c.setText(str);
    }
}
