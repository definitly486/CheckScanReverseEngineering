package yads;

import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class xh2 {
    public float a = 0.0f;
    public float b = 0.0f;
    public int c = 0;

    public final void a(int i, float f, int i2) {
        this.a = 0.0f;
        this.b = 0.0f;
        this.c = 0;
        switch (i) {
            case 1:
            case 16:
                this.a = f / 2.0f;
                break;
            case 3:
            case 48:
                break;
            case 5:
            case 80:
                this.a = f;
                break;
            case 16777216:
            case 268435456:
                int i3 = yh2.b;
                float fA = wh2.a(i2, f);
                this.a = fA;
                this.b = fA * 2.0f;
                this.c = (int) (fA / 2.0f);
                break;
            case GroupFlagsKt.HasAuxSlotFlag /* 33554432 */:
            case 536870912:
                int i4 = yh2.b;
                this.b = wh2.b(i2, f);
                break;
            case 67108864:
            case 1073741824:
                int i5 = yh2.b;
                float fC = wh2.c(i2, f);
                this.a = fC;
                this.b = fC;
                this.c = (int) (fC / 2.0f);
                break;
            default:
                defpackage.ah.f(defpackage.jh.b(i, "Invalid gravity is set: "));
                break;
        }
    }
}
