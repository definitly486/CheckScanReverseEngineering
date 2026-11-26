.class public final Lio/appmetrica/analytics/impl/Jo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Lio/appmetrica/analytics/impl/Fo;

.field public final d:Lio/appmetrica/analytics/impl/Fo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jo;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Jo;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Lio/appmetrica/analytics/impl/qa;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ak;->e()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "appmetrica_vital.dat"

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/qa;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JILjh2;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Fo;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/Fo;-><init>(Lio/appmetrica/analytics/impl/mf;Lio/appmetrica/analytics/impl/qa;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jo;->c:Lio/appmetrica/analytics/impl/Fo;

    new-instance p1, Lio/appmetrica/analytics/impl/Fo;

    new-instance v0, Lio/appmetrica/analytics/impl/mf;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v3

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/Ok;->e(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/mf;-><init>(Lio/appmetrica/analytics/impl/Va;)V

    invoke-direct {p1, v0, v1}, Lio/appmetrica/analytics/impl/Fo;-><init>(Lio/appmetrica/analytics/impl/mf;Lio/appmetrica/analytics/impl/qa;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jo;->d:Lio/appmetrica/analytics/impl/Fo;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Fo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jo;->c:Lio/appmetrica/analytics/impl/Fo;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Fo;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jo;->d:Lio/appmetrica/analytics/impl/Fo;

    return-object p0
.end method
