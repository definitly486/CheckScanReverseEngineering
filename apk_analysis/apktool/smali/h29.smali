.class public final synthetic Lh29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Transition;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh29;->b:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Lh29;->c:Ljava/lang/Object;

    iput p3, p0, Lh29;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lh29;->b:Landroidx/compose/animation/core/Transition;

    iget-object v1, p0, Lh29;->c:Ljava/lang/Object;

    iget p0, p0, Lh29;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/animation/core/Transition;->a(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
