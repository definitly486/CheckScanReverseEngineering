package yads;

import android.content.Context;
import android.widget.ListView;
import androidx.appcompat.R;
import androidx.appcompat.widget.ListPopupWindow;

/* JADX INFO: loaded from: classes6.dex */
public final class mi5 extends ListPopupWindow {
    public final Context a;
    public final li5 b;

    public mi5(Context context) {
        super(context, null, R.attr.listPopupWindowStyle);
        this.a = context;
        this.b = new li5(this);
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    public final int getInputMethodMode() {
        return 1;
    }

    @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.view.menu.ShowableListMenu
    public final void show() {
        if (getListView() == null) {
            super.show();
            ListView listView = getListView();
            if (listView != null) {
                listView.setChoiceMode(1);
            }
        }
        super.show();
    }
}
