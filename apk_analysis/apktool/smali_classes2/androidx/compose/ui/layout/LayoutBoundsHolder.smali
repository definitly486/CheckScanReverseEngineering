.class public final Landroidx/compose/ui/layout/LayoutBoundsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final bounds$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/layout/LayoutBoundsHolder;->bounds$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final getBounds()Landroidx/compose/ui/spatial/RelativeLayoutBounds;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsHolder;->bounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-object p0
.end method

.method public final setBounds$ui(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsHolder;->bounds$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
