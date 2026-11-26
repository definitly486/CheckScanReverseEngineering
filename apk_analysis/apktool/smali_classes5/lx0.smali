.class public final Llx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llx0$a;,
        Llx0$b;,
        Llx0$c;,
        Llx0$d;
    }
.end annotation


# instance fields
.field public final b:Lun2;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lun2;

    sget-object v1, Lho8;->h:Lho8;

    invoke-direct {v0, p1, v1}, Lun2;-><init>(Ljava/io/File;Lho8;)V

    iput-object v0, p0, Llx0;->b:Lun2;

    return-void
.end method


# virtual methods
.method public final a(Lb37;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Llx0;->b:Lun2;

    iget-object p1, p1, Lb37;->a:Lfz3;

    invoke-static {p1}, Llx0$b;->a(Lfz3;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lun2;->v()V

    invoke-virtual {p0}, Lun2;->m()V

    invoke-static {p1}, Lun2;->Z(Ljava/lang/String;)V

    iget-object v0, p0, Lun2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lun2$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lun2;->V(Lun2$b;)V

    iget-wide v0, p0, Lun2;->f:J

    const-wide/32 v2, 0xa00000

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lun2;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Llx0;->b:Lun2;

    invoke-virtual {p0}, Lun2;->close()V

    return-void
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Llx0;->b:Lun2;

    invoke-virtual {p0}, Lun2;->flush()V

    return-void
.end method
