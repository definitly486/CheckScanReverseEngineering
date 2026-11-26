.class public final Lxy9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ld9a;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/Map;

.field public volatile e:Lum9;

.field public volatile f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lkt9;Lum9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2710

    invoke-static {p1}, Ld9a;->a(I)Ld9a;

    move-result-object p1

    iput-object p1, p0, Lxy9;->b:Ld9a;

    iput-object p2, p0, Lxy9;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lxy9;->e:Lum9;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lxy9;->f:I

    iget p1, p0, Lxy9;->f:I

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p1, p0, Lxy9;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lxy9;->e:Lum9;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MediationParamsLoader: onResult has already been called"

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lxy9;->e:Lum9;

    iget-object v5, p0, Lxy9;->d:Ljava/util/Map;

    iget-object v2, v0, Lum9;->a:Lwm9$a;

    iget-object v3, v0, Lum9;->b:Ljava/lang/String;

    iget-object v4, v0, Lum9;->c:Lz2a;

    iget-object v6, v0, Lum9;->d:Lcom/my/target/t0;

    iget-object v7, v0, Lum9;->e:Lkt9;

    iget-object v8, v0, Lum9;->f:Lv4a;

    new-instance v1, Lvm9;

    invoke-direct/range {v1 .. v8}, Lvm9;-><init>(Lwm9$a;Ljava/lang/String;Lz2a;Ljava/util/Map;Lcom/my/target/t0;Lkt9;Lv4a;)V

    invoke-static {v1}, Lw4a;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lxy9;->b:Ld9a;

    invoke-virtual {v0}, Ld9a;->close()V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 2

    const-string v0, "MediationParamsLoader: loading timeout"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lxy9;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8;

    invoke-interface {v1}, Lc8;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lxy9;->a()V

    return-void
.end method
