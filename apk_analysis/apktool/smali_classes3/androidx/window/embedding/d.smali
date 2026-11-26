.class public final synthetic Landroidx/window/embedding/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/window/embedding/SplitRule;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/window/embedding/SplitRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/window/embedding/d;->b:Landroidx/window/embedding/SplitRule;

    iput-object p1, p0, Landroidx/window/embedding/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/d;->c:Landroid/content/Context;

    check-cast p1, Landroid/view/WindowMetrics;

    iget-object p0, p0, Landroidx/window/embedding/d;->b:Landroidx/window/embedding/SplitRule;

    invoke-static {p0, v0, p1}, Landroidx/window/embedding/EmbeddingAdapter$VendorApiLevel1Impl;->e(Landroidx/window/embedding/SplitRule;Landroid/content/Context;Landroid/view/WindowMetrics;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
