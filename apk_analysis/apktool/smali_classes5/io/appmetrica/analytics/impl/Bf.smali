.class public final Lio/appmetrica/analytics/impl/Bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/hj;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Bf;-><init>(Lio/appmetrica/analytics/impl/mf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/mf;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Bf;->a:Lio/appmetrica/analytics/impl/mf;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bf;->a:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mf;->i()Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Bf;->a:Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/mf;->h()V

    return-void
.end method
