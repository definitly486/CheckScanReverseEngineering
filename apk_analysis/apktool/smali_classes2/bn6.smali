.class public final synthetic Lbn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/runtime/State;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/runtime/State;

.field public final synthetic g:J

.field public final synthetic h:Landroidx/compose/runtime/State;

.field public final synthetic i:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(IFLandroidx/compose/runtime/State;JLandroidx/compose/runtime/State;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbn6;->b:I

    iput p2, p0, Lbn6;->c:F

    iput-object p3, p0, Lbn6;->d:Landroidx/compose/runtime/State;

    iput-wide p4, p0, Lbn6;->e:J

    iput-object p6, p0, Lbn6;->f:Landroidx/compose/runtime/State;

    iput-wide p7, p0, Lbn6;->g:J

    iput-object p9, p0, Lbn6;->h:Landroidx/compose/runtime/State;

    iput-object p10, p0, Lbn6;->i:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v9, p0, Lbn6;->i:Landroidx/compose/runtime/State;

    move-object v10, p1

    check-cast v10, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget v0, p0, Lbn6;->b:I

    iget v1, p0, Lbn6;->c:F

    iget-object v2, p0, Lbn6;->d:Landroidx/compose/runtime/State;

    iget-wide v3, p0, Lbn6;->e:J

    iget-object v5, p0, Lbn6;->f:Landroidx/compose/runtime/State;

    iget-wide v6, p0, Lbn6;->g:J

    iget-object v8, p0, Lbn6;->h:Landroidx/compose/runtime/State;

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt;->n(IFLandroidx/compose/runtime/State;JLandroidx/compose/runtime/State;JLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
