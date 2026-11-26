.class public final Lcom/posthog/surveys/SurveyEnumsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$enumFromValue(Ljava/lang/String;[Ljava/lang/Enum;Lnl3;)Ljava/lang/Enum;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/posthog/surveys/SurveyEnumsKt;->enumFromValue(Ljava/lang/String;[Ljava/lang/Enum;Lnl3;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method private static final enumFromValue(Ljava/lang/String;[Ljava/lang/Enum;Lnl3;)Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-interface {p2, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
