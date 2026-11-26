package androidx.room.util;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.ar4;
import defpackage.fr;
import defpackage.ir7;
import defpackage.j59;
import defpackage.kn1;
import defpackage.l1;
import defpackage.mx2;
import defpackage.nn1;
import defpackage.ox2;
import defpackage.pp1;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.ta8;
import defpackage.u96;
import defpackage.uz4;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class SchemaInfoUtilKt {
    private static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    public static final int findAffinity(String str) {
        if (str == null) {
            return 5;
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        if (ta8.D(upperCase, "INT", false)) {
            return 3;
        }
        if (ta8.D(upperCase, "CHAR", false) || ta8.D(upperCase, "CLOB", false) || ta8.D(upperCase, "TEXT", false)) {
            return 2;
        }
        if (ta8.D(upperCase, "BLOB", false)) {
            return 5;
        }
        return (ta8.D(upperCase, "REAL", false) || ta8.D(upperCase, "FLOA", false) || ta8.D(upperCase, "DOUB", false)) ? 4 : 1;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d2  */
    public static final Set<String> parseFtsOptions(String str) {
        Character ch;
        Character ch2;
        str.getClass();
        if (str.length() == 0) {
            return ox2.b;
        }
        String strSubstring = str.substring(ta8.J('(', 0, 6, str) + 1, ta8.O(str, ')', 0, 6));
        ArrayList arrayList = new ArrayList();
        fr frVar = new fr();
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        while (i2 < strSubstring.length()) {
            char cCharAt = strSubstring.charAt(i2);
            int i4 = i3 + 1;
            if (cCharAt == '\"' || cCharAt == '\'') {
                if (frVar.isEmpty()) {
                    frVar.addFirst(Character.valueOf(cCharAt));
                } else {
                    ch = (Character) frVar.d();
                    if (ch != null && ch.charValue() == cCharAt) {
                        nn1.E(frVar);
                    }
                }
            } else if (cCharAt != ',') {
                if (cCharAt != '[') {
                    if (cCharAt != ']') {
                        if (cCharAt == '`') {
                            if (frVar.isEmpty()) {
                                frVar.addFirst(Character.valueOf(cCharAt));
                            } else {
                                ch = (Character) frVar.d();
                                if (ch != null) {
                                    nn1.E(frVar);
                                }
                            }
                        }
                    } else if (!frVar.isEmpty() && (ch2 = (Character) frVar.d()) != null && ch2.charValue() == '[') {
                        nn1.E(frVar);
                    }
                } else if (frVar.isEmpty()) {
                    frVar.addFirst(Character.valueOf(cCharAt));
                }
            } else if (frVar.isEmpty()) {
                String strSubstring2 = strSubstring.substring(i + 1, i3);
                int length = strSubstring2.length() - 1;
                int i5 = 0;
                boolean z = false;
                while (i5 <= length) {
                    boolean z2 = aa4.f(strSubstring2.charAt(!z ? i5 : length), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length--;
                    } else if (z2) {
                        i5++;
                    } else {
                        z = true;
                    }
                }
                arrayList.add(strSubstring2.subSequence(i5, length + 1).toString());
                i = i3;
            }
            i2++;
            i3 = i4;
        }
        arrayList.add(ta8.f0(strSubstring.substring(i + 1)).toString());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String str2 = (String) obj;
            for (String str3 : FTS_OPTIONS) {
                if (ra8.C(str2, str3, false)) {
                    arrayList2.add(obj);
                    break;
                }
            }
        }
        return qn1.y0(arrayList2);
    }

    private static final Map<String, TableInfo.Column> readColumns(SQLiteConnection sQLiteConnection, String str) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA table_info(`" + str + "`)");
        try {
            if (!sQLiteStatementPrepare.step()) {
                mx2 mx2Var = mx2.b;
                aq5.c(sQLiteStatementPrepare, null);
                return mx2Var;
            }
            int iColumnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "name");
            int iColumnIndexOf2 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
            int iColumnIndexOf3 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "notnull");
            int iColumnIndexOf4 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "pk");
            int iColumnIndexOf5 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "dflt_value");
            uz4 uz4Var = new uz4();
            do {
                String text = sQLiteStatementPrepare.getText(iColumnIndexOf);
                uz4Var.put(text, new TableInfo.Column(text, sQLiteStatementPrepare.getText(iColumnIndexOf2), sQLiteStatementPrepare.getLong(iColumnIndexOf3) != 0, (int) sQLiteStatementPrepare.getLong(iColumnIndexOf4), sQLiteStatementPrepare.isNull(iColumnIndexOf5) ? null : sQLiteStatementPrepare.getText(iColumnIndexOf5), 2));
            } while (sQLiteStatementPrepare.step());
            uz4 uz4VarB = uz4Var.b();
            aq5.c(sQLiteStatementPrepare, null);
            return uz4VarB;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    private static final List<ForeignKeyWithSequence> readForeignKeyFieldMappings(SQLiteStatement sQLiteStatement) {
        int iColumnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, TtmlNode.ATTR_ID);
        int iColumnIndexOf2 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "seq");
        int iColumnIndexOf3 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "from");
        int iColumnIndexOf4 = SQLiteStatementUtil.columnIndexOf(sQLiteStatement, "to");
        ar4 ar4VarE = u96.e();
        while (sQLiteStatement.step()) {
            ar4VarE.add(new ForeignKeyWithSequence((int) sQLiteStatement.getLong(iColumnIndexOf), (int) sQLiteStatement.getLong(iColumnIndexOf2), sQLiteStatement.getText(iColumnIndexOf3), sQLiteStatement.getText(iColumnIndexOf4)));
        }
        return qn1.m0(u96.d(ar4VarE));
    }

    private static final Set<TableInfo.ForeignKey> readForeignKeys(SQLiteConnection sQLiteConnection, String str) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int iColumnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
            int iColumnIndexOf2 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "seq");
            int iColumnIndexOf3 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "table");
            int iColumnIndexOf4 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "on_delete");
            int iColumnIndexOf5 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "on_update");
            List<ForeignKeyWithSequence> foreignKeyFieldMappings = readForeignKeyFieldMappings(sQLiteStatementPrepare);
            sQLiteStatementPrepare.reset();
            ir7 ir7Var = new ir7();
            while (sQLiteStatementPrepare.step()) {
                if (sQLiteStatementPrepare.getLong(iColumnIndexOf2) == 0) {
                    int i = (int) sQLiteStatementPrepare.getLong(iColumnIndexOf);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList<ForeignKeyWithSequence> arrayList3 = new ArrayList();
                    for (Object obj : foreignKeyFieldMappings) {
                        if (((ForeignKeyWithSequence) obj).getId() == i) {
                            arrayList3.add(obj);
                        }
                    }
                    for (ForeignKeyWithSequence foreignKeyWithSequence : arrayList3) {
                        arrayList.add(foreignKeyWithSequence.getFrom());
                        arrayList2.add(foreignKeyWithSequence.getTo());
                    }
                    ir7Var.add(new TableInfo.ForeignKey(sQLiteStatementPrepare.getText(iColumnIndexOf3), sQLiteStatementPrepare.getText(iColumnIndexOf4), sQLiteStatementPrepare.getText(iColumnIndexOf5), arrayList, arrayList2));
                }
            }
            ir7 ir7VarD = l1.d(ir7Var);
            aq5.c(sQLiteStatementPrepare, null);
            return ir7VarD;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public static final Set<String> readFtsColumns(SQLiteConnection sQLiteConnection, String str) throws Exception {
        sQLiteConnection.getClass();
        str.getClass();
        ir7 ir7Var = new ir7();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA table_info(`" + str + "`)");
        try {
            if (sQLiteStatementPrepare.step()) {
                int iColumnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "name");
                do {
                    ir7Var.add(sQLiteStatementPrepare.getText(iColumnIndexOf));
                } while (sQLiteStatementPrepare.step());
            }
            j59 j59Var = j59.a;
            aq5.c(sQLiteStatementPrepare, null);
            return l1.d(ir7Var);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public static final Set<String> readFtsOptions(SQLiteConnection sQLiteConnection, String str) throws Exception {
        sQLiteConnection.getClass();
        str.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT * FROM sqlite_master WHERE `name` = '" + str + '\'');
        try {
            String text = sQLiteStatementPrepare.step() ? sQLiteStatementPrepare.getText(SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "sql")) : "";
            aq5.c(sQLiteStatementPrepare, null);
            return parseFtsOptions(text);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    private static final TableInfo.Index readIndex(SQLiteConnection sQLiteConnection, String str, boolean z) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int iColumnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "seqno");
            int iColumnIndexOf2 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, CmcdConfiguration.KEY_CONTENT_ID);
            int iColumnIndexOf3 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "name");
            int iColumnIndexOf4 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "desc");
            if (iColumnIndexOf != -1 && iColumnIndexOf2 != -1 && iColumnIndexOf3 != -1 && iColumnIndexOf4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (sQLiteStatementPrepare.step()) {
                    if (((int) sQLiteStatementPrepare.getLong(iColumnIndexOf2)) >= 0) {
                        int i = (int) sQLiteStatementPrepare.getLong(iColumnIndexOf);
                        String text = sQLiteStatementPrepare.getText(iColumnIndexOf3);
                        String str2 = sQLiteStatementPrepare.getLong(iColumnIndexOf4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i), text);
                        linkedHashMap2.put(Integer.valueOf(i), str2);
                    }
                }
                List listN0 = qn1.n0(linkedHashMap.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return pp1.a((Integer) ((Map.Entry) t).getKey(), (Integer) ((Map.Entry) t2).getKey());
                    }
                });
                ArrayList arrayList = new ArrayList(kn1.q(listN0, 10));
                Iterator it = listN0.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List listT0 = qn1.t0(arrayList);
                List listN1 = qn1.n0(linkedHashMap2.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$2
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return pp1.a((Integer) ((Map.Entry) t).getKey(), (Integer) ((Map.Entry) t2).getKey());
                    }
                });
                ArrayList arrayList2 = new ArrayList(kn1.q(listN1, 10));
                Iterator it2 = listN1.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                TableInfo.Index index = new TableInfo.Index(str, z, listT0, qn1.t0(arrayList2));
                aq5.c(sQLiteStatementPrepare, null);
                return index;
            }
            aq5.c(sQLiteStatementPrepare, null);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    private static final Set<TableInfo.Index> readIndices(SQLiteConnection sQLiteConnection, String str) throws Exception {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("PRAGMA index_list(`" + str + "`)");
        try {
            int iColumnIndexOf = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "name");
            int iColumnIndexOf2 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "origin");
            int iColumnIndexOf3 = SQLiteStatementUtil.columnIndexOf(sQLiteStatementPrepare, "unique");
            if (iColumnIndexOf != -1 && iColumnIndexOf2 != -1 && iColumnIndexOf3 != -1) {
                ir7 ir7Var = new ir7();
                while (sQLiteStatementPrepare.step()) {
                    if ("c".equals(sQLiteStatementPrepare.getText(iColumnIndexOf2))) {
                        TableInfo.Index index = readIndex(sQLiteConnection, sQLiteStatementPrepare.getText(iColumnIndexOf), sQLiteStatementPrepare.getLong(iColumnIndexOf3) == 1);
                        if (index == null) {
                            aq5.c(sQLiteStatementPrepare, null);
                            return null;
                        }
                        ir7Var.add(index);
                    }
                }
                ir7 ir7VarD = l1.d(ir7Var);
                aq5.c(sQLiteStatementPrepare, null);
                return ir7VarD;
            }
            aq5.c(sQLiteStatementPrepare, null);
            return null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public static final TableInfo readTableInfo(SQLiteConnection sQLiteConnection, String str) {
        sQLiteConnection.getClass();
        str.getClass();
        return new TableInfo(str, readColumns(sQLiteConnection, str), readForeignKeys(sQLiteConnection, str), readIndices(sQLiteConnection, str));
    }

    public static final ViewInfo readViewInfo(SQLiteConnection sQLiteConnection, String str) throws Exception {
        sQLiteConnection.getClass();
        str.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT name, sql FROM sqlite_master WHERE type = 'view' AND name = '" + str + '\'');
        try {
            ViewInfo viewInfo = sQLiteStatementPrepare.step() ? new ViewInfo(sQLiteStatementPrepare.getText(0), sQLiteStatementPrepare.getText(1)) : new ViewInfo(str, null);
            aq5.c(sQLiteStatementPrepare, null);
            return viewInfo;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }
}
