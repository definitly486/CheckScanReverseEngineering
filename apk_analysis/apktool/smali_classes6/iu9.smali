.class public final synthetic Liu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/view/Display;

.field public final synthetic c:Landroid/graphics/Point;

.field public final synthetic d:Lyads/ed5;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Display;Landroid/graphics/Point;Lyads/ed5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liu9;->b:Landroid/view/Display;

    iput-object p2, p0, Liu9;->c:Landroid/graphics/Point;

    iput-object p3, p0, Liu9;->d:Lyads/ed5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Liu9;->c:Landroid/graphics/Point;

    iget-object v1, p0, Liu9;->d:Lyads/ed5;

    iget-object p0, p0, Liu9;->b:Landroid/view/Display;

    invoke-static {p0, v0, v1}, Lyads/ed5;->a(Landroid/view/Display;Landroid/graphics/Point;Lyads/ed5;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method
