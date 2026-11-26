.class final Landroidx/compose/runtime/Recomposer$HotReloadable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotReloadable"
.end annotation


# instance fields
.field private composable:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Landroidx/compose/runtime/CompositionImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->getComposable()Lbm3;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composable:Lbm3;

    return-void
.end method


# virtual methods
.method public final clearContent()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composition:Landroidx/compose/runtime/CompositionImpl;

    sget-object v0, Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposableSingletons$RecomposerKt;->getLambda$-1091980426$runtime()Lbm3;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/CompositionImpl;->setContent(Lbm3;)V

    :cond_0
    return-void
.end method

.method public final recompose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composition:Landroidx/compose/runtime/CompositionImpl;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composable:Lbm3;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionImpl;->setContent(Lbm3;)V

    :cond_0
    return-void
.end method

.method public final resetContent()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composition:Landroidx/compose/runtime/CompositionImpl;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$HotReloadable;->composable:Lbm3;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/CompositionImpl;->setComposable(Lbm3;)V

    return-void
.end method
