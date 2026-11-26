.class public final Lio/appmetrica/analytics/impl/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Bh;

.field public final b:Lio/appmetrica/analytics/impl/zh;

.field public final c:Lio/appmetrica/analytics/impl/eh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;Lio/appmetrica/analytics/impl/ek;Lio/appmetrica/analytics/impl/An;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fh;->a:Lio/appmetrica/analytics/impl/Bh;

    new-instance v0, Lio/appmetrica/analytics/impl/zh;

    invoke-direct {v0, p1, p2, p3}, Lio/appmetrica/analytics/impl/zh;-><init>(Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;Lio/appmetrica/analytics/impl/ek;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/fh;->b:Lio/appmetrica/analytics/impl/zh;

    new-instance p1, Lio/appmetrica/analytics/impl/eh;

    invoke-direct {p1, p4}, Lio/appmetrica/analytics/impl/eh;-><init>(Lio/appmetrica/analytics/impl/An;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fh;->c:Lio/appmetrica/analytics/impl/eh;

    return-void
.end method
