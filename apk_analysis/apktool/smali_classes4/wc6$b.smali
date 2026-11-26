.class public final Lwc6$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwc6;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lwc6;


# direct methods
.method public constructor <init>(Lwc6;)V
    .locals 0

    iput-object p1, p0, Lwc6$b;->b:Lwc6;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lwc6$b;->b:Lwc6;

    iget-object v0, p0, Lwc6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lwc6;->a:Lnb6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v0, "Queue is flushing."

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lwc6;->flush()V

    return-void
.end method
