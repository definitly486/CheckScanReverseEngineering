.class public final synthetic Lym6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Lll3;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Lnl3;


# direct methods
.method public synthetic constructor <init>(IFLll3;JJLnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lym6;->b:I

    iput p2, p0, Lym6;->c:F

    iput-object p3, p0, Lym6;->d:Lll3;

    iput-wide p4, p0, Lym6;->e:J

    iput-wide p6, p0, Lym6;->f:J

    iput-object p8, p0, Lym6;->g:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v7, p0, Lym6;->g:Lnl3;

    move-object v8, p1

    check-cast v8, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget v0, p0, Lym6;->b:I

    iget v1, p0, Lym6;->c:F

    iget-object v2, p0, Lym6;->d:Lll3;

    iget-wide v3, p0, Lym6;->e:J

    iget-wide v5, p0, Lym6;->f:J

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->s(IFLll3;JJLnl3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
