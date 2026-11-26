.class public final synthetic Lwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/platform/ViewConfiguration;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/foundation/text/selection/OffsetProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/ViewConfiguration;JZLandroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/OffsetProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwj;->b:Landroidx/compose/ui/platform/ViewConfiguration;

    iput-wide p2, p0, Lwj;->c:J

    iput-boolean p4, p0, Lwj;->d:Z

    iput-object p5, p0, Lwj;->e:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lwj;->f:Landroidx/compose/foundation/text/selection/OffsetProvider;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lwj;->b:Landroidx/compose/ui/platform/ViewConfiguration;

    iget-wide v1, p0, Lwj;->c:J

    iget-boolean v3, p0, Lwj;->d:Z

    iget-object v4, p0, Lwj;->e:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Lwj;->f:Landroidx/compose/foundation/text/selection/OffsetProvider;

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->j(Landroidx/compose/ui/platform/ViewConfiguration;JZLandroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
