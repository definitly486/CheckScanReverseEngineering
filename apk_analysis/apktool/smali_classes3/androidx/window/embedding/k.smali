.class public final synthetic Landroidx/window/embedding/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/window/embedding/SplitController;

.field public final synthetic c:Landroidx/window/embedding/j;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitController;Landroidx/window/embedding/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/k;->b:Landroidx/window/embedding/SplitController;

    iput-object p2, p0, Landroidx/window/embedding/k;->c:Landroidx/window/embedding/j;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/k;->b:Landroidx/window/embedding/SplitController;

    iget-object p0, p0, Landroidx/window/embedding/k;->c:Landroidx/window/embedding/j;

    invoke-static {v0, p0}, Landroidx/window/embedding/SplitController$splitInfoList$1;->g(Landroidx/window/embedding/SplitController;Landroidx/window/embedding/j;)Lj59;

    move-result-object p0

    return-object p0
.end method
