package androidx.compose.foundation.text.contextmenu;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.text.contextmenu.ProcessText_androidKt;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope_androidKt;
import androidx.compose.foundation.text.contextmenu.data.ProcessTextKey;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.ui.text.TextRange;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessText_androidKt {
    /* JADX INFO: renamed from: addProcessedTextContextMenuItems-UAq72N0, reason: not valid java name */
    public static final void m2634addProcessedTextContextMenuItemsUAq72N0(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, final boolean z, final CharSequence charSequence, final long j) {
        if (!ComposeFoundationFlags.isSmartSelectionEnabled || TextRange.m8485getCollapsedimpl(j) || charSequence.length() == 0) {
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        final Context context2 = context;
        List<ResolveInfo> listQueryProcessTextActivities = ProcessTextApi23Impl.INSTANCE.queryProcessTextActivities(context2);
        if (listQueryProcessTextActivities.isEmpty()) {
            return;
        }
        textContextMenuBuilderScope.separator();
        int size = listQueryProcessTextActivities.size();
        int i = 0;
        while (i < size) {
            final ResolveInfo resolveInfo = listQueryProcessTextActivities.get(i);
            TextContextMenuBuilderScope_androidKt.item$default(textContextMenuBuilderScope, new ProcessTextKey(i), resolveInfo.loadLabel(packageManager).toString(), 0, new nl3() { // from class: og6
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return ProcessText_androidKt.addProcessedTextContextMenuItems_UAq72N0$lambda$0$0(context2, resolveInfo, z, charSequence, j, (TextContextMenuSession) obj);
                }
            }, 4, null);
            i++;
            context2 = context;
        }
        textContextMenuBuilderScope.separator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addProcessedTextContextMenuItems_UAq72N0$lambda$0$0(Context context, ResolveInfo resolveInfo, boolean z, CharSequence charSequence, long j, TextContextMenuSession textContextMenuSession) {
        ProcessTextApi23Impl.INSTANCE.getOnClickProcessTextItem().invoke(context, resolveInfo, Boolean.valueOf(z), charSequence, TextRange.m8479boximpl(j));
        textContextMenuSession.close();
        return j59.a;
    }
}
