.class public final synthetic Landroidx/compose/foundation/lazy/layout/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ldm3;

.field public final synthetic c:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;


# direct methods
.method public synthetic constructor <init>(Ldm3;Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/q;->b:Ldm3;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/q;->c:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/q;->b:Ldm3;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/q;->c:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolderKt;->b(Ldm3;Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
