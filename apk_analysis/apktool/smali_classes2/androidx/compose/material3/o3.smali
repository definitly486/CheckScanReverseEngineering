.class public final synthetic Landroidx/compose/material3/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/TextFieldState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/TextFieldState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/o3;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/o3;->b:Landroidx/compose/foundation/text/input/TextFieldState;

    invoke-static {p0}, Landroidx/compose/material3/SearchBarDefaults$InputField$9$1;->g(Landroidx/compose/foundation/text/input/TextFieldState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
