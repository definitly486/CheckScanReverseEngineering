.class public final Lel2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lel2;->d(Lnz4$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lez4$g;


# direct methods
.method public constructor <init>(Lez4$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel2$c;->b:Lez4$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lel2$c;->b:Lez4$g;

    iget-object p0, p0, Lez4$g;->a:Lez4;

    iget-object v0, p0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lez4;->G:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lez4;->l(Z)V

    invoke-virtual {p0}, Lez4;->i()V

    return-void
.end method
