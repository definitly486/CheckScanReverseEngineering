package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class d66 {
    public static f66 a(int i, String str, String str2) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        return new f66(e66.VISIBLE_AREA_TOO_SMALL, str, str2);
    }
}
