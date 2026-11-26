.class public abstract Lzc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz2a;

.field public final b:Lcom/my/target/t0$a;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lzc0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzc0;->d:Ljava/lang/String;

    new-instance v0, Lz2a;

    const-string v1, "fullscreen"

    invoke-direct {v0, p1, v1}, Lz2a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lzc0;->a:Lz2a;

    new-instance v0, Lcom/my/target/t0$a;

    invoke-direct {v0, p1}, Lcom/my/target/t0$a;-><init>(I)V

    iput-object v0, p0, Lzc0;->b:Lcom/my/target/t0$a;

    sget-object p0, Lrh5;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Lrh5;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
