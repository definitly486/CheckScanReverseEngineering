.class public final synthetic Lri2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DefaultShortNavigationBarOverride;

.field public final synthetic c:Landroidx/compose/material3/ShortNavigationBarOverrideScope;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DefaultShortNavigationBarOverride;Landroidx/compose/material3/ShortNavigationBarOverrideScope;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lri2;->b:Landroidx/compose/material3/DefaultShortNavigationBarOverride;

    iput-object p2, p0, Lri2;->c:Landroidx/compose/material3/ShortNavigationBarOverrideScope;

    iput p3, p0, Lri2;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lri2;->b:Landroidx/compose/material3/DefaultShortNavigationBarOverride;

    iget-object v1, p0, Lri2;->c:Landroidx/compose/material3/ShortNavigationBarOverrideScope;

    iget p0, p0, Lri2;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/DefaultShortNavigationBarOverride;->a(Landroidx/compose/material3/DefaultShortNavigationBarOverride;Landroidx/compose/material3/ShortNavigationBarOverrideScope;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
