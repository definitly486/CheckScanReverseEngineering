package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public enum TJEntryPoint {
    ENTRY_POINT_UNKNOWN(null),
    ENTRY_POINT_OTHER("other"),
    ENTRY_POINT_MAIN_MENU("main_menu"),
    ENTRY_POINT_HUD("hud"),
    ENTRY_POINT_EXIT("exit"),
    ENTRY_POINT_FAIL("fail"),
    ENTRY_POINT_COMPLETE("complete"),
    ENTRY_POINT_INBOX("inbox"),
    ENTRY_POINT_INIT("initialisation"),
    ENTRY_POINT_STORE("store");

    public final String a;

    TJEntryPoint(String str) {
        this.a = str;
    }

    public static TJEntryPoint fromOrdinal(int i) {
        return values()[i];
    }

    public static TJEntryPoint fromString(String str) {
        str.getClass();
        switch (str) {
            case "complete":
                return ENTRY_POINT_COMPLETE;
            case "main_menu":
                return ENTRY_POINT_MAIN_MENU;
            case "hud":
                return ENTRY_POINT_HUD;
            case "exit":
                return ENTRY_POINT_EXIT;
            case "fail":
                return ENTRY_POINT_FAIL;
            case "inbox":
                return ENTRY_POINT_INBOX;
            case "other":
                return ENTRY_POINT_OTHER;
            case "store":
                return ENTRY_POINT_STORE;
            case "initialisation":
                return ENTRY_POINT_INIT;
            default:
                return ENTRY_POINT_UNKNOWN;
        }
    }

    public String getValue() {
        return this.a;
    }
}
