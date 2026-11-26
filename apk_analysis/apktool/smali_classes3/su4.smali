.class public final Lsu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le47;
.implements Lf53$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le47<",
        "TZ;>;",
        "Lf53$d;"
    }
.end annotation


# static fields
.field public static final f:Lf53$c;


# instance fields
.field public final b:Lc78$a;

.field public c:Le47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le47<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsu4$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lf53;->a(ILf53$b;)Lf53$c;

    move-result-object v0

    sput-object v0, Lsu4;->f:Lf53$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc78$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsu4;->b:Lc78$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, Lsu4;->c:Le47;

    invoke-interface {p0}, Le47;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsu4;->b:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    iget-boolean v0, p0, Lsu4;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsu4;->d:Z

    iget-boolean v0, p0, Lsu4;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsu4;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lc78$a;
    .locals 0

    iget-object p0, p0, Lsu4;->b:Lc78$a;

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, Lsu4;->c:Le47;

    invoke-interface {p0}, Le47;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lsu4;->c:Le47;

    invoke-interface {p0}, Le47;->getSize()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsu4;->b:Lc78$a;

    invoke-virtual {v0}, Lc78$a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsu4;->e:Z

    iget-boolean v0, p0, Lsu4;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsu4;->c:Le47;

    invoke-interface {v0}, Le47;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsu4;->c:Le47;

    sget-object v0, Lsu4;->f:Lf53$c;

    invoke-virtual {v0, p0}, Lf53$c;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
