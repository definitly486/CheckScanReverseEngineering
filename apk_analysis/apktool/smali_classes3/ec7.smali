.class public final synthetic Lec7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/internal/SavedStateHandleImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/internal/SavedStateHandleImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec7;->b:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lec7;->b:Landroidx/lifecycle/internal/SavedStateHandleImpl;

    invoke-static {p0}, Landroidx/lifecycle/internal/SavedStateHandleImpl;->a(Landroidx/lifecycle/internal/SavedStateHandleImpl;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
