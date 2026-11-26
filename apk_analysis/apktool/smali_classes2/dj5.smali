.class public final synthetic Ldj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Z

.field public final synthetic g:Lll3;

.field public final synthetic h:Lll3;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Lbm3;Lbm3;ZLll3;Lll3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj5;->b:Lbm3;

    iput-object p2, p0, Ldj5;->c:Lbm3;

    iput-object p3, p0, Ldj5;->d:Lbm3;

    iput-object p4, p0, Ldj5;->e:Lbm3;

    iput-boolean p5, p0, Ldj5;->f:Z

    iput-object p6, p0, Ldj5;->g:Lll3;

    iput-object p7, p0, Ldj5;->h:Lll3;

    iput p8, p0, Ldj5;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Ldj5;->b:Lbm3;

    iget-object v1, p0, Ldj5;->c:Lbm3;

    iget-object v2, p0, Ldj5;->d:Lbm3;

    iget-object v3, p0, Ldj5;->e:Lbm3;

    iget-boolean v4, p0, Ldj5;->f:Z

    iget-object v5, p0, Ldj5;->g:Lll3;

    iget-object v6, p0, Ldj5;->h:Lll3;

    iget v7, p0, Ldj5;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/NavigationBarKt;->f(Lbm3;Lbm3;Lbm3;Lbm3;ZLll3;Lll3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
