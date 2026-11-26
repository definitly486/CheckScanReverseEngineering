package androidx.compose.foundation.text.contextmenu.builder;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuBuilderScope {
    public static final int $stable = 8;
    private final MutableObjectList<TextContextMenuComponent> components;
    private final MutableObjectList<nl3<TextContextMenuComponent, Boolean>> filters;

    public TextContextMenuBuilderScope() {
        int i = 0;
        int i2 = 1;
        jh2 jh2Var = null;
        this.components = new MutableObjectList<>(i, i2, jh2Var);
        this.filters = new MutableObjectList<>(i, i2, jh2Var);
    }

    public final void addComponent$foundation(TextContextMenuComponent textContextMenuComponent) {
        this.components.add(textContextMenuComponent);
    }

    public final void addFilter$foundation(nl3<? super TextContextMenuComponent, Boolean> nl3Var) {
        this.filters.add(nl3Var);
    }

    public final TextContextMenuData build$foundation() {
        MutableObjectList mutableObjectList = new MutableObjectList(0, 1, false ? 1 : 0);
        MutableObjectList<TextContextMenuComponent> mutableObjectList2 = this.components;
        Object[] objArr = mutableObjectList2.content;
        int i = mutableObjectList2._size;
        int i2 = 0;
        boolean z = true;
        TextContextMenuComponent textContextMenuComponent = null;
        while (i2 < i) {
            TextContextMenuComponent textContextMenuComponent2 = (TextContextMenuComponent) objArr[i2];
            if (!z || textContextMenuComponent2 != TextContextMenuSeparator.INSTANCE) {
                if (TextContextMenuBuilderScopeKt.isSeparator(textContextMenuComponent2) && TextContextMenuBuilderScopeKt.isSeparator(textContextMenuComponent)) {
                    z = false;
                } else {
                    if (!TextContextMenuBuilderScopeKt.isSeparator(textContextMenuComponent2)) {
                        MutableObjectList<nl3<TextContextMenuComponent, Boolean>> mutableObjectList3 = this.filters;
                        Object[] objArr2 = mutableObjectList3.content;
                        int i3 = mutableObjectList3._size;
                        int i4 = 0;
                        while (true) {
                            if (i4 < i3) {
                                if (((Boolean) ((nl3) objArr2[i4]).invoke(textContextMenuComponent2)).booleanValue()) {
                                    i4++;
                                } else {
                                    z = false;
                                }
                            }
                        }
                    }
                    mutableObjectList.add(textContextMenuComponent2);
                    z = false;
                    textContextMenuComponent = textContextMenuComponent2;
                }
            }
            i2++;
            z = z;
        }
        if (TextContextMenuBuilderScopeKt.isSeparator((TextContextMenuComponent) (mutableObjectList.isEmpty() ? null : mutableObjectList.content[mutableObjectList._size - 1]))) {
            mutableObjectList.removeAt(mutableObjectList._size - 1);
        }
        return new TextContextMenuData(mutableObjectList.asList());
    }

    public final void separator() {
        this.components.add(TextContextMenuSeparator.INSTANCE);
    }
}
