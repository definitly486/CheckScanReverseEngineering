.class public final synthetic Lrp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(FJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrp2;->b:F

    iput-wide p2, p0, Lrp2;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lrp2;->c:J

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget p0, p0, Lrp2;->b:F

    invoke-static {p0, v0, v1, p1}, Landroidx/compose/material3/DividerKt;->c(FJLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
