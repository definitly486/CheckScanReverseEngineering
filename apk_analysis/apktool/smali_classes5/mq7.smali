.class public final Lmq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq7;


# instance fields
.field public final synthetic a:Lkq7;


# direct methods
.method public constructor <init>(Lkq7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmq7;->a:Lkq7;

    return-void
.end method


# virtual methods
.method public final a(Lne4;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TBase;>;",
            "Lnl3<",
            "-TBase;+",
            "Lxp7<",
            "-TBase;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lmq7;->a:Lkq7;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lkq7;->h(Lne4;Lnl3;Z)V

    return-void
.end method

.method public final b(Lne4;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TBase;>;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lxl2<",
            "+TBase;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lmq7;->a:Lkq7;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lkq7;->g(Lne4;Lnl3;Z)V

    return-void
.end method

.method public final c(Lne4;Lne4;Ldf4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            "Sub::TBase;>(",
            "Lne4<",
            "TBase;>;",
            "Lne4<",
            "TSub;>;",
            "Ldf4<",
            "TSub;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lmq7;->a:Lkq7;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lkq7;->i(Lne4;Lne4;Ldf4;Z)V

    return-void
.end method

.method public final d(Lne4;Ldf4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;",
            "Ldf4<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ld02$a;

    invoke-direct {v0, p2}, Ld02$a;-><init>(Ldf4;)V

    const/4 p2, 0x1

    iget-object p0, p0, Lmq7;->a:Lkq7;

    invoke-virtual {p0, p1, v0, p2}, Lkq7;->j(Lne4;Ld02;Z)V

    return-void
.end method

.method public final e(Lne4;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ldf4<",
            "*>;>;+",
            "Ldf4<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ld02$b;

    invoke-direct {v0, p2}, Ld02$b;-><init>(Lnl3;)V

    const/4 p2, 0x1

    iget-object p0, p0, Lmq7;->a:Lkq7;

    invoke-virtual {p0, p1, v0, p2}, Lkq7;->j(Lne4;Ld02;Z)V

    return-void
.end method
