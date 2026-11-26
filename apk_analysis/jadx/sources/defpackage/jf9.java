package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.databinding.ItemQueueChequeBinding;
import com.warefly.checkscan.presentation.queue.view.QueueFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class jf9 extends RecyclerView.ViewHolder implements kf9 {
    public static final /* synthetic */ int o = 0;
    public final ItemQueueChequeBinding l;
    public final ff9 m;
    public gf9 n;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[nz6.values().length];
            try {
                iArr[nz6.WAITING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[nz6.FNS_NOT_RESPONDING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[nz6.INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[nz6.CHEQUE_NO_SHOP_RECEIVED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[nz6.CHEQUE_RECEIVED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[nz6.ALREADY_SCANNED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[nz6.NOT_CORRECT_FORMAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jf9(ItemQueueChequeBinding itemQueueChequeBinding, QueueFragment queueFragment) {
        super(itemQueueChequeBinding.getRoot());
        queueFragment.getClass();
        this.l = itemQueueChequeBinding;
        this.m = queueFragment;
    }

    @Override // defpackage.kf9
    public final gf9 b() {
        gf9 gf9Var = this.n;
        if (gf9Var != null) {
            return gf9Var;
        }
        aa4.j("receipt");
        throw null;
    }
}
