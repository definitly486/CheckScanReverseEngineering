.class public final synthetic Lpi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic b:Landroidx/navigation/internal/NavControllerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/internal/NavControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpi5;->b:Landroidx/navigation/internal/NavControllerImpl;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p0, p0, Lpi5;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-static {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->g(Landroidx/navigation/internal/NavControllerImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
