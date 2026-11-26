package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class bea {
    public final boolean a;
    public final String b;

    public bea(String str, String str2) {
        str.getClass();
        switch (str) {
            case "vpaidInit":
            case "close":
            case "setOrientationProperties":
            case "setResizeProperties":
            case "vpaidEvent":
            case "playheadEvent":
                this.a = false;
                this.b = str;
                break;
            case "playVideo":
            case "expand":
                this.a = "inline".equals(str2);
                this.b = str;
                break;
            case "resize":
            case "createCalendarEvent":
            case "open":
            case "storePicture":
                this.a = true;
                this.b = str;
                break;
            default:
                this.a = false;
                this.b = "";
                break;
        }
    }

    public final String toString() {
        return this.b;
    }
}
