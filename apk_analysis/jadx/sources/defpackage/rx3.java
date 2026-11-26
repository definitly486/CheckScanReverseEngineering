package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class rx3 extends m {
    public static final Pattern[][] e = {new Pattern[]{null, null}, new Pattern[]{Pattern.compile("^<(?:script|pre|style)(?:\\s|>|$)", 2), Pattern.compile("</(?:script|pre|style)>", 2)}, new Pattern[]{Pattern.compile("^<!--"), Pattern.compile("-->")}, new Pattern[]{Pattern.compile("^<[?]"), Pattern.compile("\\?>")}, new Pattern[]{Pattern.compile("^<![A-Z]"), Pattern.compile(">")}, new Pattern[]{Pattern.compile("^<!\\[CDATA\\["), Pattern.compile("\\]\\]>")}, new Pattern[]{Pattern.compile("^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)", 2), null}, new Pattern[]{Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$", 2), null}};
    public final Pattern b;
    public final qx3 a = new qx3();
    public boolean c = false;
    public qj0 d = new qj0();

    public static class a extends n {
        @Override // defpackage.vj0
        public final bk0 a(dq2 dq2Var, dq2.a aVar) {
            int i = dq2Var.e;
            CharSequence charSequence = dq2Var.a;
            if (dq2Var.g >= 4 || charSequence.charAt(i) != '<') {
                return null;
            }
            for (int i2 = 1; i2 <= 7; i2++) {
                if (i2 != 7 || !(aVar.a.d() instanceof d36)) {
                    Pattern[] patternArr = rx3.e[i2];
                    Pattern pattern = patternArr[0];
                    Pattern pattern2 = patternArr[1];
                    if (pattern.matcher(charSequence.subSequence(i, charSequence.length())).find()) {
                        bk0 bk0Var = new bk0(new rx3(pattern2));
                        bk0Var.b = dq2Var.b;
                        return bk0Var;
                    }
                }
            }
            return null;
        }
    }

    public rx3(Pattern pattern) {
        this.b = pattern;
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.m, defpackage.uj0
    public final void e(CharSequence charSequence) {
        qj0 qj0Var = this.d;
        StringBuilder sb = qj0Var.a;
        if (qj0Var.b != 0) {
            sb.append('\n');
        }
        sb.append(charSequence);
        qj0Var.b++;
        Pattern pattern = this.b;
        if (pattern == null || !pattern.matcher(charSequence).find()) {
            return;
        }
        this.c = true;
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        if (this.c) {
            return null;
        }
        if (dq2Var.h && this.b == null) {
            return null;
        }
        return rj0.a(dq2Var.b);
    }

    @Override // defpackage.m, defpackage.uj0
    public final void h() {
        StringBuilder sb = this.d.a;
        this.d = null;
    }
}
