.class public final Lio/appmetrica/analytics/impl/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/qg;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/qg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/qg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dj;->a:Lio/appmetrica/analytics/impl/qg;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/yg;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dj;->a:Lio/appmetrica/analytics/impl/qg;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
