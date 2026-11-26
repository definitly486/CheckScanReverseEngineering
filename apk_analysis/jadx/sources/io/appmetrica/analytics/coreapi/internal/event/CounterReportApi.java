package io.appmetrica.analytics.coreapi.internal.event;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface CounterReportApi {
    int getBytesTruncated();

    int getCustomType();

    Map<String, byte[]> getExtras();

    String getName();

    int getType();

    String getValue();

    byte[] getValueBytes();

    Integer getValueProtocolVersion();

    void setBytesTruncated(int i);

    void setCustomType(int i);

    void setExtras(Map<String, byte[]> map);

    void setName(String str);

    void setType(int i);

    void setValue(String str);

    void setValueBytes(byte[] bArr);

    void setValueProtocolVersion(Integer num);
}
