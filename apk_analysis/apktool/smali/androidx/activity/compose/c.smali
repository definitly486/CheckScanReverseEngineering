.class public final synthetic Landroidx/activity/compose/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

.field public final synthetic c:Landroidx/activity/compose/ComposeBackHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/c;->b:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    iput-object p2, p0, Landroidx/activity/compose/c;->c:Landroidx/activity/compose/ComposeBackHandler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/c;->c:Landroidx/activity/compose/ComposeBackHandler;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p0, p0, Landroidx/activity/compose/c;->b:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    invoke-static {p0, v0, p1}, Landroidx/activity/compose/BackHandlerKt;->b(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
