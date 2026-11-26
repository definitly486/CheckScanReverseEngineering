.class public final Lio/appmetrica/analytics/logger/common/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcl4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/appmetrica/analytics/logger/common/impl/h;->a:Lio/appmetrica/analytics/logger/common/impl/h;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/logger/common/impl/i;->a:Lcl4;

    return-void
.end method

.method public static a(Ljava/util/regex/Matcher;II)I
    .locals 3

    const/4 v0, -0x1

    if-ge p2, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p2, p1, v1, p1}, Lk;->b(IIII)I

    move-result v1

    invoke-virtual {p0, v1, p2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    invoke-static {p0, v1, p2}, Lio/appmetrica/analytics/logger/common/impl/i;->a(Ljava/util/regex/Matcher;II)I

    move-result p0

    if-ne p0, v0, :cond_1

    return p1

    :cond_1
    return p0

    :cond_2
    invoke-virtual {p0, p1, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    invoke-static {p0, p2, v1}, Lio/appmetrica/analytics/logger/common/impl/i;->a(Ljava/util/regex/Matcher;II)I

    move-result p0

    if-ne p0, v0, :cond_3

    return p1

    :cond_3
    return p0

    :cond_4
    return v0
.end method
