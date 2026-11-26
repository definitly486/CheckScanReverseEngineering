.class public interface abstract Lyads/wh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/s51;
.implements Lyads/r16;
.implements Lyads/hs2;


# virtual methods
.method public abstract a()Lyads/br0;
.end method

.method public abstract c()Lyads/tt;
.end method

.method public release()V
    .locals 1

    invoke-interface {p0}, Lyads/hs2;->b()V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lyads/wh1;->setDiv(Lyads/br0;)V

    invoke-interface {p0, v0}, Lyads/wh1;->setBindingContext(Lyads/tt;)V

    invoke-interface {p0}, Lyads/s51;->d()V

    return-void
.end method

.method public abstract setBindingContext(Lyads/tt;)V
.end method

.method public abstract setDiv(Lyads/br0;)V
.end method
