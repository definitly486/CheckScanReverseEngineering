.class public final synthetic Ly28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroidx/compose/material3/SliderPositions;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/material3/SliderPositions;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ly28;->b:J

    iput-object p3, p0, Ly28;->c:Landroidx/compose/material3/SliderPositions;

    iput-wide p4, p0, Ly28;->d:J

    iput-wide p6, p0, Ly28;->e:J

    iput-wide p8, p0, Ly28;->f:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-wide v7, p0, Ly28;->f:J

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-wide v0, p0, Ly28;->b:J

    iget-object v2, p0, Ly28;->c:Landroidx/compose/material3/SliderPositions;

    iget-wide v3, p0, Ly28;->d:J

    iget-wide v5, p0, Ly28;->e:J

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/SliderDefaults;->k(JLandroidx/compose/material3/SliderPositions;JJJLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
