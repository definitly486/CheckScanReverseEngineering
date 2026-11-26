package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lg6 {
    public int a;
    public at[] b;

    public final void a(int i, at atVar) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            at atVar2 = this.b[i2];
            atVar2.getClass();
            if (aa4.g(0L, atVar.g - atVar2.g) <= 0) {
                break;
            }
            atVar2.f = i;
            this.b[i] = atVar2;
            i = i2;
        }
        this.b[i] = atVar;
        atVar.f = i;
    }

    public final void b(at atVar) {
        at atVar2;
        int i = atVar.f;
        if (i == -1) {
            fg.c("Failed requirement.");
            return;
        }
        int i2 = this.a;
        at atVar3 = this.b[i2];
        atVar3.getClass();
        atVar.f = -1;
        this.b[i2] = null;
        this.a = i2 - 1;
        if (atVar == atVar3) {
            return;
        }
        int iG = aa4.g(0L, atVar3.g - atVar.g);
        if (iG == 0) {
            this.b[i] = atVar3;
            atVar3.f = i;
            return;
        }
        if (iG >= 0) {
            a(i, atVar3);
            return;
        }
        while (true) {
            int i3 = i << 1;
            int i4 = i3 + 1;
            int i5 = this.a;
            if (i4 > i5) {
                if (i3 > i5) {
                    break;
                }
                atVar2 = this.b[i3];
                atVar2.getClass();
            } else {
                atVar2 = this.b[i3];
                atVar2.getClass();
                at atVar4 = this.b[i4];
                atVar4.getClass();
                if (aa4.g(0L, atVar4.g - atVar2.g) >= 0) {
                    atVar2 = atVar4;
                }
            }
            if (aa4.g(0L, atVar2.g - atVar3.g) <= 0) {
                break;
            }
            int i6 = atVar2.f;
            atVar2.f = i;
            this.b[i] = atVar2;
            i = i6;
        }
        this.b[i] = atVar3;
        atVar3.f = i;
    }
}
