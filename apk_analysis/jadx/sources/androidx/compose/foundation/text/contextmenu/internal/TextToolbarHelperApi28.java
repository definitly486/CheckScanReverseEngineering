package androidx.compose.foundation.text.contextmenu.internal;

import android.R;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;
import android.view.textclassifier.TextClassification;

/* JADX INFO: loaded from: classes.dex */
final class TextToolbarHelperApi28 {
    public static final TextToolbarHelperApi28 INSTANCE = new TextToolbarHelperApi28();

    private TextToolbarHelperApi28() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addLegacyMenuItem$lambda$0(Context context, TextClassification textClassification, MenuItem menuItem) throws PendingIntent.CanceledException {
        TextClassificationHelperApi28.INSTANCE.sendLegacyIntent(context, textClassification);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addMenuItem$lambda$0(RemoteAction remoteAction, MenuItem menuItem) throws PendingIntent.CanceledException {
        TextClassificationHelperApi28.INSTANCE.sendPendingIntent(remoteAction.getActionIntent());
        return true;
    }

    public final void addLegacyMenuItem(Menu menu, int i, final Context context, final TextClassification textClassification) {
        MenuItem menuItemAdd = menu.add(R.id.textAssist, R.id.textAssist, i, textClassification.getLabel());
        menuItemAdd.setShowAsAction(2);
        menuItemAdd.setIcon(textClassification.getIcon());
        menuItemAdd.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.l
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return TextToolbarHelperApi28.addLegacyMenuItem$lambda$0(context, textClassification, menuItem);
            }
        });
    }

    public final void addMenuItem(Menu menu, int i, Context context, boolean z, final RemoteAction remoteAction) {
        MenuItem menuItemAdd = menu.add(R.id.textAssist, z ? 16908353 : 0, i, remoteAction.getTitle());
        menuItemAdd.setShowAsAction(z ? 2 : 0);
        if (z || remoteAction.shouldShowIcon()) {
            menuItemAdd.setIcon(remoteAction.getIcon().loadDrawable(context));
        }
        menuItemAdd.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: androidx.compose.foundation.text.contextmenu.internal.m
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return TextToolbarHelperApi28.addMenuItem$lambda$0(remoteAction, menuItem);
            }
        });
    }

    public final void addMenuItem(Menu menu, int i, Context context, TextClassification textClassification, int i2) {
        if (i2 < 0) {
            addLegacyMenuItem(menu, i, context, textClassification);
        } else {
            addMenuItem(menu, i, context, i2 == 0, textClassification.getActions().get(i2));
        }
    }
}
