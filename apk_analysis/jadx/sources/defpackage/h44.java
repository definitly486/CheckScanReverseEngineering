package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class h44 extends m {
    public final g44 a = new g44();
    public final ArrayList b = new ArrayList();

    public static class a extends n {
        @Override // defpackage.vj0
        public final bk0 a(dq2 dq2Var, dq2.a aVar) {
            if (dq2Var.g < 4 || dq2Var.h || (dq2Var.h().d() instanceof d36)) {
                return null;
            }
            bk0 bk0Var = new bk0(new h44());
            bk0Var.c = dq2Var.c + 4;
            return bk0Var;
        }
    }

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    @Override // defpackage.m, defpackage.uj0
    public final void e(CharSequence charSequence) {
        this.b.add(charSequence);
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        if (dq2Var.g >= 4) {
            return new rj0(-1, dq2Var.c + 4, false);
        }
        if (dq2Var.h) {
            return rj0.a(dq2Var.e);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0037 A[LOOP:2: B:17:0x0033->B:19:0x0037, LOOP_END] */
    @Override // defpackage.m, defpackage.uj0
    public final void h() {
        int i;
        StringBuilder sb;
        int i2;
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        do {
            size--;
            if (size >= 0) {
                CharSequence charSequence = (CharSequence) arrayList.get(size);
                int length = charSequence.length();
                i2 = 0;
                while (true) {
                    if (i2 < length) {
                        char cCharAt = charSequence.charAt(i2);
                        if (cCharAt != ' ') {
                            switch (cCharAt) {
                                case '\t':
                                case '\n':
                                case 11:
                                case '\f':
                                case '\r':
                                    break;
                            }
                        }
                        i2++;
                    } else {
                        i2 = -1;
                    }
                }
            }
            sb = new StringBuilder();
            for (i = 0; i < size + 1; i++) {
                sb.append((CharSequence) arrayList.get(i));
                sb.append('\n');
            }
            this.a.f = sb.toString();
        } while (i2 == -1);
        sb = new StringBuilder();
        while (i < size + 1) {
            sb.append((CharSequence) arrayList.get(i));
            sb.append('\n');
        }
        this.a.f = sb.toString();
    }
}
