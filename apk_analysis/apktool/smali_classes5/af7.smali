.class public Laf7;
.super La0;
.source "SourceFile"

# interfaces
.implements Lb32;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La0<",
        "TT;>;",
        "Lb32;"
    }
.end annotation


# instance fields
.field public final f:Le02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le02<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le02;Lo22;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, v0}, La0;-><init>(Lo22;ZZ)V

    iput-object p1, p0, Laf7;->f:Le02;

    return-void
.end method


# virtual methods
.method public final S()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Lb32;
    .locals 1

    iget-object p0, p0, Laf7;->f:Le02;

    instance-of v0, p0, Lb32;

    if-eqz v0, :cond_0

    check-cast p0, Lb32;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public n0()V
    .locals 0

    return-void
.end method

.method public s(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Laf7;->f:Le02;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-static {p1}, Loe0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lgo2;->f(Le02;Ljava/lang/Object;)V

    return-void
.end method

.method public t(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Laf7;->f:Le02;

    invoke-static {p1}, Loe0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
