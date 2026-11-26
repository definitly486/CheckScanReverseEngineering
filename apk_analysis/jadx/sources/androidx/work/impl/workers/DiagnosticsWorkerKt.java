package androidx.work.impl.workers;

import androidx.work.Logger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.model.WorkTagDao;
import defpackage.qn1;
import defpackage.xp;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class DiagnosticsWorkerKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("DiagnosticsWrkr");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
    }

    private static final String workSpecRow(WorkSpec workSpec, String str, Integer num, String str2) {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(workSpec.id);
        sb.append("\t ");
        sb.append(workSpec.workerClassName);
        sb.append("\t ");
        sb.append(num);
        sb.append("\t ");
        sb.append(workSpec.state.name());
        sb.append("\t ");
        sb.append(str);
        sb.append("\t ");
        return xp.e(sb, str2, '\t');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String workSpecRows(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List<WorkSpec> list) {
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        for (WorkSpec workSpec : list) {
            SystemIdInfo systemIdInfo = systemIdInfoDao.getSystemIdInfo(WorkSpecKt.generationalId(workSpec));
            sb.append(workSpecRow(workSpec, qn1.a0(workNameDao.getNamesForWorkSpecId(workSpec.id), StringUtils.COMMA, null, null, 0, null, 62), systemIdInfo != null ? Integer.valueOf(systemIdInfo.systemId) : null, qn1.a0(workTagDao.getTagsForWorkSpecId(workSpec.id), StringUtils.COMMA, null, null, 0, null, 62)));
        }
        return sb.toString();
    }
}
