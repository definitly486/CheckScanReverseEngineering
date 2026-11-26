.class public final synthetic Lbfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lyads/p41;

.field public final synthetic d:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lyads/p41;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfa;->b:Landroid/view/View;

    iput-object p2, p0, Lbfa;->c:Lyads/p41;

    iput-object p3, p0, Lbfa;->d:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbfa;->c:Lyads/p41;

    iget-object v1, p0, Lbfa;->d:Lyads/fs2;

    iget-object p0, p0, Lbfa;->b:Landroid/view/View;

    invoke-static {p0, v0, v1, p1}, Lyads/v41;->c(Landroid/view/View;Lyads/p41;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
