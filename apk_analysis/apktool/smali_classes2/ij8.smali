.class public final synthetic Lij8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lfm3;

.field public final synthetic c:Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;


# direct methods
.method public synthetic constructor <init>(Lfm3;Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij8;->b:Lfm3;

    iput-object p2, p0, Lij8;->c:Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    iget-object v0, p0, Lij8;->b:Lfm3;

    iget-object p0, p0, Lij8;->c:Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;->a(Lfm3;Landroidx/compose/material3/TabRowKt$TabRowImpl$1$scope$1$1;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
