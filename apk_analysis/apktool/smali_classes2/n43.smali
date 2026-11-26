.class public final synthetic Ln43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln43;->b:Ljava/lang/String;

    iput-object p2, p0, Ln43;->c:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln43;->b:Ljava/lang/String;

    iget-object p0, p0, Ln43;->c:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, p0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->f(Ljava/lang/String;Landroidx/compose/runtime/MutableState;)Lj59;

    move-result-object p0

    return-object p0
.end method
