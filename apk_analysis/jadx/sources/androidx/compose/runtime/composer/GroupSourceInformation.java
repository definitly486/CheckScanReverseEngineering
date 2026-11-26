package androidx.compose.runtime.composer;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface GroupSourceInformation {
    boolean getClosed();

    int getDataEndOffset();

    int getDataStartOffset();

    ArrayList<Object> getGroups();

    int getKey();

    String getSourceInformation();
}
