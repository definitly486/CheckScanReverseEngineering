.class public final synthetic Lxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/OffsetProvider;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/ui/Modifier;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxj;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iput-boolean p2, p0, Lxj;->c:Z

    iput-object p3, p0, Lxj;->d:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iput-boolean p4, p0, Lxj;->e:Z

    iput-wide p5, p0, Lxj;->f:J

    iput p7, p0, Lxj;->g:F

    iput-object p8, p0, Lxj;->h:Landroidx/compose/ui/Modifier;

    iput p9, p0, Lxj;->i:I

    iput p10, p0, Lxj;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lxj;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iget-boolean v1, p0, Lxj;->c:Z

    iget-object v2, p0, Lxj;->d:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iget-boolean v3, p0, Lxj;->e:Z

    iget-wide v4, p0, Lxj;->f:J

    iget v6, p0, Lxj;->g:F

    iget-object v7, p0, Lxj;->h:Landroidx/compose/ui/Modifier;

    iget v8, p0, Lxj;->i:I

    iget v9, p0, Lxj;->j:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->g(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
