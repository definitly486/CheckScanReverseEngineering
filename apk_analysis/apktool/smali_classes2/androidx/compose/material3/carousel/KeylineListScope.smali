.class public interface abstract Landroidx/compose/material3/carousel/KeylineListScope;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic add$default(Landroidx/compose/material3/carousel/KeylineListScope;FZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/material3/carousel/KeylineListScope;->add(FZ)V

    return-void

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: add"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract add(FZ)V
.end method
