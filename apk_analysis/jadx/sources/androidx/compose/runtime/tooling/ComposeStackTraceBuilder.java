package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.GroupSourceInformation;
import defpackage.aa4;
import defpackage.ad2;
import defpackage.ah;
import defpackage.ra8;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ComposeStackTraceBuilder {
    public static final int $stable = 8;
    private final List<ComposeStackTraceFrame> _trace = new ArrayList();

    private final boolean appendGroupSourceInformation(int i, GroupSourceInformation groupSourceInformation, Object obj) {
        ArrayList<Object> groups = groupSourceInformation.getGroups();
        boolean z = false;
        if (groups == null) {
            if (!groupSourceInformation.getClosed()) {
                appendTraceFrame(i, groupSourceInformation, null);
                return true;
            }
            int dataStartOffset = groupSourceInformation.getDataStartOffset();
            int dataEndOffset = groupSourceInformation.getDataEndOffset();
            if (obj instanceof Integer) {
                Number number = (Number) obj;
                int iIntValue = number.intValue();
                if ((dataStartOffset <= iIntValue && iIntValue < dataEndOffset) || (dataStartOffset == dataEndOffset && dataStartOffset == number.intValue())) {
                    z = true;
                }
                if (z) {
                    appendTraceFrame(groupSourceInformation.getKey(), groupSourceInformation, null);
                }
            }
            return z;
        }
        int size = groups.size();
        for (int i2 = 0; i2 < size; i2++) {
            Object obj2 = groups.get(i2);
            if (!(obj2 instanceof Anchor)) {
                if (!(obj2 instanceof GroupSourceInformation)) {
                    ah.f(ad2.b(obj2, "Unexpected child source info "));
                    break;
                }
                if (appendGroupSourceInformation(i, (GroupSourceInformation) obj2, obj)) {
                    appendTraceFrame(groupSourceInformation.getKey(), groupSourceInformation, obj2);
                    return true;
                }
            } else if (obj2.equals(obj)) {
                appendTraceFrame(groupSourceInformation.getKey(), groupSourceInformation, obj2);
                return true;
            }
        }
        return false;
    }

    private final void appendTraceFrame(int i, GroupSourceInformation groupSourceInformation, Object obj) {
        ComposeStackTraceFrame composeStackTraceFrameExtractTraceFrame = extractTraceFrame(i, groupSourceInformation, obj);
        if (composeStackTraceFrameExtractTraceFrame != null) {
            this._trace.add(composeStackTraceFrameExtractTraceFrame);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0081  */
    private final ComposeStackTraceFrame extractTraceFrame(int i, GroupSourceInformation groupSourceInformation, Object obj) {
        ArrayList<Object> groups;
        String sourceInformation;
        SourceInformation sourceInformation2 = (groupSourceInformation == null || (sourceInformation = groupSourceInformation.getSourceInformation()) == null) ? null : SourceInformationKt.parseSourceInformation(sourceInformation);
        if (sourceInformation2 == null) {
            return new ComposeStackTraceFrame(i, null, null);
        }
        if (obj == null) {
            return new ComposeStackTraceFrame(i, sourceInformation2, null);
        }
        ArrayList<Object> groups2 = groupSourceInformation.getGroups();
        int i2 = 0;
        if (groups2 != null) {
            int size = groups2.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                Object obj2 = groups2.get(i4);
                if (aa4.e(obj2, obj)) {
                    break;
                }
                GroupSourceInformation groupSourceInformationSourceInformationOf = sourceInformationOf(obj2);
                if (groupSourceInformationSourceInformationOf != null && (groupSourceInformationSourceInformationOf.getKey() == -127 || (groupSourceInformationSourceInformationOf.getKey() == 0 && (obj2 instanceof Anchor) && groupKeyOf((Anchor) obj2) == -127))) {
                    if ((groupSourceInformationSourceInformationOf != null ? groupSourceInformationSourceInformationOf.getSourceInformation() : null) == null) {
                        if (groupSourceInformationSourceInformationOf != null && (groups = groupSourceInformationSourceInformationOf.getGroups()) != null) {
                            int size2 = groups.size();
                            for (int i5 = 0; i5 < size2; i5++) {
                                GroupSourceInformation groupSourceInformationSourceInformationOf2 = sourceInformationOf(groups.get(i5));
                                if (groupSourceInformationSourceInformationOf2 != null && isCall(groupSourceInformationSourceInformationOf2)) {
                                    i3++;
                                }
                            }
                        }
                    } else if (groupSourceInformationSourceInformationOf == null) {
                    }
                } else if (groupSourceInformationSourceInformationOf == null && isCall(groupSourceInformationSourceInformationOf)) {
                    i3++;
                }
            }
            i2 = i3;
        }
        return new ComposeStackTraceFrame(i, sourceInformation2, Integer.valueOf(i2));
    }

    private final boolean isCall(GroupSourceInformation groupSourceInformation) {
        String sourceInformation = groupSourceInformation.getSourceInformation();
        return sourceInformation != null && ra8.C(sourceInformation, "C", false);
    }

    private final GroupSourceInformation sourceInformationOf(Object obj) {
        if (obj instanceof Anchor) {
            return sourceInformationOf((Anchor) obj);
        }
        if (obj instanceof GroupSourceInformation) {
            return (GroupSourceInformation) obj;
        }
        ah.f(ad2.b(obj, "Unexpected child source info "));
        return null;
    }

    public abstract int groupKeyOf(Anchor anchor);

    public final void processEdge(int i, Object obj, GroupSourceInformation groupSourceInformation, Object obj2) {
        if (groupSourceInformation != null || aa4.e(obj, Composer.Companion.getEmpty())) {
            if (obj2 == null || groupSourceInformation == null) {
                appendTraceFrame(i, groupSourceInformation, null);
            } else {
                if (appendGroupSourceInformation(i, groupSourceInformation, obj2) || groupSourceInformation.getClosed()) {
                    return;
                }
                appendTraceFrame(i, groupSourceInformation, obj2);
            }
        }
    }

    public abstract GroupSourceInformation sourceInformationOf(Anchor anchor);

    public final List<ComposeStackTraceFrame> trace() {
        return this._trace;
    }
}
