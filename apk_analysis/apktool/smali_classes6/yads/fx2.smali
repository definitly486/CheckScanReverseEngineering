.class public final Lyads/fx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/it4;


# instance fields
.field public final a:Lyads/mc0;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/mc0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fx2;->a:Lyads/mc0;

    iput-object p2, p0, Lyads/fx2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lyads/yc0;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyads/fx2;->a:Lyads/mc0;

    invoke-virtual {v0, p1, p2}, Lyads/mc0;->a(Landroid/net/Uri;Lyads/yc0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kc0;

    iget-object p2, p0, Lyads/fx2;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/fx2;->b:Ljava/util/List;

    invoke-virtual {p1, p0}, Lyads/kc0;->a(Ljava/util/List;)Lyads/kc0;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method
