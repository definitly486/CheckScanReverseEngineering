.class public final synthetic Lev8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic f:Ldm3;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/graphics/Shape;Lll3;Landroidx/compose/material3/TimePickerColors;Ldm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lev8;->b:Z

    iput-object p2, p0, Lev8;->c:Landroidx/compose/ui/graphics/Shape;

    iput-object p3, p0, Lev8;->d:Lll3;

    iput-object p4, p0, Lev8;->e:Landroidx/compose/material3/TimePickerColors;

    iput-object p5, p0, Lev8;->f:Ldm3;

    iput p6, p0, Lev8;->g:I

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

    iget-boolean v0, p0, Lev8;->b:Z

    iget-object v1, p0, Lev8;->c:Landroidx/compose/ui/graphics/Shape;

    iget-object v2, p0, Lev8;->d:Lll3;

    iget-object v3, p0, Lev8;->e:Landroidx/compose/material3/TimePickerColors;

    iget-object v4, p0, Lev8;->f:Ldm3;

    iget v5, p0, Lev8;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TimePickerKt;->u(ZLandroidx/compose/ui/graphics/Shape;Lll3;Landroidx/compose/material3/TimePickerColors;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
