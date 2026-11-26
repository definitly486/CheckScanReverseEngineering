.class public final synthetic Ltn6;
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

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(FIIIJJLandroidx/compose/ui/Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Ltn6;->b:Landroidx/compose/ui/Modifier;

    iput-wide p5, p0, Ltn6;->c:J

    iput p1, p0, Ltn6;->d:F

    iput-wide p7, p0, Ltn6;->e:J

    iput p2, p0, Ltn6;->f:I

    iput p3, p0, Ltn6;->g:I

    iput p4, p0, Ltn6;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v0, p0, Ltn6;->d:F

    iget-object v1, p0, Ltn6;->b:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Ltn6;->c:J

    iget-wide v4, p0, Ltn6;->e:J

    iget v6, p0, Ltn6;->f:I

    iget v7, p0, Ltn6;->g:I

    iget v8, p0, Ltn6;->h:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt;->d(FLandroidx/compose/ui/Modifier;JJIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
