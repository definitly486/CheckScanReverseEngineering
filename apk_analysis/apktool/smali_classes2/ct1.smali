.class public final synthetic Lct1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:[Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/runtime/internal/ComposableLambdaNImpl;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct1;->b:[Ljava/lang/Object;

    iput p2, p0, Lct1;->c:I

    iput-object p3, p0, Lct1;->d:Landroidx/compose/runtime/internal/ComposableLambdaNImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lct1;->b:[Ljava/lang/Object;

    iget v1, p0, Lct1;->c:I

    iget-object p0, p0, Lct1;->d:Landroidx/compose/runtime/internal/ComposableLambdaNImpl;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaNImpl;->a([Ljava/lang/Object;ILandroidx/compose/runtime/internal/ComposableLambdaNImpl;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
