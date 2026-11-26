.class public final Lez4$i;
.super Lu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lez4;


# direct methods
.method public constructor <init>(Lez4;)V
    .locals 1

    iput-object p1, p0, Lez4$i;->c:Lez4;

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu1;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    iget-object p0, p0, Lez4$i;->c:Lez4;

    invoke-virtual {p0}, Lez4;->g()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object p0, p0, Lez4$i;->c:Lez4;

    iget-object v0, p0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lez4;->k()V

    return-void
.end method
