.class public final Lio/appmetrica/analytics/adrevenue/other/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/adrevenue/other/impl/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/adrevenue/other/impl/k;-><init>(Lio/appmetrica/analytics/adrevenue/other/impl/b;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/other/impl/b;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/other/impl/k;->a:Lio/appmetrica/analytics/adrevenue/other/impl/b;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/adrevenue/other/impl/b;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/adrevenue/other/impl/b;

    invoke-direct {p1}, Lio/appmetrica/analytics/adrevenue/other/impl/b;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/k;-><init>(Lio/appmetrica/analytics/adrevenue/other/impl/b;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/adrevenue/other/impl/j;
    .locals 1

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/adrevenue/other/impl/c;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/other/impl/c;-><init>()V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;

    invoke-direct {p1}, Lio/appmetrica/analytics/adrevenue/other/impl/c;-><init>()V

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/impl/k;->a:Lio/appmetrica/analytics/adrevenue/other/impl/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/adrevenue/other/impl/j;

    iget-boolean v0, p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;->a:Z

    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;->b:Z

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/j;-><init>(ZZ)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/adrevenue/other/impl/j;)[B
    .locals 0

    .line 32
    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/impl/k;->a:Lio/appmetrica/analytics/adrevenue/other/impl/b;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/b;->a(Lio/appmetrica/analytics/adrevenue/other/impl/j;)Lio/appmetrica/analytics/adrevenue/other/impl/c;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/adrevenue/other/impl/j;

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/other/impl/k;->a:Lio/appmetrica/analytics/adrevenue/other/impl/b;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/b;->a(Lio/appmetrica/analytics/adrevenue/other/impl/j;)Lio/appmetrica/analytics/adrevenue/other/impl/c;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/k;->a([B)Lio/appmetrica/analytics/adrevenue/other/impl/j;

    move-result-object p0

    return-object p0
.end method
