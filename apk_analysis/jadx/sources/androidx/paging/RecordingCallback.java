package androidx.paging;

import defpackage.ah;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.w74;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RecordingCallback extends PagedList.Callback {
    private static final int Changed = 0;
    public static final Companion Companion = new Companion(null);
    private static final int Inserted = 1;
    private static final int Removed = 2;
    private final List<Integer> list = new ArrayList();

    public final void dispatchRecordingTo(PagedList.Callback callback) {
        callback.getClass();
        w74 w74VarM = kx6.m(3, kx6.n(0, this.list.size()));
        int i = w74VarM.b;
        int i2 = w74VarM.c;
        int i3 = w74VarM.d;
        if ((i3 > 0 && i <= i2) || (i3 < 0 && i2 <= i)) {
            while (true) {
                int iIntValue = this.list.get(i).intValue();
                if (iIntValue == 0) {
                    callback.onChanged(this.list.get(i + 1).intValue(), this.list.get(i + 2).intValue());
                } else if (iIntValue == 1) {
                    callback.onInserted(this.list.get(i + 1).intValue(), this.list.get(i + 2).intValue());
                } else {
                    if (iIntValue != 2) {
                        ah.f("Unexpected recording value");
                        return;
                    }
                    callback.onRemoved(this.list.get(i + 1).intValue(), this.list.get(i + 2).intValue());
                }
                if (i == i2) {
                    break;
                } else {
                    i += i3;
                }
            }
        }
        this.list.clear();
    }

    @Override // androidx.paging.PagedList.Callback
    public void onChanged(int i, int i2) {
        this.list.add(0);
        this.list.add(Integer.valueOf(i));
        this.list.add(Integer.valueOf(i2));
    }

    @Override // androidx.paging.PagedList.Callback
    public void onInserted(int i, int i2) {
        this.list.add(1);
        this.list.add(Integer.valueOf(i));
        this.list.add(Integer.valueOf(i2));
    }

    @Override // androidx.paging.PagedList.Callback
    public void onRemoved(int i, int i2) {
        this.list.add(2);
        this.list.add(Integer.valueOf(i));
        this.list.add(Integer.valueOf(i2));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
