.class public final synthetic Lno9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm3;


# instance fields
.field public final synthetic b:Lyads/bj2;


# direct methods
.method public synthetic constructor <init>(Lyads/bj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno9;->b:Lyads/bj2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/vq0;

    check-cast p2, Lyads/fs2;

    check-cast p3, Landroid/view/View;

    check-cast p4, Lyads/br0;

    check-cast p5, Lyads/r02;

    iget-object p0, p0, Lno9;->b:Lyads/bj2;

    invoke-static/range {p0 .. p5}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Lyads/r02;)Lj59;

    move-result-object p0

    return-object p0
.end method
