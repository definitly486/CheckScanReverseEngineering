.class public interface abstract Llq7;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lne4;Lnl3;)V
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
.end method

.method public abstract b(Lne4;Lnl3;)V
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
.end method

.method public abstract c(Lne4;Lne4;Ldf4;)V
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
.end method

.method public d(Lne4;Ldf4;)V
    .locals 2
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

    new-instance v0, Lnu1;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lnu1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, p1, v0}, Llq7;->e(Lne4;Lnl3;)V

    return-void
.end method

.method public abstract e(Lne4;Lnl3;)V
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
.end method
