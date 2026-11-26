package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class vt6 {
    private static final /* synthetic */ vt6[] $VALUES;
    public static final vt6 New;
    public static final vt6 Reject;
    public static final vt6 ScreenshotSend;
    public static final vt6 Send;
    public static final vt6 ShowLate;
    public static final vt6 WaitSending;

    static {
        vt6 vt6Var = new vt6("New", 0);
        New = vt6Var;
        vt6 vt6Var2 = new vt6("WaitSending", 1);
        WaitSending = vt6Var2;
        vt6 vt6Var3 = new vt6("Reject", 2);
        Reject = vt6Var3;
        vt6 vt6Var4 = new vt6("ShowLate", 3);
        ShowLate = vt6Var4;
        vt6 vt6Var5 = new vt6("Send", 4);
        Send = vt6Var5;
        vt6 vt6Var6 = new vt6("ScreenshotSend", 5);
        ScreenshotSend = vt6Var6;
        $VALUES = new vt6[]{vt6Var, vt6Var2, vt6Var3, vt6Var4, vt6Var5, vt6Var6};
    }

    public vt6() {
        throw null;
    }

    public static vt6 valueOf(String str) {
        return (vt6) Enum.valueOf(vt6.class, str);
    }

    public static vt6[] values() {
        return (vt6[]) $VALUES.clone();
    }
}
