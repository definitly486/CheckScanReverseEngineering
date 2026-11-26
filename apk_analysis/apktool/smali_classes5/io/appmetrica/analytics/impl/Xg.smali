.class public final Lio/appmetrica/analytics/impl/Xg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/tl;

.field public final c:Lio/appmetrica/analytics/impl/y6;

.field public final d:Lio/appmetrica/analytics/impl/Bb;

.field public final e:Lio/appmetrica/analytics/impl/B4;

.field public final f:Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o6;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/tl;Lio/appmetrica/analytics/impl/y6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xg;->a:Landroid/content/Context;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Xg;->b:Lio/appmetrica/analytics/impl/tl;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/Xg;->c:Lio/appmetrica/analytics/impl/y6;

    new-instance p1, Lio/appmetrica/analytics/impl/Bb;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Bb;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xg;->d:Lio/appmetrica/analytics/impl/Bb;

    new-instance p1, Lio/appmetrica/analytics/impl/B4;

    new-instance p4, Lio/appmetrica/analytics/impl/pm;

    invoke-direct {p4}, Lio/appmetrica/analytics/impl/pm;-><init>()V

    new-instance p5, Lio/appmetrica/analytics/impl/A4;

    invoke-direct {p5}, Lio/appmetrica/analytics/impl/A4;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p1, p4, p5, v0}, Lio/appmetrica/analytics/impl/B4;-><init>(Lio/appmetrica/analytics/impl/pm;Lio/appmetrica/analytics/impl/A4;Landroid/os/ResultReceiver;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xg;->e:Lio/appmetrica/analytics/impl/B4;

    new-instance p1, Lrl9;

    invoke-direct {p1, p3, p0, p2}, Lrl9;-><init>(Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/Xg;Lio/appmetrica/analytics/impl/o6;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xg;->f:Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/Xg;Lio/appmetrica/analytics/impl/o6;Lio/appmetrica/analytics/impl/xb;)V
    .locals 9

    new-instance v0, Lio/appmetrica/analytics/impl/d4;

    iget-object v1, p3, Lio/appmetrica/analytics/impl/xb;->h:Ljava/lang/String;

    iget-object v2, p3, Lio/appmetrica/analytics/impl/xb;->e:Ljava/lang/String;

    iget-object v3, p3, Lio/appmetrica/analytics/impl/xb;->f:Ljava/lang/Integer;

    iget-object v4, p3, Lio/appmetrica/analytics/impl/xb;->g:Ljava/lang/String;

    iget-object v5, p3, Lio/appmetrica/analytics/impl/xb;->i:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/d4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object v2, p3, Lio/appmetrica/analytics/impl/xb;->b:Ljava/lang/String;

    iget-object v3, p3, Lio/appmetrica/analytics/impl/xb;->a:[B

    iget v4, p3, Lio/appmetrica/analytics/impl/xb;->c:I

    iget-object v5, p3, Lio/appmetrica/analytics/impl/xb;->d:Ljava/util/HashMap;

    iget-object v6, p3, Lio/appmetrica/analytics/impl/xb;->j:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v1

    iget-object v7, p1, Lio/appmetrica/analytics/impl/Xg;->c:Lio/appmetrica/analytics/impl/y6;

    check-cast v7, Lio/appmetrica/analytics/impl/la;

    invoke-virtual {v7, p3}, Lio/appmetrica/analytics/impl/la;->a(Lio/appmetrica/analytics/impl/xb;)J

    move-result-wide v7

    sget-object p3, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance p3, Lio/appmetrica/analytics/impl/a4;

    iget p0, p0, Lio/appmetrica/analytics/impl/pb;->a:I

    invoke-direct {p3, v3, v2, p0, v1}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {p3, v7, v8}, Lio/appmetrica/analytics/impl/a6;->b(J)V

    iput-object v5, p3, Lio/appmetrica/analytics/impl/a4;->r:Ljava/util/HashMap;

    iput v4, p3, Lio/appmetrica/analytics/impl/a6;->g:I

    iput-object v6, p3, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    iget-object p0, p1, Lio/appmetrica/analytics/impl/Xg;->e:Lio/appmetrica/analytics/impl/B4;

    check-cast p2, Lio/appmetrica/analytics/impl/Vg;

    invoke-virtual {p2, v0, p3, p0}, Lio/appmetrica/analytics/impl/Vg;->a(Lio/appmetrica/analytics/impl/d4;Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V

    return-void
.end method
