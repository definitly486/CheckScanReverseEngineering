.class public final synthetic Lec5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/compose/material3/ModalBottomSheetProperties;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f:Lbm3;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec5;->b:Lll3;

    iput-wide p2, p0, Lec5;->c:J

    iput-object p4, p0, Lec5;->d:Landroidx/compose/material3/ModalBottomSheetProperties;

    iput-object p5, p0, Lec5;->e:Landroidx/compose/animation/core/Animatable;

    iput-object p6, p0, Lec5;->f:Lbm3;

    iput p7, p0, Lec5;->g:I

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

    iget-object v0, p0, Lec5;->b:Lll3;

    iget-wide v1, p0, Lec5;->c:J

    iget-object v3, p0, Lec5;->d:Landroidx/compose/material3/ModalBottomSheetProperties;

    iget-object v4, p0, Lec5;->e:Landroidx/compose/animation/core/Animatable;

    iget-object v5, p0, Lec5;->f:Lbm3;

    iget v6, p0, Lec5;->g:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->d(Lll3;JLandroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/animation/core/Animatable;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
