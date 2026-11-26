package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class lz {
    private static final /* synthetic */ lz[] $VALUES;
    public static final lz BackendError;
    public static final lz Error;
    public static final lz LargeFile;
    public static final lz NewAvatarSent;

    static {
        lz lzVar = new lz("NewAvatarSent", 0);
        NewAvatarSent = lzVar;
        lz lzVar2 = new lz("Error", 1);
        Error = lzVar2;
        lz lzVar3 = new lz("BackendError", 2);
        BackendError = lzVar3;
        lz lzVar4 = new lz("LargeFile", 3);
        LargeFile = lzVar4;
        $VALUES = new lz[]{lzVar, lzVar2, lzVar3, lzVar4};
    }

    public lz() {
        throw null;
    }

    public static lz valueOf(String str) {
        return (lz) Enum.valueOf(lz.class, str);
    }

    public static lz[] values() {
        return (lz[]) $VALUES.clone();
    }
}
