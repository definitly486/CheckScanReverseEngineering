.class public final Llx0$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Lun2$a;

.field public final b:Ls18;

.field public final c:Llx0$d$a;

.field public d:Z

.field public final synthetic e:Llx0;


# direct methods
.method public constructor <init>(Llx0;Lun2$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lun2$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llx0$d;->e:Llx0;

    iput-object p2, p0, Llx0$d;->a:Lun2$a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lun2$a;->d(I)Ls18;

    move-result-object p2

    iput-object p2, p0, Llx0$d;->b:Ls18;

    new-instance v0, Llx0$d$a;

    invoke-direct {v0, p1, p0, p2}, Llx0$d$a;-><init>(Llx0;Llx0$d;Ls18;)V

    iput-object v0, p0, Llx0$d;->c:Llx0$d$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Llx0$d;->e:Llx0;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Llx0$d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Llx0$d;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Llx0$d;->b:Ls18;

    invoke-static {v0}, Lgb9;->d(Ljava/io/Closeable;)V

    :try_start_2
    iget-object p0, p0, Llx0$d;->a:Lun2$a;

    invoke-virtual {p0}, Lun2$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
