.class public final Lyads/z52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final a:Lyads/tt;

.field public final b:Lyads/n32;

.field public final c:Lyads/zu5;

.field public final d:Lyads/my1;

.field public e:Lyads/y52;


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/n32;Lyads/zu5;Lyads/my1;Lyads/y52;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/z52;->a:Lyads/tt;

    iput-object p2, p0, Lyads/z52;->b:Lyads/n32;

    iput-object p3, p0, Lyads/z52;->c:Lyads/zu5;

    iput-object p4, p0, Lyads/z52;->d:Lyads/my1;

    iput-object p5, p0, Lyads/z52;->e:Lyads/y52;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    iget-object v0, p0, Lyads/z52;->a:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    iget-object v1, p0, Lyads/z52;->c:Lyads/zu5;

    iget-object v0, v0, Lyads/vq0;->O:Lyads/qb1;

    iget-object v0, v0, Lyads/qb1;->a:Ljava/lang/String;

    iget-object v2, p0, Lyads/z52;->b:Lyads/n32;

    iget-object v2, v2, Lyads/n32;->e:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lyads/zu5;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lyads/z52;->d:Lyads/my1;

    iget-object v0, p0, Lyads/z52;->a:Lyads/tt;

    iget-object v1, v0, Lyads/tt;->a:Lyads/vq0;

    iget-object v2, p0, Lyads/z52;->e:Lyads/y52;

    iget-object p0, p0, Lyads/z52;->b:Lyads/n32;

    iget-object v0, v0, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lyads/vq0;->z:Lyads/ub5;

    invoke-interface {v3, v0}, Lyads/ub5;->a(Lyads/fs2;)Lyads/ms2;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v2, v1, p0, v0}, Lyads/my1;->a(Lyads/y52;Lyads/vq0;Lyads/n32;Lyads/ms2;)V

    return-void
.end method
