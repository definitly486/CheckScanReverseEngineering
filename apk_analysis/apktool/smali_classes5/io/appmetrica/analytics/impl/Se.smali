.class public abstract Lio/appmetrica/analytics/impl/Se;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Ljava/lang/String;)Lio/appmetrica/analytics/impl/Te;
    .locals 1

    new-instance v0, Lrd0;

    invoke-direct {v0, p0}, Lrd0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final b([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
