.class public final Lio/appmetrica/analytics/impl/m5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/b5;

.field public final c:Lio/appmetrica/analytics/impl/Ok;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/m5;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/b5;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Ok;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/jf;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/jf;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/m5;->c:Lio/appmetrica/analytics/impl/Ok;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/m5;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m5;->b:Lio/appmetrica/analytics/impl/b5;

    invoke-virtual {v1, v2, p0}, Lio/appmetrica/analytics/impl/Ok;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/impl/Va;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/jf;-><init>(Lio/appmetrica/analytics/impl/Va;)V

    return-object v0
.end method
