.class public final synthetic Lsi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TabRowDefaults;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TabRowDefaults;Landroidx/compose/ui/Modifier;FJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsi8;->b:Landroidx/compose/material3/TabRowDefaults;

    iput-object p2, p0, Lsi8;->c:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lsi8;->d:F

    iput-wide p4, p0, Lsi8;->e:J

    iput p6, p0, Lsi8;->f:I

    iput p7, p0, Lsi8;->g:I

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

    iget-object v0, p0, Lsi8;->b:Landroidx/compose/material3/TabRowDefaults;

    iget-object v1, p0, Lsi8;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lsi8;->d:F

    iget-wide v3, p0, Lsi8;->e:J

    iget v5, p0, Lsi8;->f:I

    iget v6, p0, Lsi8;->g:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/TabRowDefaults;->c(Landroidx/compose/material3/TabRowDefaults;Landroidx/compose/ui/Modifier;FJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
