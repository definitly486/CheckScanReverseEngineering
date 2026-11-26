.class public final synthetic Ljn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn6;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Ljn6;->c:J

    iput-wide p4, p0, Ljn6;->d:J

    iput p6, p0, Ljn6;->e:I

    iput p7, p0, Ljn6;->f:I

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

    iget-object v0, p0, Ljn6;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Ljn6;->c:J

    iget-wide v3, p0, Ljn6;->d:J

    iget v5, p0, Ljn6;->e:I

    iget v6, p0, Ljn6;->f:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->A(Landroidx/compose/ui/Modifier;JJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
