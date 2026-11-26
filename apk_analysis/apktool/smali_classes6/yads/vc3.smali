.class public final Lyads/vc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/zc3;


# direct methods
.method public constructor <init>(Lyads/zc3;)V
    .locals 0

    iput-object p1, p0, Lyads/vc3;->b:Lyads/zc3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lyads/vc3;->b:Lyads/zc3;

    iget-object v0, v0, Lyads/zc3;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/wc3;

    iget-object v2, v1, Lyads/wc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/xc3;

    iget-object v4, v3, Lyads/xc3;->b:Lyads/yc3;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lyads/wc3;->c:Lyads/hi6;

    if-nez v5, :cond_2

    iget-object v5, v1, Lyads/wc3;->b:Landroid/graphics/Bitmap;

    iput-object v5, v3, Lyads/xc3;->a:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lyads/yc3;->a(Lyads/xc3;Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v4, v5}, Lyads/x85;->a(Lyads/hi6;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lyads/vc3;->b:Lyads/zc3;

    iget-object v0, v0, Lyads/zc3;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lyads/vc3;->b:Lyads/zc3;

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/zc3;->g:Lyads/vc3;

    return-void
.end method
