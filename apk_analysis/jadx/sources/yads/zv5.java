package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zv5 {
    public static aw5 a(String str, String str2) {
        if (str.length() > str2.length()) {
            aw5 aw5VarA = a(str2, str);
            return new aw5(aw5VarA.a, aw5VarA.c, aw5VarA.b);
        }
        int length = str2.length() - 1;
        int length2 = str2.length() - str.length();
        int i = 0;
        while (i < length && i < str.length() && str.charAt(i) == str2.charAt(i)) {
            i++;
        }
        while (true) {
            int i2 = length - length2;
            if (i2 < i || str.charAt(i2) != str2.charAt(length)) {
                break;
            }
            length--;
        }
        int i3 = (length + 1) - i;
        return new aw5(i, i3, i3 - length2);
    }
}
