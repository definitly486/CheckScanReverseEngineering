.class public final Lif4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lif4;


# direct methods
.method public constructor <init>(Lif4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif4$a;->b:Lif4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lif4$a;->b:Lif4;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lif4$a;->b:Lif4;

    iget-object v1, p0, Lif4;->d:Lif4$d;

    sget-object v2, Lif4$d;->DISCONNECTED:Lif4$d;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Lif4;->d:Lif4$d;

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lif4;->c:Lif4$c;

    iget-object p0, p0, Lif4$c;->a:Llv5;

    sget-object v0, Lh88;->m:Lh88;

    const-string v1, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {p0, v0}, Llv5;->p(Lh88;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
