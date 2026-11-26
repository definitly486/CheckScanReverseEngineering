.class public final synthetic Lq65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ColorScheme;

.field public final synthetic c:Landroidx/compose/material3/MotionScheme;

.field public final synthetic d:Landroidx/compose/material3/Shapes;

.field public final synthetic e:Landroidx/compose/material3/Typography;

.field public final synthetic f:Lbm3;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq65;->b:Landroidx/compose/material3/ColorScheme;

    iput-object p2, p0, Lq65;->c:Landroidx/compose/material3/MotionScheme;

    iput-object p3, p0, Lq65;->d:Landroidx/compose/material3/Shapes;

    iput-object p4, p0, Lq65;->e:Landroidx/compose/material3/Typography;

    iput-object p5, p0, Lq65;->f:Lbm3;

    iput p6, p0, Lq65;->g:I

    iput p7, p0, Lq65;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lq65;->b:Landroidx/compose/material3/ColorScheme;

    iget-object v1, p0, Lq65;->c:Landroidx/compose/material3/MotionScheme;

    iget-object v2, p0, Lq65;->d:Landroidx/compose/material3/Shapes;

    iget-object v3, p0, Lq65;->e:Landroidx/compose/material3/Typography;

    iget-object v4, p0, Lq65;->f:Lbm3;

    iget v5, p0, Lq65;->g:I

    iget v6, p0, Lq65;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/MaterialThemeKt;->a(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
