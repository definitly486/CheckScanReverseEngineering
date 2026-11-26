.class public final synthetic Lzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/ui/window/PopupProperties;

.field public final synthetic g:Ldm3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lzi;->b:Z

    iput-object p2, p0, Lzi;->c:Lll3;

    iput-object p3, p0, Lzi;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lzi;->e:J

    iput-object p6, p0, Lzi;->f:Landroidx/compose/ui/window/PopupProperties;

    iput-object p7, p0, Lzi;->g:Ldm3;

    iput p8, p0, Lzi;->h:I

    iput p9, p0, Lzi;->i:I

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

    iget-boolean v0, p0, Lzi;->b:Z

    iget-object v1, p0, Lzi;->c:Lll3;

    iget-object v2, p0, Lzi;->d:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Lzi;->e:J

    iget-object v5, p0, Lzi;->f:Landroidx/compose/ui/window/PopupProperties;

    iget-object v6, p0, Lzi;->g:Ldm3;

    iget v7, p0, Lzi;->h:I

    iget v8, p0, Lzi;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/AndroidMenu_androidKt;->c(ZLll3;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
