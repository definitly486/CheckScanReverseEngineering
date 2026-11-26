package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class a00 {
    public static String a(zz zzVar) {
        if (zzVar instanceof uz) {
            String str = ((uz) zzVar).a.h;
            return str == null ? "unknown" : str;
        }
        if (zzVar instanceof vz) {
            return "default";
        }
        if (zzVar instanceof tz) {
            return "custom";
        }
        if (zzVar instanceof wz) {
            return "error";
        }
        if (zzVar instanceof xz) {
            return "browser";
        }
        if (zzVar instanceof yz) {
            return "internal_browser";
        }
        defpackage.me0.e();
        return null;
    }
}
