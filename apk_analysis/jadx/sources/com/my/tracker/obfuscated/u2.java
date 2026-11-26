package com.my.tracker.obfuscated;

/* JADX INFO: loaded from: classes4.dex */
public final class u2 {
    private final long a;
    private final i2 b;
    private final i2[] c;
    private final y[] d;

    public u2(long j, i2 i2Var, i2[] i2VarArr, y[] yVarArr) {
        this.a = j;
        this.b = i2Var;
        this.c = i2VarArr;
        this.d = yVarArr;
    }

    public i2 a() {
        return this.b;
    }

    public y[] b() {
        return this.d;
    }

    public long c() {
        return this.a;
    }

    public i2[] d() {
        return this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.b != null) {
            sb.append("|-----\n| ");
            sb.append(this.b);
            sb.append("\n");
        }
        i2[] i2VarArr = this.c;
        if (i2VarArr != null && i2VarArr.length > 0) {
            sb.append("|-----\n");
            for (i2 i2Var : this.c) {
                sb.append("| ");
                sb.append(i2Var);
                sb.append("\n");
            }
        }
        StringBuilder sb2 = new StringBuilder();
        y[] yVarArr = this.d;
        if (yVarArr != null && yVarArr.length > 0) {
            sb2.append("|-----\n");
            for (y yVar : this.d) {
                sb2.append("| ");
                sb2.append(yVar);
                sb2.append("\n");
            }
        }
        return "[TimeSpentTickDTO]\n| timestamp = " + this.a + "\n" + ((Object) sb) + ((Object) sb2) + "[/TimeSpentTickDTO]\n";
    }
}
