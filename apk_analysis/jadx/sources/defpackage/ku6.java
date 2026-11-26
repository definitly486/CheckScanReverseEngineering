package defpackage;

import androidx.collection.LongSparseArray;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.RxRoom;
import androidx.room.util.RelationUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.room.util.StringUtil;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.warefly.checkscan.data.db.CheckscanDatabase_Impl;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ku6 implements zt6 {
    public final CheckscanDatabase_Impl a;
    public final fu6 b = new fu6();
    public final gu6 c = new gu6();
    public final hu6 d = new hu6();
    public final iu6 e = new iu6();

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[vt6.values().length];
            b = iArr;
            try {
                iArr[vt6.New.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[vt6.WaitSending.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[vt6.Reject.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[vt6.ShowLate.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[vt6.Send.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[vt6.ScreenshotSend.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[yt6.values().length];
            a = iArr2;
            try {
                iArr2[yt6.ADMITAD_ONLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[yt6.ADVERTISING_CAMPAIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public ku6(CheckscanDatabase_Impl checkscanDatabase_Impl) {
        this.a = checkscanDatabase_Impl;
        new ju6();
    }

    public static String i(vt6 vt6Var) {
        switch (a.b[vt6Var.ordinal()]) {
            case 1:
                return "New";
            case 2:
                return "WaitSending";
            case 3:
                return "Reject";
            case 4:
                return "ShowLate";
            case 5:
                return "Send";
            case 6:
                return "ScreenshotSend";
            default:
                r01.e(vt6Var, "Can't convert enum to string, unknown enum value: ");
                return null;
        }
    }

    public static String j(yt6 yt6Var) {
        int i = a.a[yt6Var.ordinal()];
        if (i == 1) {
            return "ADMITAD_ONLINE";
        }
        if (i == 2) {
            return "ADVERTISING_CAMPAIGN";
        }
        r01.e(yt6Var, "Can't convert enum to string, unknown enum value: ");
        return null;
    }

    @Override // defpackage.zt6
    public final mz7<List<Long>> a() {
        return RxRoom.createSingle(this.a, true, false, new z2(3));
    }

    @Override // defpackage.zt6
    public final qp1 b(final long j) {
        return RxRoom.createCompletable(this.a, false, true, new nl3() { // from class: cu6
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                long j2 = j;
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("DELETE FROM purchases_table WHERE id=?");
                try {
                    sQLiteStatementPrepare.mo9363bindLong(1, j2);
                    sQLiteStatementPrepare.step();
                    return j59.a;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            }
        });
    }

    @Override // defpackage.zt6
    public final mz7<ot6> c(final long j) {
        return RxRoom.createSingle(this.a, true, true, new nl3() { // from class: au6
            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                Object ot6Var;
                yt6 yt6Var;
                ku6 ku6Var = this.b;
                long j2 = j;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT * FROM purchases_table WHERE id=?");
                try {
                    sQLiteStatementPrepare.mo9363bindLong(1, j2);
                    int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                    int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "image_guide_text");
                    LongSparseArray<pt6> longSparseArray = new LongSparseArray<>();
                    LongSparseArray<tt6> longSparseArray2 = new LongSparseArray<>();
                    while (true) {
                        ot6Var = null;
                        if (!sQLiteStatementPrepare.step()) {
                            break;
                        }
                        longSparseArray.put(sQLiteStatementPrepare.getLong(columnIndexOrThrow), null);
                        longSparseArray2.put(sQLiteStatementPrepare.getLong(columnIndexOrThrow), null);
                    }
                    sQLiteStatementPrepare.reset();
                    ku6Var.k(sQLiteConnection, longSparseArray);
                    ku6Var.l(sQLiteConnection, longSparseArray2);
                    if (sQLiteStatementPrepare.step()) {
                        long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow);
                        String text = sQLiteStatementPrepare.getText(columnIndexOrThrow2);
                        text.getClass();
                        if (text.equals("ADMITAD_ONLINE")) {
                            yt6Var = yt6.ADMITAD_ONLINE;
                        } else {
                            if (!text.equals("ADVERTISING_CAMPAIGN")) {
                                throw new IllegalArgumentException("Can't convert value to enum, unknown value: ".concat(text));
                            }
                            yt6Var = yt6.ADVERTISING_CAMPAIGN;
                        }
                        ot6Var = new ot6(j3, yt6Var, sQLiteStatementPrepare.isNull(columnIndexOrThrow3) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow3), longSparseArray.get(sQLiteStatementPrepare.getLong(columnIndexOrThrow)), longSparseArray2.get(sQLiteStatementPrepare.getLong(columnIndexOrThrow)));
                    }
                    sQLiteStatementPrepare.close();
                    return ot6Var;
                } catch (Throwable th) {
                    sQLiteStatementPrepare.close();
                    throw th;
                }
            }
        });
    }

    @Override // defpackage.zt6
    public final qp1 d() {
        return RxRoom.createCompletable(this.a, false, true, new eu6(0));
    }

    @Override // defpackage.zt6
    public final qp1 e(tt6 tt6Var) {
        return RxRoom.createCompletable(this.a, false, true, new fu3(1, this, tt6Var));
    }

    @Override // defpackage.zt6
    public final qp1 f(pt6 pt6Var) {
        return RxRoom.createCompletable(this.a, false, true, new xn4(1, this, pt6Var));
    }

    @Override // defpackage.zt6
    public final qp1 g(rt6 rt6Var) {
        return RxRoom.createCompletable(this.a, false, true, new e22(1, this, rt6Var));
    }

    @Override // defpackage.zt6
    public final qp1 h(wt6 wt6Var) {
        return RxRoom.createCompletable(this.a, false, true, new du6(0, this, wt6Var));
    }

    public final void k(SQLiteConnection sQLiteConnection, LongSparseArray<pt6> longSparseArray) {
        if (longSparseArray.isEmpty()) {
            return;
        }
        if (longSparseArray.size() > 999) {
            RelationUtil.recursiveFetchLongSparseArray(longSparseArray, false, new za2(1, this, sQLiteConnection));
            return;
        }
        StringBuilder sbC = ad2.c("SELECT `purchase_id`,`bank_title`,`bak_text` FROM `purchases_bank_info_table` WHERE `purchase_id` IN (");
        StringUtil.appendPlaceholders(sbC, longSparseArray.size());
        sbC.append(")");
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(sbC.toString());
        int i = 1;
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            sQLiteStatementPrepare.mo9363bindLong(i, longSparseArray.keyAt(i2));
            i++;
        }
        try {
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "purchase_id");
            if (columnIndex == -1) {
                return;
            }
            while (sQLiteStatementPrepare.step()) {
                long j = sQLiteStatementPrepare.getLong(columnIndex);
                if (longSparseArray.containsKey(j)) {
                    long j2 = sQLiteStatementPrepare.getLong(0);
                    String text = null;
                    String text2 = sQLiteStatementPrepare.isNull(1) ? null : sQLiteStatementPrepare.getText(1);
                    if (!sQLiteStatementPrepare.isNull(2)) {
                        text = sQLiteStatementPrepare.getText(2);
                    }
                    longSparseArray.put(j, new pt6(j2, text2, text));
                }
            }
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    public final void l(SQLiteConnection sQLiteConnection, LongSparseArray<tt6> longSparseArray) {
        if (longSparseArray.isEmpty()) {
            return;
        }
        if (longSparseArray.size() > 999) {
            RelationUtil.recursiveFetchLongSparseArray(longSparseArray, false, new bu6(0, this, sQLiteConnection));
            return;
        }
        StringBuilder sbC = ad2.c("SELECT `purchase_id`,`shop_title`,`shop_text`,`example_image_url` FROM `purchases_shop_info_table` WHERE `purchase_id` IN (");
        StringUtil.appendPlaceholders(sbC, longSparseArray.size());
        sbC.append(")");
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(sbC.toString());
        int i = 1;
        for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
            sQLiteStatementPrepare.mo9363bindLong(i, longSparseArray.keyAt(i2));
            i++;
        }
        try {
            int columnIndex = SQLiteStatementUtil.getColumnIndex(sQLiteStatementPrepare, "purchase_id");
            if (columnIndex == -1) {
                return;
            }
            while (sQLiteStatementPrepare.step()) {
                long j = sQLiteStatementPrepare.getLong(columnIndex);
                if (longSparseArray.containsKey(j)) {
                    longSparseArray.put(j, new tt6(sQLiteStatementPrepare.getLong(0), sQLiteStatementPrepare.isNull(1) ? null : sQLiteStatementPrepare.getText(1), sQLiteStatementPrepare.isNull(2) ? null : sQLiteStatementPrepare.getText(2), sQLiteStatementPrepare.isNull(3) ? null : sQLiteStatementPrepare.getText(3)));
                }
            }
        } finally {
            sQLiteStatementPrepare.close();
        }
    }
}
