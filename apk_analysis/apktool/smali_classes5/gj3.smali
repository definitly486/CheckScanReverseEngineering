.class public abstract Lgj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvk3;


# instance fields
.field public final b:Lvk3;


# direct methods
.method public constructor <init>(Lvk3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lgj3;->b:Lvk3;

    return-void
.end method


# virtual methods
.method public final T(IJ)V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1, p2, p3}, Lvk3;->T(IJ)V

    return-void
.end method

.method public final b0()I
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0}, Lvk3;->b0()I

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0}, Lvk3;->flush()V

    return-void
.end method

.method public final g0(Lq03;[B)V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1, p2}, Lvk3;->g0(Lq03;[B)V

    return-void
.end method

.method public final u()V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0}, Lvk3;->u()V

    return-void
.end method

.method public final w(ZILbu0;I)V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1, p2, p3, p4}, Lvk3;->w(ZILbu0;I)V

    return-void
.end method

.method public final x(ILjava/util/List;Z)V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1, p2, p3}, Lvk3;->x(ILjava/util/List;Z)V

    return-void
.end method

.method public final z(Lpr7;)V
    .locals 0

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0, p1}, Lvk3;->z(Lpr7;)V

    return-void
.end method
