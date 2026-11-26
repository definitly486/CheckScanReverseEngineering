.class public final synthetic Lqu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:Ldm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JLdm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu8;->b:Lbm3;

    iput-object p2, p0, Lqu8;->c:Lbm3;

    iput-object p3, p0, Lqu8;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lqu8;->e:Lbm3;

    iput-object p5, p0, Lqu8;->f:Lbm3;

    iput-object p6, p0, Lqu8;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lqu8;->h:J

    iput-object p9, p0, Lqu8;->i:Ldm3;

    iput p10, p0, Lqu8;->j:I

    iput p11, p0, Lqu8;->k:I

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

    iget-object v0, p0, Lqu8;->b:Lbm3;

    iget-object v1, p0, Lqu8;->c:Lbm3;

    iget-object v2, p0, Lqu8;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lqu8;->e:Lbm3;

    iget-object v4, p0, Lqu8;->f:Lbm3;

    iget-object v5, p0, Lqu8;->g:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, p0, Lqu8;->h:J

    iget-object v8, p0, Lqu8;->i:Ldm3;

    iget v9, p0, Lqu8;->j:I

    iget v10, p0, Lqu8;->k:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/TimePickerDialogKt;->a(Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
