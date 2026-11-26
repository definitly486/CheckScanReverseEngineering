.class public final Lsv8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsv8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lsv8;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lsv8$a;->b(Ljava/time/ZoneId;)Lsv8;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of v0, p0, Ljava/time/DateTimeException;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/datetime/IllegalTimeZoneException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    throw p0
.end method

.method public static b(Ljava/time/ZoneId;)Lsv8;
    .locals 3

    instance-of v0, p0, Ljava/time/ZoneOffset;

    if-eqz v0, :cond_0

    new-instance v0, Lgc3;

    new-instance v1, Lda9;

    check-cast p0, Ljava/time/ZoneOffset;

    invoke-direct {v1, p0}, Lda9;-><init>(Ljava/time/ZoneOffset;)V

    invoke-direct {v0, p0}, Lsv8;-><init>(Ljava/time/ZoneId;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/zone/ZoneRules;->isFixedOffset()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lgc3;

    new-instance v1, Lda9;

    invoke-virtual {p0}, Ljava/time/ZoneId;->normalized()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/time/ZoneOffset;

    invoke-direct {v1, v2}, Lda9;-><init>(Ljava/time/ZoneOffset;)V

    invoke-direct {v0, p0}, Lsv8;-><init>(Ljava/time/ZoneId;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lsv8;

    invoke-direct {v0, p0}, Lsv8;-><init>(Ljava/time/ZoneId;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final serializer()Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf4<",
            "Lsv8;",
            ">;"
        }
    .end annotation

    sget-object p0, Luv8;->a:Luv8;

    return-object p0
.end method
