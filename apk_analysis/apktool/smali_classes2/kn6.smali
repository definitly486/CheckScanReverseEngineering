.class public final synthetic Lkn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/Modifier;JJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkn6;->b:F

    iput-object p2, p0, Lkn6;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lkn6;->d:J

    iput-wide p5, p0, Lkn6;->e:J

    iput p7, p0, Lkn6;->f:I

    iput p8, p0, Lkn6;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v0, p0, Lkn6;->b:F

    iget-object v1, p0, Lkn6;->c:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lkn6;->d:J

    iget-wide v4, p0, Lkn6;->e:J

    iget v6, p0, Lkn6;->f:I

    iget v7, p0, Lkn6;->g:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt;->k(FLandroidx/compose/ui/Modifier;JJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
