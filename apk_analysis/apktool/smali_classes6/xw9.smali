.class public final synthetic Lxw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lyads/bf5;

.field public final synthetic d:Lyads/t70;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lyads/do6;Lyads/t70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxw9;->b:Landroid/content/Context;

    iput-object p2, p0, Lxw9;->c:Lyads/bf5;

    iput-object p3, p0, Lxw9;->d:Lyads/t70;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lxw9;->c:Lyads/bf5;

    iget-object v1, p0, Lxw9;->d:Lyads/t70;

    iget-object p0, p0, Lxw9;->b:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lyads/ha4;->b(Landroid/content/Context;Lyads/bf5;Lyads/t70;)Lj59;

    move-result-object p0

    return-object p0
.end method
