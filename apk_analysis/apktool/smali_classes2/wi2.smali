.class public final synthetic Lwi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

.field public final synthetic c:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi2;->b:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    iput-object p2, p0, Lwi2;->c:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    iput p3, p0, Lwi2;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lwi2;->b:Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;

    iget-object v1, p0, Lwi2;->c:Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    iget p0, p0, Lwi2;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;->a(Landroidx/compose/material3/DefaultSingleRowTopAppBarOverride;Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
