.class public final Lio/appmetrica/analytics/impl/sg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ug;

.field public volatile b:Lio/appmetrica/analytics/impl/yg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/L9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/sg;->a:Lio/appmetrica/analytics/impl/ug;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/sg;->a:Lio/appmetrica/analytics/impl/ug;

    new-instance v1, Lio/appmetrica/analytics/impl/rg;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/rg;-><init>(Lio/appmetrica/analytics/impl/sg;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/ug;->a(Lio/appmetrica/analytics/impl/qg;)V

    return-void
.end method
