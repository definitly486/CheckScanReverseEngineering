.class public final Lio/appmetrica/analytics/impl/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;


# instance fields
.field public final a:[Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;

.field public final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/q5;->a:[Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Composite of {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/appmetrica/analytics/impl/p5;->a:Lio/appmetrica/analytics/impl/p5;

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-static {p1, v2, v2, v1, v3}, Lyr;->T([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lnl3;I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x7d

    invoke-static {v0, p1, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/q5;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final canBeExecuted()Z
    .locals 5

    iget-object p0, p0, Lio/appmetrica/analytics/impl/q5;->a:[Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-interface {v3}, Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;->canBeExecuted()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final description()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/q5;->b:Ljava/lang/String;

    return-object p0
.end method
