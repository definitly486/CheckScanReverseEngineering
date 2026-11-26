.class public final Lio/appmetrica/analytics/impl/zh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Bh;

.field public final b:Lio/appmetrica/analytics/impl/bb;

.field public final c:Lio/appmetrica/analytics/impl/ll;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Bh;Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;Lio/appmetrica/analytics/impl/ek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zh;->a:Lio/appmetrica/analytics/impl/Bh;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/zh;->b:Lio/appmetrica/analytics/impl/bb;

    new-instance p1, Lio/appmetrica/analytics/impl/ll;

    invoke-direct {p1, p2, p3}, Lio/appmetrica/analytics/impl/ll;-><init>(Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTrimmer;Lio/appmetrica/analytics/impl/ek;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zh;->c:Lio/appmetrica/analytics/impl/ll;

    return-void
.end method
