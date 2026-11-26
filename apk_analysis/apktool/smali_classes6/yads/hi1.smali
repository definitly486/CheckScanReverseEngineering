.class public final Lyads/hi1;
.super Lyads/yh1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/yi1;

.field public final synthetic b:Lyads/ii1;

.field public final synthetic c:Lyads/tt;

.field public final synthetic d:Lyads/zh1;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/yi1;Lyads/ii1;Lyads/tt;Lyads/zh1;Lyads/fs2;Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/hi1;->a:Lyads/yi1;

    iput-object p2, p0, Lyads/hi1;->b:Lyads/ii1;

    iput-object p3, p0, Lyads/hi1;->c:Lyads/tt;

    iput-object p4, p0, Lyads/hi1;->d:Lyads/zh1;

    iput-object p5, p0, Lyads/hi1;->e:Lyads/fs2;

    invoke-direct {p0, p6}, Lyads/yh1;-><init>(Lyads/vq0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 85
    iget-object p0, p0, Lyads/hi1;->a:Lyads/yi1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/yi1;->setImageUrl$mobileads_externalRelease(Landroid/net/Uri;)V

    return-void
.end method

.method public final a(Lyads/uw;)V
    .locals 4

    iget-object v0, p0, Lyads/hi1;->a:Lyads/yi1;

    iget-object v1, p1, Lyads/uw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lyads/iu3;->setCurrentBitmapWithoutFilters$mobileads_externalRelease(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lyads/hi1;->b:Lyads/ii1;

    iget-object v1, p0, Lyads/hi1;->a:Lyads/yi1;

    iget-object v2, p0, Lyads/hi1;->c:Lyads/tt;

    iget-object v3, p0, Lyads/hi1;->d:Lyads/zh1;

    iget-object v3, v3, Lyads/zh1;->t:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lyads/ii1;->a(Lyads/yi1;Lyads/tt;Ljava/util/List;)V

    iget-object v0, p0, Lyads/hi1;->b:Lyads/ii1;

    iget-object v1, p0, Lyads/hi1;->a:Lyads/yi1;

    iget-object v2, p0, Lyads/hi1;->d:Lyads/zh1;

    iget-object v3, p0, Lyads/hi1;->e:Lyads/fs2;

    iget-object p1, p1, Lyads/uw;->c:Lyads/hu;

    invoke-static {v0, v1, v2, v3, p1}, Lyads/ii1;->a(Lyads/ii1;Lyads/yi1;Lyads/zh1;Lyads/fs2;Lyads/hu;)V

    iget-object p1, p0, Lyads/hi1;->a:Lyads/yi1;

    invoke-virtual {p1}, Lyads/iu3;->k()V

    iget-object p1, p0, Lyads/hi1;->b:Lyads/ii1;

    iget-object v0, p0, Lyads/hi1;->a:Lyads/yi1;

    iget-object v1, p0, Lyads/hi1;->d:Lyads/zh1;

    iget-object v1, v1, Lyads/zh1;->P:Lyads/as2;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lyads/hi1;->e:Lyads/fs2;

    invoke-virtual {v1, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lyads/hi1;->d:Lyads/zh1;

    iget-object v2, v2, Lyads/zh1;->Q:Lyads/as2;

    iget-object v3, p0, Lyads/hi1;->e:Lyads/fs2;

    invoke-virtual {v2, v3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/y41;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lyads/ii1;->a(Lyads/iu3;Ljava/lang/Integer;Lyads/y41;)V

    iget-object p0, p0, Lyads/hi1;->a:Lyads/yi1;

    invoke-virtual {p0}, Lyads/sj;->invalidate()V

    return-void
.end method
