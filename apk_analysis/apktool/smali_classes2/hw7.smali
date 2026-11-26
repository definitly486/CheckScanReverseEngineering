.class public final synthetic Lhw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic f:I

.field public final synthetic g:Lbm3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/WindowInsets;ILbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw7;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lhw7;->c:J

    iput-wide p4, p0, Lhw7;->d:J

    iput-object p6, p0, Lhw7;->e:Landroidx/compose/foundation/layout/WindowInsets;

    iput p7, p0, Lhw7;->f:I

    iput-object p8, p0, Lhw7;->g:Lbm3;

    iput p9, p0, Lhw7;->h:I

    iput p10, p0, Lhw7;->i:I

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

    iget-object v0, p0, Lhw7;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lhw7;->c:J

    iget-wide v3, p0, Lhw7;->d:J

    iget-object v5, p0, Lhw7;->e:Landroidx/compose/foundation/layout/WindowInsets;

    iget v6, p0, Lhw7;->f:I

    iget-object v7, p0, Lhw7;->g:Lbm3;

    iget v8, p0, Lhw7;->h:I

    iget v9, p0, Lhw7;->i:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ShortNavigationBarKt;->c(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/WindowInsets;ILbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
