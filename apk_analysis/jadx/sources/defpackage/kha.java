package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class kha extends ao9 {
    public final ArrayList R;
    public h14 S;
    public String T;
    public String U;
    public String V;
    public sda W;
    public boolean X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public boolean b0;
    public boolean c0;
    public boolean d0;
    public boolean e0;
    public float f0;
    public float g0;
    public xha h0;

    public kha(pp9 pp9Var) {
        super(pp9Var);
        this.R = new ArrayList();
        new ArrayList();
        this.T = "Close";
        this.U = "Replay";
        this.V = "Ad can be skipped after %ds";
        this.X = false;
        this.Y = true;
        this.Z = true;
        this.a0 = true;
        this.b0 = true;
        this.c0 = true;
        this.d0 = false;
        this.e0 = true;
        this.f0 = 10.0f;
        this.g0 = 5.0f;
    }

    @Override // defpackage.ao9
    public final int c() {
        xha xhaVar = this.h0;
        if (xhaVar != null) {
            return xhaVar.b;
        }
        return 0;
    }

    @Override // defpackage.ao9
    public final String e() {
        sda sdaVar = this.W;
        return sdaVar != null ? sdaVar.a : this.G;
    }

    @Override // defpackage.ao9
    public final int j() {
        xha xhaVar = this.h0;
        if (xhaVar != null) {
            return xhaVar.c;
        }
        return 0;
    }
}
