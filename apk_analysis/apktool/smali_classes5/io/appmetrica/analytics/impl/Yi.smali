.class public final Lio/appmetrica/analytics/impl/Yi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ug;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yi;->a:Landroid/content/Context;

    const-string p1, "rustore"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yi;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/qg;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/bj;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yi;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/bj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/bj;->a(Lio/appmetrica/analytics/impl/qg;)V

    return-void
.end method
