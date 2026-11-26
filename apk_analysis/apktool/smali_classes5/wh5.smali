.class public final Lwh5;
.super Lr22;
.source "SourceFile"

# interfaces
.implements Lwk2;


# instance fields
.field public final synthetic c:Lwk2;

.field public final d:Lr22;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr22;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lr22;-><init>()V

    instance-of v0, p1, Lwk2;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lwk2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Llh2;->a:Lwk2;

    :cond_1
    iput-object v0, p0, Lwh5;->c:Lwk2;

    iput-object p1, p0, Lwh5;->d:Lr22;

    iput-object p2, p0, Lwh5;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final X(JLjava/lang/Runnable;Lo22;)Lhp2;
    .locals 0

    iget-object p0, p0, Lwh5;->c:Lwk2;

    invoke-interface {p0, p1, p2, p3, p4}, Lwk2;->X(JLjava/lang/Runnable;Lo22;)Lhp2;

    move-result-object p0

    return-object p0
.end method

.method public final b(JLc31;)V
    .locals 0

    iget-object p0, p0, Lwh5;->c:Lwk2;

    invoke-interface {p0, p1, p2, p3}, Lwk2;->b(JLc31;)V

    return-void
.end method

.method public final dispatch(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lwh5;->d:Lr22;

    invoke-virtual {p0, p1, p2}, Lr22;->dispatch(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dispatchYield(Lo22;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lwh5;->d:Lr22;

    invoke-virtual {p0, p1, p2}, Lr22;->dispatchYield(Lo22;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isDispatchNeeded(Lo22;)Z
    .locals 0

    iget-object p0, p0, Lwh5;->d:Lr22;

    invoke-virtual {p0, p1}, Lr22;->isDispatchNeeded(Lo22;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwh5;->e:Ljava/lang/String;

    return-object p0
.end method
