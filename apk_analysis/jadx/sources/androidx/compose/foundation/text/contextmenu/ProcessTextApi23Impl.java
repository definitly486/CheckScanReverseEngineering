package androidx.compose.foundation.text.contextmenu;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.compose.ui.text.TextRange;
import androidx.webkit.internal.AssetHelper;
import defpackage.gm3;
import defpackage.j59;
import defpackage.ki3;
import defpackage.ng6;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessTextApi23Impl {
    public static final ProcessTextApi23Impl INSTANCE = new ProcessTextApi23Impl();
    private static nl3<? super Context, ? extends List<? extends ResolveInfo>> processTextActivitiesQuery = new ki3(1);
    private static gm3<? super Context, ? super ResolveInfo, ? super Boolean, ? super CharSequence, ? super TextRange, j59> onClickProcessTextItem = new ng6();
    public static final int $stable = 8;

    private ProcessTextApi23Impl() {
    }

    private final Intent createProcessTextIntent() {
        return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(AssetHelper.DEFAULT_MIME_TYPE);
    }

    public static /* synthetic */ void getOnClickProcessTextItem$annotations() {
    }

    public static /* synthetic */ void getProcessTextActivitiesQuery$annotations() {
    }

    private final boolean hasPermission(ResolveInfo resolveInfo, Context context) {
        return context.getPackageName().equals(resolveInfo.activityInfo.packageName) || hasPermission(resolveInfo.activityInfo, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onClickProcessTextItem$lambda$0(Context context, ResolveInfo resolveInfo, boolean z, CharSequence charSequence, TextRange textRange) {
        String string = charSequence.subSequence(TextRange.m8489getMinimpl(textRange.m8495unboximpl()), TextRange.m8488getMaximpl(textRange.m8495unboximpl())).toString();
        Intent intentCreateProcessTextIntentForResolveInfo = INSTANCE.createProcessTextIntentForResolveInfo(resolveInfo, z);
        intentCreateProcessTextIntentForResolveInfo.putExtra("android.intent.extra.PROCESS_TEXT", string);
        context.startActivity(intentCreateProcessTextIntentForResolveInfo);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List processTextActivitiesQuery$lambda$0(Context context) {
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(INSTANCE.createProcessTextIntent(), 0);
        ArrayList arrayList = new ArrayList(listQueryIntentActivities.size());
        int size = listQueryIntentActivities.size();
        for (int i = 0; i < size; i++) {
            ResolveInfo resolveInfo = listQueryIntentActivities.get(i);
            if (INSTANCE.hasPermission(resolveInfo, context)) {
                arrayList.add(resolveInfo);
            }
        }
        return arrayList;
    }

    public final Intent createProcessTextIntentForResolveInfo(ResolveInfo resolveInfo, boolean z) {
        Intent intentPutExtra = createProcessTextIntent().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", z);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        return intentPutExtra.setClassName(activityInfo.packageName, activityInfo.name);
    }

    public final gm3<Context, ResolveInfo, Boolean, CharSequence, TextRange, j59> getOnClickProcessTextItem() {
        return onClickProcessTextItem;
    }

    public final nl3<Context, List<ResolveInfo>> getProcessTextActivitiesQuery() {
        return processTextActivitiesQuery;
    }

    public final List<ResolveInfo> queryProcessTextActivities(Context context) {
        return (List) processTextActivitiesQuery.invoke(context);
    }

    public final void setOnClickProcessTextItem(gm3<? super Context, ? super ResolveInfo, ? super Boolean, ? super CharSequence, ? super TextRange, j59> gm3Var) {
        onClickProcessTextItem = gm3Var;
    }

    public final void setProcessTextActivitiesQuery(nl3<? super Context, ? extends List<? extends ResolveInfo>> nl3Var) {
        processTextActivitiesQuery = nl3Var;
    }

    private final boolean hasPermission(ActivityInfo activityInfo, Context context) {
        if (!activityInfo.exported) {
            return false;
        }
        String str = activityInfo.permission;
        return str == null || context.checkSelfPermission(str) == 0;
    }
}
