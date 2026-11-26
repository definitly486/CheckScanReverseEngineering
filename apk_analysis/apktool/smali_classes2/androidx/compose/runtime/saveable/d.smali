.class public final synthetic Landroidx/compose/runtime/saveable/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/d;->b:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/d;->d:Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/saveable/d;->d:Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/d;->b:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    iget-object p0, p0, Landroidx/compose/runtime/saveable/d;->c:Ljava/lang/Object;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->e(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
