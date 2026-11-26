.class public final Lch5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La31;
.implements Llf9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La31<",
        "Lj59;",
        ">;",
        "Llf9;"
    }
.end annotation


# instance fields
.field public final b:Lc31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc31<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Lch5;


# direct methods
.method public constructor <init>(Lch5;Lc31;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc31<",
            "-",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch5$a;->d:Lch5;

    iput-object p2, p0, Lch5$a;->b:Lc31;

    iput-object p3, p0, Lch5$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lhl7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl7<",
            "*>;I)V"
        }
    .end annotation

    iget-object p0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {p0, p1, p2}, Lc31;->a(Lhl7;I)V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {p0, p1}, Lc31;->d(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final getContext()Lo22;
    .locals 0

    iget-object p0, p0, Lch5$a;->b:Lc31;

    iget-object p0, p0, Lc31;->f:Lo22;

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    iget-object p0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lno5;

    return p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {p0, p1}, Lc31;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Object;Ldm3;)Lbh8;
    .locals 2

    check-cast p1, Lj59;

    new-instance p2, Lbh5;

    const/4 v0, 0x0

    iget-object v1, p0, Lch5$a;->d:Lch5;

    invoke-direct {p2, v0, v1, p0}, Lbh5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {v0, p1, p2}, Lc31;->F(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lch5;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p0, p0, Lch5$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public final n(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {p0, p1}, Lc31;->n(Lnl3;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;Ldm3;)V
    .locals 2

    check-cast p1, Lj59;

    sget-object p2, Lch5;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v0, p0, Lch5$a;->c:Ljava/lang/Object;

    iget-object v1, p0, Lch5$a;->d:Lch5;

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lps0;

    const/4 v0, 0x1

    invoke-direct {p2, v0, v1, p0}, Lps0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {p0, p1, p2}, Lc31;->B(Ljava/lang/Object;Lps0;)V

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lch5$a;->b:Lc31;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
