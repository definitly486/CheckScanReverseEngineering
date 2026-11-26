.class public final synthetic Lfj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic g:Ldm3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfj5;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lfj5;->c:J

    iput-wide p4, p0, Lfj5;->d:J

    iput p6, p0, Lfj5;->e:F

    iput-object p7, p0, Lfj5;->f:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p8, p0, Lfj5;->g:Ldm3;

    iput p9, p0, Lfj5;->h:I

    iput p10, p0, Lfj5;->i:I

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

    iget-object v0, p0, Lfj5;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lfj5;->c:J

    iget-wide v3, p0, Lfj5;->d:J

    iget v5, p0, Lfj5;->e:F

    iget-object v6, p0, Lfj5;->f:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v7, p0, Lfj5;->g:Ldm3;

    iget v8, p0, Lfj5;->h:I

    iget v9, p0, Lfj5;->i:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/NavigationBarKt;->g(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
