.class public final synthetic Lqx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/unit/Density;

.field public final synthetic e:Landroidx/compose/ui/window/PopupPositionProvider;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(JLnl3;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lqx8;->b:J

    iput-object p3, p0, Lqx8;->c:Lnl3;

    iput-object p4, p0, Lqx8;->d:Landroidx/compose/ui/unit/Density;

    iput-object p5, p0, Lqx8;->e:Landroidx/compose/ui/window/PopupPositionProvider;

    iput-object p6, p0, Lqx8;->f:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/MeasureScope;

    move-object v7, p2

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    move-object v8, p3

    check-cast v8, Landroidx/compose/ui/unit/Constraints;

    iget-wide v0, p0, Lqx8;->b:J

    iget-object v2, p0, Lqx8;->c:Lnl3;

    iget-object v3, p0, Lqx8;->d:Landroidx/compose/ui/unit/Density;

    iget-object v4, p0, Lqx8;->e:Landroidx/compose/ui/window/PopupPositionProvider;

    iget-object v5, p0, Lqx8;->f:Landroidx/compose/runtime/MutableState;

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/TooltipKt;->g(JLnl3;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
