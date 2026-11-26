.class public final synthetic Lwz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lyads/ek1;

.field public final synthetic d:Lyads/jk1;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Lyads/ao2;

.field public final synthetic g:Lyads/bn1;

.field public final synthetic h:Lyads/vq0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lyads/ek1;Lyads/jk1;Lyads/fs2;Lyads/ao2;Lyads/bn1;Lyads/vq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz9;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lwz9;->c:Lyads/ek1;

    iput-object p3, p0, Lwz9;->d:Lyads/jk1;

    iput-object p4, p0, Lwz9;->e:Lyads/fs2;

    iput-object p5, p0, Lwz9;->f:Lyads/ao2;

    iput-object p6, p0, Lwz9;->g:Lyads/bn1;

    iput-object p7, p0, Lwz9;->h:Lyads/vq0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v5, p0, Lwz9;->g:Lyads/bn1;

    iget-object v6, p0, Lwz9;->h:Lyads/vq0;

    iget-object v0, p0, Lwz9;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lwz9;->c:Lyads/ek1;

    iget-object v2, p0, Lwz9;->d:Lyads/jk1;

    iget-object v3, p0, Lwz9;->e:Lyads/fs2;

    iget-object v4, p0, Lwz9;->f:Lyads/ao2;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lyads/jk1;->a(Ljava/util/List;Lyads/ek1;Lyads/jk1;Lyads/fs2;Lyads/ao2;Lyads/bn1;Lyads/vq0;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
