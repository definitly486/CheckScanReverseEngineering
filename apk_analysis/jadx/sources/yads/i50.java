package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class i50 implements ui5 {
    public final ui5[] b;

    public i50(ui5[] ui5VarArr) {
        this.b = ui5VarArr;
    }

    @Override // yads.ui5
    public final boolean c(long j) {
        boolean zC;
        boolean z = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return z;
            }
            zC = false;
            for (ui5 ui5Var : this.b) {
                long nextLoadPositionUs2 = ui5Var.getNextLoadPositionUs();
                boolean z2 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z2) {
                    zC |= ui5Var.c(j);
                }
            }
            z |= zC;
        } while (zC);
        return z;
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (ui5 ui5Var : this.b) {
            long bufferedPositionUs = ui5Var.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, bufferedPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (ui5 ui5Var : this.b) {
            long nextLoadPositionUs = ui5Var.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, nextLoadPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // yads.ui5
    public final boolean isLoading() {
        for (ui5 ui5Var : this.b) {
            if (ui5Var.isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
        for (ui5 ui5Var : this.b) {
            ui5Var.reevaluateBuffer(j);
        }
    }
}
