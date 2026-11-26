package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e26 {
    /* JADX WARN: Code duplicated, block: B:18:0x0033  */
    public static final void a(String str, double d) {
        String str2;
        int iHashCode = str.hashCode();
        if (iHashCode != 98696) {
            if (iHashCode != 2988422) {
                if (iHashCode == 3003607 && str.equals("asin")) {
                    str2 = "Arcsine";
                } else {
                    str2 = str;
                }
            } else if (str.equals("acos")) {
                str2 = "Arccosine";
            } else {
                str2 = str;
            }
        } else if (str.equals("cot")) {
            str2 = "Cotangent";
        } else {
            str2 = str;
        }
        wo2.a(str + "(" + d + ")", str2.concat(" is undefined for the given value."));
        throw null;
    }
}
