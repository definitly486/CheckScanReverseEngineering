.class public final Lxn2;
.super Ljl8;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lun2;


# direct methods
.method public constructor <init>(Lun2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxn2;->e:Lun2;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object p0, p0, Lxn2;->e:Lun2;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lun2;->l:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lun2;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lun2;->X()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lun2;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lun2;->y()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lun2;->U()V

    const/4 v3, 0x0

    iput v3, p0, Lun2;->i:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    iput-boolean v0, p0, Lun2;->o:Z

    new-instance v0, Lmj0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lhy6;

    invoke-direct {v3, v0}, Lhy6;-><init>(Ls18;)V

    iput-object v3, p0, Lun2;->g:Lhy6;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-wide v1

    :cond_2
    :goto_2
    monitor-exit p0

    return-wide v1

    :goto_3
    monitor-exit p0

    throw v0
.end method
