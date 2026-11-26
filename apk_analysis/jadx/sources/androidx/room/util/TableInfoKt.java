package androidx.room.util;

import defpackage.aa4;
import defpackage.e2;
import defpackage.k;
import defpackage.kx2;
import defpackage.na8;
import defpackage.pp1;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.ta8;
import defpackage.zg;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.Comparator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class TableInfoKt {
    private static final boolean containsSurroundingParenthesis(String str) {
        if (str.length() == 0) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            int i4 = i3 + 1;
            if (i3 == 0 && cCharAt != '(') {
                return false;
            }
            if (cCharAt == '(') {
                i2++;
            } else if (cCharAt == ')' && (i2 = i2 - 1) == 0 && i3 != str.length() - 1) {
                return false;
            }
            i++;
            i3 = i4;
        }
        return i2 == 0;
    }

    public static final boolean defaultValueEqualsCommon(String str, String str2) {
        str.getClass();
        if (str.equals(str2)) {
            return true;
        }
        if (containsSurroundingParenthesis(str)) {
            return aa4.e(ta8.f0(str.substring(1, str.length() - 1)).toString(), str2);
        }
        return false;
    }

    public static final boolean equalsCommon(TableInfo.Column column, Object obj) {
        column.getClass();
        if (column == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo.Column)) {
            return false;
        }
        TableInfo.Column column2 = (TableInfo.Column) obj;
        if (column.isPrimaryKey() != column2.isPrimaryKey() || !aa4.e(column.name, column2.name) || column.notNull != column2.notNull) {
            return false;
        }
        String str = column.defaultValue;
        String str2 = column2.defaultValue;
        if (column.createdFrom == 1 && column2.createdFrom == 2 && str != null && !defaultValueEqualsCommon(str, str2)) {
            return false;
        }
        if (column.createdFrom == 2 && column2.createdFrom == 1 && str2 != null && !defaultValueEqualsCommon(str2, str)) {
            return false;
        }
        int i = column.createdFrom;
        return (i == 0 || i != column2.createdFrom || (str == null ? str2 == null : defaultValueEqualsCommon(str, str2))) && column.affinity == column2.affinity;
    }

    public static final String formatString(Collection<?> collection) {
        collection.getClass();
        return !collection.isEmpty() ? na8.h(qn1.a0(collection, ",\n", "\n", "\n", 0, null, 56)).concat("},") : " }";
    }

    public static final int hashCodeCommon(TableInfo.Index index) {
        index.getClass();
        return index.orders.hashCode() + e2.b(index.columns, (((ra8.C(index.name, TableInfo.Index.DEFAULT_PREFIX, false) ? -1184239155 : index.name.hashCode()) * 31) + (index.unique ? 1 : 0)) * 31, 31);
    }

    private static final String joinToStringEndWithIndent(Collection<?> collection) {
        return na8.h(qn1.a0(collection, StringUtils.COMMA, null, null, 0, null, 62)).concat(na8.h(" }"));
    }

    private static final String joinToStringMiddleWithIndent(Collection<?> collection) {
        return na8.h(qn1.a0(collection, StringUtils.COMMA, null, null, 0, null, 62)).concat(na8.h("},"));
    }

    public static final String toStringCommon(TableInfo tableInfo) {
        tableInfo.getClass();
        StringBuilder sb = new StringBuilder("\n            |TableInfo {\n            |    name = '");
        sb.append(tableInfo.name);
        sb.append("',\n            |    columns = {");
        sb.append(formatString(qn1.n0(tableInfo.columns.values(), new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return pp1.a(((TableInfo.Column) t).name, ((TableInfo.Column) t2).name);
            }
        })));
        sb.append("\n            |    foreignKeys = {");
        sb.append(formatString(tableInfo.foreignKeys));
        sb.append("\n            |    indices = {");
        Set<TableInfo.Index> set = tableInfo.indices;
        sb.append(formatString(set != null ? qn1.n0(set, new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return pp1.a(((TableInfo.Index) t).name, ((TableInfo.Index) t2).name);
            }
        }) : kx2.b));
        sb.append("\n            |}\n        ");
        return na8.j(sb.toString());
    }

    public static final int hashCodeCommon(TableInfo.Column column) {
        column.getClass();
        return (((((column.name.hashCode() * 31) + column.affinity) * 31) + (column.notNull ? 1231 : 1237)) * 31) + column.primaryKeyPosition;
    }

    public static final int hashCodeCommon(TableInfo.ForeignKey foreignKey) {
        foreignKey.getClass();
        return foreignKey.referenceColumnNames.hashCode() + e2.b(foreignKey.columnNames, zg.b(zg.b(foreignKey.referenceTable.hashCode() * 31, 31, foreignKey.onDelete), 31, foreignKey.onUpdate), 31);
    }

    public static final int hashCodeCommon(TableInfo tableInfo) {
        tableInfo.getClass();
        return tableInfo.foreignKeys.hashCode() + k.c(tableInfo.columns, tableInfo.name.hashCode() * 31, 31);
    }

    public static final String toStringCommon(TableInfo.Column column) {
        column.getClass();
        StringBuilder sb = new StringBuilder("\n            |Column {\n            |   name = '");
        sb.append(column.name);
        sb.append("',\n            |   type = '");
        sb.append(column.type);
        sb.append("',\n            |   affinity = '");
        sb.append(column.affinity);
        sb.append("',\n            |   notNull = '");
        sb.append(column.notNull);
        sb.append("',\n            |   primaryKeyPosition = '");
        sb.append(column.primaryKeyPosition);
        sb.append("',\n            |   defaultValue = '");
        String str = column.defaultValue;
        if (str == null) {
            str = StringUtils.UNDEFINED;
        }
        sb.append(str);
        sb.append("'\n            |}\n        ");
        return na8.h(na8.j(sb.toString()));
    }

    public static final boolean equalsCommon(TableInfo tableInfo, Object obj) {
        Set<TableInfo.Index> set;
        tableInfo.getClass();
        if (tableInfo == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo)) {
            return false;
        }
        TableInfo tableInfo2 = (TableInfo) obj;
        if (!aa4.e(tableInfo.name, tableInfo2.name) || !aa4.e(tableInfo.columns, tableInfo2.columns) || !aa4.e(tableInfo.foreignKeys, tableInfo2.foreignKeys)) {
            return false;
        }
        Set<TableInfo.Index> set2 = tableInfo.indices;
        if (set2 == null || (set = tableInfo2.indices) == null) {
            return true;
        }
        return aa4.e(set2, set);
    }

    public static final boolean equalsCommon(TableInfo.ForeignKey foreignKey, Object obj) {
        foreignKey.getClass();
        if (foreignKey == obj) {
            return true;
        }
        if (!(obj instanceof TableInfo.ForeignKey)) {
            return false;
        }
        TableInfo.ForeignKey foreignKey2 = (TableInfo.ForeignKey) obj;
        if (aa4.e(foreignKey.referenceTable, foreignKey2.referenceTable) && aa4.e(foreignKey.onDelete, foreignKey2.onDelete) && aa4.e(foreignKey.onUpdate, foreignKey2.onUpdate) && aa4.e(foreignKey.columnNames, foreignKey2.columnNames)) {
            return aa4.e(foreignKey.referenceColumnNames, foreignKey2.referenceColumnNames);
        }
        return false;
    }

    public static final boolean equalsCommon(TableInfo.Index index, Object obj) {
        index.getClass();
        if (index == obj) {
            return true;
        }
        if (obj instanceof TableInfo.Index) {
            TableInfo.Index index2 = (TableInfo.Index) obj;
            if (index.unique == index2.unique && aa4.e(index.columns, index2.columns) && aa4.e(index.orders, index2.orders)) {
                if (ra8.C(index.name, TableInfo.Index.DEFAULT_PREFIX, false)) {
                    return ra8.C(index2.name, TableInfo.Index.DEFAULT_PREFIX, false);
                }
                return aa4.e(index.name, index2.name);
            }
        }
        return false;
    }

    public static final String toStringCommon(TableInfo.ForeignKey foreignKey) {
        foreignKey.getClass();
        return na8.h(na8.j("\n            |ForeignKey {\n            |   referenceTable = '" + foreignKey.referenceTable + "',\n            |   onDelete = '" + foreignKey.onDelete + "',\n            |   onUpdate = '" + foreignKey.onUpdate + "',\n            |   columnNames = {" + joinToStringMiddleWithIndent(qn1.m0(foreignKey.columnNames)) + "\n            |   referenceColumnNames = {" + joinToStringEndWithIndent(qn1.m0(foreignKey.referenceColumnNames)) + "\n            |}\n        "));
    }

    public static final String toStringCommon(TableInfo.Index index) {
        index.getClass();
        return na8.h(na8.j("\n            |Index {\n            |   name = '" + index.name + "',\n            |   unique = '" + index.unique + "',\n            |   columns = {" + joinToStringMiddleWithIndent(index.columns) + "\n            |   orders = {" + joinToStringEndWithIndent(index.orders) + "\n            |}\n        "));
    }
}
