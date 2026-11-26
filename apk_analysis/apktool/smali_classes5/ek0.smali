.class public final Lek0;
.super La0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/Thread;

.field public final g:Lb13;


# direct methods
.method public constructor <init>(Lo22;Ljava/lang/Thread;Lb13;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, La0;-><init>(Lo22;ZZ)V

    iput-object p2, p0, Lek0;->f:Ljava/lang/Thread;

    iput-object p3, p0, Lek0;->g:Lb13;

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p0, p0, Lek0;->f:Ljava/lang/Thread;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
