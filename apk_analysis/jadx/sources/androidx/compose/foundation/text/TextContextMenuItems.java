package androidx.compose.foundation.text;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import defpackage.g03;
import defpackage.h03;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'Cut' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuItems {
    private static final /* synthetic */ g03 $ENTRIES;
    private static final /* synthetic */ TextContextMenuItems[] $VALUES;
    public static final TextContextMenuItems Autofill;
    public static final TextContextMenuItems Copy;
    public static final TextContextMenuItems Cut;
    public static final TextContextMenuItems Paste;
    public static final TextContextMenuItems SelectAll;
    private final int drawableId;
    private final Object key;
    private final int stringId;

    private static final /* synthetic */ TextContextMenuItems[] $values() {
        return new TextContextMenuItems[]{Cut, Copy, Paste, SelectAll, Autofill};
    }

    static {
        TextContextMenuKeys textContextMenuKeys = TextContextMenuKeys.INSTANCE;
        Object cutKey = textContextMenuKeys.getCutKey();
        ContextMenuStrings.Companion companion = ContextMenuStrings.Companion;
        int iM2488getCut9Hzcbyc = companion.m2488getCut9Hzcbyc();
        ContextMenuIcons.Companion companion2 = ContextMenuIcons.Companion;
        Cut = new TextContextMenuItems("Cut", 0, cutKey, iM2488getCut9Hzcbyc, companion2.m2475getActionModeCutDrawable3I4p1mQ());
        Copy = new TextContextMenuItems("Copy", 1, textContextMenuKeys.getCopyKey(), companion.m2487getCopy9Hzcbyc(), companion2.m2474getActionModeCopyDrawable3I4p1mQ());
        Paste = new TextContextMenuItems("Paste", 2, textContextMenuKeys.getPasteKey(), companion.m2489getPaste9Hzcbyc(), companion2.m2476getActionModePasteDrawable3I4p1mQ());
        SelectAll = new TextContextMenuItems("SelectAll", 3, textContextMenuKeys.getSelectAllKey(), companion.m2490getSelectAll9Hzcbyc(), companion2.m2477getActionModeSelectAllDrawable3I4p1mQ());
        Autofill = new TextContextMenuItems("Autofill", 4, textContextMenuKeys.getAutofillKey(), companion.m2486getAutofill9Hzcbyc(), companion2.m2478getID_NULL3I4p1mQ());
        TextContextMenuItems[] textContextMenuItemsArr$values = $values();
        $VALUES = textContextMenuItemsArr$values;
        $ENTRIES = h03.a(textContextMenuItemsArr$values);
    }

    private TextContextMenuItems(String str, int i, Object obj, int i2, int i3) {
        super(str, i);
        this.key = obj;
        this.stringId = i2;
        this.drawableId = i3;
    }

    public static g03<TextContextMenuItems> getEntries() {
        return $ENTRIES;
    }

    public static TextContextMenuItems valueOf(String str) {
        return (TextContextMenuItems) Enum.valueOf(TextContextMenuItems.class, str);
    }

    public static TextContextMenuItems[] values() {
        return (TextContextMenuItems[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: getDrawableId-3I4p1mQ, reason: not valid java name */
    public final int m2588getDrawableId3I4p1mQ() {
        return this.drawableId;
    }

    public final Object getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: getStringId-9Hzcbyc, reason: not valid java name */
    public final int m2589getStringId9Hzcbyc() {
        return this.stringId;
    }

    public final String resolvedString(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(479426150, i, -1, "androidx.compose.foundation.text.TextContextMenuItems.resolvedString (CommonContextMenuArea.kt:178)");
        }
        String strM2491getStringtk4Tqcs = ContextMenuStrings_androidKt.m2491getStringtk4Tqcs(this.stringId, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return strM2491getStringtk4Tqcs;
    }
}
