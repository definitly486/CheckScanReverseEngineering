.class public final synthetic Lta2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/graphics/vector/ImageVector;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta2;->b:Lll3;

    iput-object p2, p0, Lta2;->c:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p3, p0, Lta2;->d:Ljava/lang/String;

    iput-object p4, p0, Lta2;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lta2;->f:Z

    iput p6, p0, Lta2;->g:I

    iput p7, p0, Lta2;->h:I

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

    iget-object v0, p0, Lta2;->b:Lll3;

    iget-object v1, p0, Lta2;->c:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v2, p0, Lta2;->d:Ljava/lang/String;

    iget-object v3, p0, Lta2;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lta2;->f:Z

    iget v5, p0, Lta2;->g:I

    iget v6, p0, Lta2;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/DatePickerKt;->e(Lll3;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
