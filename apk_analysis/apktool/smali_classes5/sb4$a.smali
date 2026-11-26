.class public final Lsb4$a;
.super Lc31;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsb4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc31<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Lsb4;


# direct methods
.method public constructor <init>(Le02;Lsb4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TT;>;",
            "Lsb4;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lc31;-><init>(ILe02;)V

    iput-object p2, p0, Lsb4$a;->j:Lsb4;

    return-void
.end method


# virtual methods
.method public final r(Lsb4;)Ljava/lang/Throwable;
    .locals 1

    iget-object p0, p0, Lsb4$a;->j:Lsb4;

    invoke-virtual {p0}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lsb4$c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lsb4$c;

    invoke-virtual {v0}, Lsb4$c;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    instance-of v0, p0, Lyq1;

    if-eqz v0, :cond_1

    check-cast p0, Lyq1;

    iget-object p0, p0, Lyq1;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lsb4;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final z()Ljava/lang/String;
    .locals 0

    const-string p0, "AwaitContinuation"

    return-object p0
.end method
