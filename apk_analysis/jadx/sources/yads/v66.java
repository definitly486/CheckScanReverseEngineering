package yads;

import androidx.recyclerview.widget.DiffUtil;

/* JADX INFO: loaded from: classes6.dex */
public final class v66 extends DiffUtil.ItemCallback {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public final boolean areContentsTheSame(Object obj, Object obj2) {
        return defpackage.aa4.e(((e76) obj).d, ((e76) obj2).d);
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public final boolean areItemsTheSame(Object obj, Object obj2) {
        return defpackage.aa4.e(((e76) obj).a, ((e76) obj2).a);
    }
}
