.class public final Lio/appmetrica/analytics/impl/qn;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/rn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/rn;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qn;->a:Lio/appmetrica/analytics/impl/rn;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/qn;->a:Lio/appmetrica/analytics/impl/rn;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rn;->a:Lio/appmetrica/analytics/impl/v;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/v;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "native_supported_sources"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rn;->b:Lio/appmetrica/analytics/impl/w;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/w;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "plugin_supported_sources"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
