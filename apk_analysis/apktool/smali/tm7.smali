.class public final synthetic Ltm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/SelectableInfo;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/foundation/text/selection/SelectionLayout;

.field public final synthetic f:Lcl4;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lcl4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltm7;->b:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iput p2, p0, Ltm7;->c:I

    iput p3, p0, Ltm7;->d:I

    iput-object p4, p0, Ltm7;->e:Landroidx/compose/foundation/text/selection/SelectionLayout;

    iput-object p5, p0, Ltm7;->f:Lcl4;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ltm7;->e:Landroidx/compose/foundation/text/selection/SelectionLayout;

    iget-object v1, p0, Ltm7;->f:Lcl4;

    iget-object v2, p0, Ltm7;->b:Landroidx/compose/foundation/text/selection/SelectableInfo;

    iget v3, p0, Ltm7;->c:I

    iget p0, p0, Ltm7;->d:I

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->b(Landroidx/compose/foundation/text/selection/SelectableInfo;IILandroidx/compose/foundation/text/selection/SelectionLayout;Lcl4;)Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    return-object p0
.end method
