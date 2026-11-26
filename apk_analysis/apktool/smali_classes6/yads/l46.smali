.class public final Lyads/l46;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/bi2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/bi2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    iput-object p1, p0, Lyads/l46;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/l46;->b:Lyads/bi2;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lyads/l46;->b:Lyads/bi2;

    iget-object p0, p0, Lyads/l46;->a:Ljava/lang/String;

    new-instance v1, Lyads/ks4;

    invoke-direct {v1, p1}, Lyads/ks4;-><init>(I)V

    iget-object p1, v0, Lyads/bi2;->b:Landroidx/collection/ArrayMap;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
