.class public final synthetic Ld43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuDefaults;ZLandroidx/compose/ui/Modifier;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld43;->b:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    iput-boolean p2, p0, Ld43;->c:Z

    iput-object p3, p0, Ld43;->d:Landroidx/compose/ui/Modifier;

    iput p4, p0, Ld43;->e:I

    iput p5, p0, Ld43;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Ld43;->b:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    iget-boolean v1, p0, Ld43;->c:Z

    iget-object v2, p0, Ld43;->d:Landroidx/compose/ui/Modifier;

    iget v3, p0, Ld43;->e:I

    iget v4, p0, Ld43;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->b(Landroidx/compose/material3/ExposedDropdownMenuDefaults;ZLandroidx/compose/ui/Modifier;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
