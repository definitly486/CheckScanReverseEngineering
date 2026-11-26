.class public final synthetic Lp5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/ph1;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/p41;


# direct methods
.method public synthetic constructor <init>(Lyads/ph1;Landroid/view/View;Lyads/fs2;Lyads/p41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5a;->b:Lyads/ph1;

    iput-object p2, p0, Lp5a;->c:Landroid/view/View;

    iput-object p3, p0, Lp5a;->d:Lyads/fs2;

    iput-object p4, p0, Lp5a;->e:Lyads/p41;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp5a;->d:Lyads/fs2;

    iget-object v1, p0, Lp5a;->e:Lyads/p41;

    iget-object v2, p0, Lp5a;->b:Lyads/ph1;

    iget-object p0, p0, Lp5a;->c:Landroid/view/View;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/ph1;->a(Lyads/ph1;Landroid/view/View;Lyads/fs2;Lyads/p41;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
