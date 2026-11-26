.class public final Lz57;
.super Lrb4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrb4;"
    }
.end annotation


# instance fields
.field public final f:Lsb4$a;


# direct methods
.method public constructor <init>(Lsb4$a;)V
    .locals 0

    invoke-direct {p0}, Lrb4;-><init>()V

    iput-object p1, p0, Lz57;->f:Lsb4$a;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lrb4;->j()Lsb4;

    move-result-object p1

    invoke-virtual {p1}, Lsb4;->L()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lyq1;

    iget-object p0, p0, Lz57;->f:Lsb4$a;

    if-eqz v0, :cond_0

    check-cast p1, Lyq1;

    iget-object p1, p1, Lyq1;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Lvp2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
