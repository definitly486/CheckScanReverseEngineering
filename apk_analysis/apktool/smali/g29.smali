.class public final synthetic Lg29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/animation/core/Transition;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/animation/core/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg29;->b:Ly22;

    iput-object p2, p0, Lg29;->c:Landroidx/compose/animation/core/Transition;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg29;->c:Landroidx/compose/animation/core/Transition;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p0, p0, Lg29;->b:Ly22;

    invoke-static {p0, v0, p1}, Landroidx/compose/animation/core/Transition;->b(Ly22;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
