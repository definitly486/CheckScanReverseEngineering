.class public final synthetic Landroidx/window/embedding/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/window/embedding/ActivityEmbeddingController;

.field public final synthetic c:Landroidx/window/embedding/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/ActivityEmbeddingController;Landroidx/window/embedding/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/b;->b:Landroidx/window/embedding/ActivityEmbeddingController;

    iput-object p2, p0, Landroidx/window/embedding/b;->c:Landroidx/window/embedding/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/b;->b:Landroidx/window/embedding/ActivityEmbeddingController;

    iget-object p0, p0, Landroidx/window/embedding/b;->c:Landroidx/window/embedding/a;

    invoke-static {v0, p0}, Landroidx/window/embedding/ActivityEmbeddingController$embeddedActivityWindowInfo$1;->g(Landroidx/window/embedding/ActivityEmbeddingController;Landroidx/window/embedding/a;)Lj59;

    move-result-object p0

    return-object p0
.end method
