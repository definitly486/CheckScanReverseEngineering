.class public final synthetic Laa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:Lbm3;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;JJFLbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa2;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Laa2;->c:Lbm3;

    iput-wide p3, p0, Laa2;->d:J

    iput-wide p5, p0, Laa2;->e:J

    iput p7, p0, Laa2;->f:F

    iput-object p8, p0, Laa2;->g:Lbm3;

    iput p9, p0, Laa2;->h:I

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

    iget-object v0, p0, Laa2;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Laa2;->c:Lbm3;

    iget-wide v2, p0, Laa2;->d:J

    iget-wide v4, p0, Laa2;->e:J

    iget v6, p0, Laa2;->f:F

    iget-object v7, p0, Laa2;->g:Lbm3;

    iget v8, p0, Laa2;->h:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DatePickerKt;->w(Landroidx/compose/ui/Modifier;Lbm3;JJFLbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
