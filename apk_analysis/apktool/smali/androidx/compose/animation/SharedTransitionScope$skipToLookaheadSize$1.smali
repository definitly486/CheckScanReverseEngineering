.class final Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadSize$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedTransitionScope;->skipToLookaheadSize$default(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;Lll3;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/animation/SharedTransitionScope;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedTransitionScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadSize$1;->this$0:Landroidx/compose/animation/SharedTransitionScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadSize$1;->this$0:Landroidx/compose/animation/SharedTransitionScope;

    invoke-interface {p0}, Landroidx/compose/animation/SharedTransitionScope;->isTransitionActive()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadSize$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
