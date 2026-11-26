.class public final synthetic Lnn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;JJIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnn6;->b:Lll3;

    iput-object p2, p0, Lnn6;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lnn6;->d:J

    iput-wide p5, p0, Lnn6;->e:J

    iput p7, p0, Lnn6;->f:I

    iput p8, p0, Lnn6;->g:I

    iput p9, p0, Lnn6;->h:I

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

    iget-object v0, p0, Lnn6;->b:Lll3;

    iget-object v1, p0, Lnn6;->c:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lnn6;->d:J

    iget-wide v4, p0, Lnn6;->e:J

    iget v6, p0, Lnn6;->f:I

    iget v7, p0, Lnn6;->g:I

    iget v8, p0, Lnn6;->h:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/ProgressIndicatorKt;->B(Lll3;Landroidx/compose/ui/Modifier;JJIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
