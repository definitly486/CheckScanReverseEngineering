.class public final synthetic Lsn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(FFIIIJJLandroidx/compose/ui/Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lsn6;->b:Landroidx/compose/ui/Modifier;

    iput-wide p6, p0, Lsn6;->c:J

    iput p1, p0, Lsn6;->d:F

    iput-wide p8, p0, Lsn6;->e:J

    iput p3, p0, Lsn6;->f:I

    iput p2, p0, Lsn6;->g:F

    iput p4, p0, Lsn6;->h:I

    iput p5, p0, Lsn6;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v0, p0, Lsn6;->d:F

    iget-object v1, p0, Lsn6;->b:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lsn6;->c:J

    iget v4, p0, Lsn6;->g:F

    iget-wide v5, p0, Lsn6;->e:J

    iget v7, p0, Lsn6;->f:I

    iget v8, p0, Lsn6;->h:I

    iget v9, p0, Lsn6;->i:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ProgressIndicatorKt;->x(FLandroidx/compose/ui/Modifier;JFJIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
