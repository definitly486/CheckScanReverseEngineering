.class public final Lyads/u41;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lyads/zh2;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/zh2;)V
    .locals 0

    iput-object p1, p0, Lyads/u41;->b:Landroid/view/View;

    iput-object p2, p0, Lyads/u41;->c:Lyads/zh2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lyads/u41;->b:Landroid/view/View;

    iget-object p0, p0, Lyads/u41;->c:Lyads/zh2;

    invoke-virtual {p0, p1}, Lyads/zh2;->a(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setNextFocusDownId(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
