.class public final Lyads/qf6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/of6;


# direct methods
.method public constructor <init>(Lyads/of6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qf6;->a:Lyads/of6;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lyads/qf6;->a:Lyads/of6;

    invoke-interface {p0}, Lyads/of6;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lyads/eh6;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x32

    invoke-static {p0}, Lyads/eh6;->a(Landroid/view/View;)I

    move-result p0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
