.class public final synthetic Lvp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ldf4;

.field public final synthetic c:Landroidx/savedstate/serialization/SavedStateConfiguration;


# direct methods
.method public synthetic constructor <init>(Ldf4;Landroidx/savedstate/serialization/SavedStateConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp7;->b:Ldf4;

    iput-object p2, p0, Lvp7;->c:Landroidx/savedstate/serialization/SavedStateConfiguration;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvp7;->c:Landroidx/savedstate/serialization/SavedStateConfiguration;

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    iget-object p0, p0, Lvp7;->b:Ldf4;

    invoke-static {p0, v0, p1, p2}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->b(Ldf4;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
