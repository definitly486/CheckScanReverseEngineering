package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class k79<Receiver> extends cq5<Receiver> {
    public final Integer c;
    public final Integer d;
    public final hs<Receiver, Integer> e;
    public final boolean f;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public k79(Integer num, Integer num2, hs<? super Receiver, Integer> hsVar, String str, boolean z) {
        hsVar.getClass();
        str.getClass();
        Integer num3 = num.equals(num2) ? num : null;
        super(num3, str);
        this.c = num;
        this.d = num2;
        this.e = hsVar;
        this.f = z;
        if (num3 == null || new y74(1, 9, 1).c(num3.intValue())) {
            return;
        }
        kg.f("Invalid length for field ", str, ": ", num3);
        throw null;
    }

    @Override // defpackage.cq5
    public final dq5 a(Receiver receiver, CharSequence charSequence, int i, int i2) {
        Integer numValueOf;
        Integer num = this.d;
        if (num != null && i2 - i > num.intValue()) {
            return new dq5.d(num.intValue());
        }
        int i3 = i2 - i;
        Integer num2 = this.c;
        if (i3 < num2.intValue()) {
            return new dq5.c(num2.intValue());
        }
        int iCharAt = 0;
        while (true) {
            if (i >= i2) {
                numValueOf = Integer.valueOf(iCharAt);
                break;
            }
            iCharAt = (iCharAt * 10) + (charSequence.charAt(i) - '0');
            if (iCharAt < 0) {
                numValueOf = null;
                break;
            }
            i++;
        }
        if (numValueOf == null) {
            return dq5.b.a;
        }
        boolean z = this.f;
        int iIntValue = numValueOf.intValue();
        if (z) {
            iIntValue = -iIntValue;
        }
        Integer numC = this.e.c(receiver, Integer.valueOf(iIntValue));
        if (numC == null) {
            return null;
        }
        return new dq5.a(numC);
    }
}
