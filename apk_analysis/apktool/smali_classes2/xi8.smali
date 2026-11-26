.class public final synthetic Lxi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:Ldm3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lxi8;->b:I

    iput-object p2, p0, Lxi8;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lxi8;->d:J

    iput-wide p5, p0, Lxi8;->e:J

    iput p7, p0, Lxi8;->f:F

    iput-object p8, p0, Lxi8;->g:Ldm3;

    iput-object p9, p0, Lxi8;->h:Lbm3;

    iput-object p10, p0, Lxi8;->i:Lbm3;

    iput p11, p0, Lxi8;->j:I

    iput p12, p0, Lxi8;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v0, p0, Lxi8;->b:I

    iget-object v1, p0, Lxi8;->c:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lxi8;->d:J

    iget-wide v4, p0, Lxi8;->e:J

    iget v6, p0, Lxi8;->f:F

    iget-object v7, p0, Lxi8;->g:Ldm3;

    iget-object v8, p0, Lxi8;->h:Lbm3;

    iget-object v9, p0, Lxi8;->i:Lbm3;

    iget v10, p0, Lxi8;->j:I

    iget v11, p0, Lxi8;->k:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/TabRowKt;->d(ILandroidx/compose/ui/Modifier;JJFLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
