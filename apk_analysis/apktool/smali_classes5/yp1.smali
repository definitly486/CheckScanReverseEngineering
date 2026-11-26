.class public final Lyp1;
.super Lsb4;
.source "SourceFile"

# interfaces
.implements Lxp1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lsb4;",
        "Lxp1<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsb4;-><init>(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsb4;->O(Lmb4;)V

    return-void
.end method


# virtual methods
.method public final U()Lwl7;
    .locals 4

    new-instance v0, Lwl7;

    sget-object v1, Ltb4;->c:Ltb4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lv39;->c(ILjava/lang/Object;)V

    sget-object v3, Lub4;->c:Lub4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lv39;->c(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lwl7;-><init>(Ljava/lang/Object;Ldm3;Ldm3;Lju0;)V

    return-object v0
.end method

.method public final Z(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsb4;->u(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public final e(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Lyq1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lyq1;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0}, Lsb4;->T(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
