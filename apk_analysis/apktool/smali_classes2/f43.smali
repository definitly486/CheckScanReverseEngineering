.class public final synthetic Lf43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/compose/ui/platform/SoftwareKeyboardController;


# direct methods
.method public synthetic constructor <init>(Lll3;Ljava/lang/String;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf43;->b:Lll3;

    iput-object p2, p0, Lf43;->c:Ljava/lang/String;

    iput-object p3, p0, Lf43;->d:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lf43;->c:Ljava/lang/String;

    iget-object v1, p0, Lf43;->d:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iget-object p0, p0, Lf43;->b:Lll3;

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuKt;->g(Lll3;Ljava/lang/String;Landroidx/compose/ui/platform/SoftwareKeyboardController;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
