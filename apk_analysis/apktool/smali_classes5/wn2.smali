.class public final Lwn2;
.super Lqj3;
.source "SourceFile"


# instance fields
.field public c:Z

.field public final synthetic d:Lun2;

.field public final synthetic e:Lun2$b;


# direct methods
.method public constructor <init>(Lv48;Lun2;Lun2$b;)V
    .locals 0

    iput-object p2, p0, Lwn2;->d:Lun2;

    iput-object p3, p0, Lwn2;->e:Lun2$b;

    invoke-direct {p0, p1}, Lqj3;-><init>(Lv48;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    invoke-super {p0}, Lqj3;->close()V

    iget-boolean v0, p0, Lwn2;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwn2;->c:Z

    iget-object v0, p0, Lwn2;->d:Lun2;

    iget-object p0, p0, Lwn2;->e:Lun2$b;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lun2$b;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lun2$b;->h:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lun2$b;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lun2;->V(Lun2$b;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method
