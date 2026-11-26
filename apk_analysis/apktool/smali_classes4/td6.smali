.class public final Ltd6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac6;


# static fields
.field public static volatile e:Z


# instance fields
.field public final b:Lta6;

.field public final c:Ldb6;

.field public final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lta6;Ldb6;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltd6;->b:Lta6;

    iput-object p2, p0, Ltd6;->c:Ldb6;

    iput-object p3, p0, Ltd6;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(Lbc6;)V
    .locals 2

    sget-boolean p1, Ltd6;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Ltd6;->e:Z

    iget-object p1, p0, Ltd6;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Laj2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Laj2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, p1}, Lhe6;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Ltd6;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final c(Lzv6$c;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p0, p0, Ltd6;->b:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event failed to parse: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lic6;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzv6$c;->remove()V

    return-void
.end method
