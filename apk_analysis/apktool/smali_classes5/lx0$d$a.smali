.class public final Llx0$d$a;
.super Lpj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llx0$d;-><init>(Llx0;Lun2$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Llx0;

.field public final synthetic d:Llx0$d;


# direct methods
.method public constructor <init>(Llx0;Llx0$d;Ls18;)V
    .locals 0

    iput-object p1, p0, Llx0$d$a;->c:Llx0;

    iput-object p2, p0, Llx0$d$a;->d:Llx0$d;

    invoke-direct {p0, p3}, Lpj3;-><init>(Ls18;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Llx0$d$a;->c:Llx0;

    iget-object v1, p0, Llx0$d$a;->d:Llx0$d;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v1, Llx0$d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v1, Llx0$d;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    invoke-super {p0}, Lpj3;->close()V

    iget-object p0, p0, Llx0$d$a;->d:Llx0$d;

    iget-object p0, p0, Llx0$d;->a:Lun2$a;

    invoke-virtual {p0}, Lun2$a;->b()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
