.class public final Lio/appmetrica/analytics/impl/T;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/X;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/X;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T;->a:Lio/appmetrica/analytics/impl/X;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/X;)Ljava/lang/Void;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/X;->b()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/FutureTask;
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T;->a:Lio/appmetrica/analytics/impl/X;

    new-instance v1, Lmh8;

    invoke-direct {v1, p0}, Lmh8;-><init>(Lio/appmetrica/analytics/impl/X;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/T;->a()Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method
