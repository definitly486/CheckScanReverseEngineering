.class public final Lyads/bs4;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final a:Lyads/oc4;

.field public final b:Lyads/ic4;

.field public c:Z


# direct methods
.method public constructor <init>(Lyads/oc4;Lyads/ic4;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p1, p0, Lyads/bs4;->a:Lyads/oc4;

    iput-object p2, p0, Lyads/bs4;->b:Lyads/ic4;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lyads/bs4;->b:Lyads/ic4;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lyads/ic4;->a()V

    iput-boolean v0, p1, Lyads/ic4;->e:Z

    :cond_1
    iput-boolean v1, p0, Lyads/bs4;->c:Z

    return-void

    :cond_2
    iput-boolean v0, p0, Lyads/bs4;->c:Z

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    iget-boolean p1, p0, Lyads/bs4;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lyads/bs4;->a:Lyads/oc4;

    iget-boolean v0, p1, Lyads/oc4;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "first_user_swipe"

    invoke-virtual {p1, v0}, Lyads/oc4;->a(Ljava/lang/String;)V

    iput-boolean v1, p1, Lyads/oc4;->d:Z

    :cond_0
    iput-boolean v1, p0, Lyads/bs4;->c:Z

    :cond_1
    return-void
.end method
