package androidx.compose.ui.platform.actionmodecallback;

import android.R;
import android.os.Build;
import defpackage.g03;
import defpackage.h03;
import defpackage.me0;

/* JADX INFO: loaded from: classes2.dex */
public enum MenuItemOption {
    Copy(R.id.copy, 0),
    Paste(R.id.paste, 1),
    Cut(R.id.cut, 2),
    SelectAll(R.id.selectAll, 3),
    Autofill(R.id.autofill, 4);

    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    private final int id;
    private final int order;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MenuItemOption.values().length];
            try {
                iArr[MenuItemOption.Copy.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MenuItemOption.Paste.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MenuItemOption.Cut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MenuItemOption.SelectAll.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MenuItemOption.Autofill.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    MenuItemOption(int i, int i2) {
        this.id = i;
        this.order = i2;
    }

    public static g03<MenuItemOption> getEntries() {
        return $ENTRIES;
    }

    public final int getId() {
        return this.id;
    }

    public final int getOrder() {
        return this.order;
    }

    public final int getTitleResource() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return R.string.copy;
        }
        if (i == 2) {
            return R.string.paste;
        }
        if (i == 3) {
            return R.string.cut;
        }
        if (i == 4) {
            return R.string.selectAll;
        }
        if (i == 5) {
            return Build.VERSION.SDK_INT <= 26 ? androidx.compose.ui.R.string.androidx_compose_ui_autofill : R.string.autofill;
        }
        me0.e();
        return 0;
    }
}
