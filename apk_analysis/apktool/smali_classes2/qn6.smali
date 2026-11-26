.class public final synthetic Lqn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:J

.field public final synthetic g:I

.field public final synthetic h:F

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;JFJIFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqn6;->b:Lll3;

    iput-object p2, p0, Lqn6;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lqn6;->d:J

    iput p5, p0, Lqn6;->e:F

    iput-wide p6, p0, Lqn6;->f:J

    iput p8, p0, Lqn6;->g:I

    iput p9, p0, Lqn6;->h:F

    iput p10, p0, Lqn6;->i:I

    iput p11, p0, Lqn6;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lqn6;->b:Lll3;

    iget-object v1, p0, Lqn6;->c:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lqn6;->d:J

    iget v4, p0, Lqn6;->e:F

    iget-wide v5, p0, Lqn6;->f:J

    iget v7, p0, Lqn6;->g:I

    iget v8, p0, Lqn6;->h:F

    iget v9, p0, Lqn6;->i:I

    iget v10, p0, Lqn6;->j:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ProgressIndicatorKt;->u(Lll3;Landroidx/compose/ui/Modifier;JFJIFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
