.class public final synthetic Landroidx/compose/material3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/BottomSheetScaffoldState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/BottomSheetScaffoldState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/g;->b:Landroidx/compose/material3/BottomSheetScaffoldState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/g;->b:Landroidx/compose/material3/BottomSheetScaffoldState;

    invoke-static {p0}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->a(Landroidx/compose/material3/BottomSheetScaffoldState;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
