package androidx.camera.view;

import defpackage.fg;
import defpackage.jh;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
final class FlashModeConverter {
    private FlashModeConverter() {
    }

    public static String nameOf(int i) {
        if (i == 0) {
            return "AUTO";
        }
        if (i == 1) {
            return "ON";
        }
        if (i == 2) {
            return "OFF";
        }
        fg.c(jh.b(i, "Unknown flash mode "));
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int valueOf(String str) {
        if (str == null) {
            o2.d("name cannot be null");
            return 0;
        }
        byte b = -1;
        switch (str.hashCode()) {
            case 2527:
                if (str.equals("ON")) {
                    b = 0;
                }
                break;
            case 78159:
                if (str.equals("OFF")) {
                    b = 1;
                }
                break;
            case 2020783:
                if (str.equals("AUTO")) {
                    b = 2;
                }
                break;
        }
        switch (b) {
            case 0:
                return 1;
            case 1:
                return 2;
            default:
                fg.c("Unknown flash mode name ".concat(str));
            case 2:
                return 0;
        }
    }
}
