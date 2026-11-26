.class public interface abstract Lyads/s51;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public d()V
    .locals 0

    invoke-interface {p0}, Lyads/s51;->i()Lyads/l51;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/hs2;->b()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-interface {p0}, Lyads/s51;->i()Lyads/l51;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/l51;->d()V

    :cond_0
    return-void
.end method

.method public abstract i()Lyads/l51;
.end method

.method public abstract setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
.end method

.method public abstract setNeedClipping(Z)V
.end method
