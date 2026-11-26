.class public final synthetic Las4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic b:Landroidx/camera/core/impl/LiveDataObservable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/LiveDataObservable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Las4;->b:Landroidx/camera/core/impl/LiveDataObservable;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Las4;->b:Landroidx/camera/core/impl/LiveDataObservable;

    check-cast p1, Landroidx/camera/core/impl/LiveDataObservable$Result;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/LiveDataObservable;->a(Landroidx/camera/core/impl/LiveDataObservable;Landroidx/camera/core/impl/LiveDataObservable$Result;)V

    return-void
.end method
