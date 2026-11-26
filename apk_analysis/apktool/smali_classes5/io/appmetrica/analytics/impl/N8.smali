.class public final Lio/appmetrica/analytics/impl/N8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Co;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/T8;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/T8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/T8;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/N8;-><init>(Lio/appmetrica/analytics/impl/T8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/T8;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/N8;->a:Lio/appmetrica/analytics/impl/T8;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B
    .locals 0

    iget-object p2, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [B

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/N8;->a:Lio/appmetrica/analytics/impl/T8;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Z8;->o:Lio/appmetrica/analytics/impl/U8;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T8;->a:Lio/appmetrica/analytics/impl/Qc;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/S8;

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/impl/S8;->a([B)[B

    move-result-object p0

    return-object p0
.end method
