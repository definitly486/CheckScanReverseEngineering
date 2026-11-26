.class public final synthetic Lua2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic g:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic h:F

.field public final synthetic i:Lbm3;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua2;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lua2;->c:Lbm3;

    iput-object p3, p0, Lua2;->d:Lbm3;

    iput-object p4, p0, Lua2;->e:Lbm3;

    iput-object p5, p0, Lua2;->f:Landroidx/compose/material3/DatePickerColors;

    iput-object p6, p0, Lua2;->g:Landroidx/compose/ui/text/TextStyle;

    iput p7, p0, Lua2;->h:F

    iput-object p8, p0, Lua2;->i:Lbm3;

    iput p9, p0, Lua2;->j:I

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

    iget-object v0, p0, Lua2;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lua2;->c:Lbm3;

    iget-object v2, p0, Lua2;->d:Lbm3;

    iget-object v3, p0, Lua2;->e:Lbm3;

    iget-object v4, p0, Lua2;->f:Landroidx/compose/material3/DatePickerColors;

    iget-object v5, p0, Lua2;->g:Landroidx/compose/ui/text/TextStyle;

    iget v6, p0, Lua2;->h:F

    iget-object v7, p0, Lua2;->i:Lbm3;

    iget v8, p0, Lua2;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DatePickerKt;->H(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
