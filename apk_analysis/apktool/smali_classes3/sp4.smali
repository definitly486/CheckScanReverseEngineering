.class public final synthetic Lsp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic c:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp4;->b:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lsp4;->c:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    iput-object p3, p0, Lsp4;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsp4;->d:Lnl3;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v1, p0, Lsp4;->b:Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Lsp4;->c:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    invoke-static {v1, p0, v0, p1}, Landroidx/lifecycle/compose/LifecycleEffectKt;->l(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;Lnl3;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
