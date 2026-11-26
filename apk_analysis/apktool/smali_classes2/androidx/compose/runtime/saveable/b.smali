.class public final synthetic Landroidx/compose/runtime/saveable/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/saveable/SaveableHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/saveable/SaveableHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/b;->b:Landroidx/compose/runtime/saveable/SaveableHolder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/saveable/b;->b:Landroidx/compose/runtime/saveable/SaveableHolder;

    invoke-static {p0}, Landroidx/compose/runtime/saveable/SaveableHolder;->a(Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
