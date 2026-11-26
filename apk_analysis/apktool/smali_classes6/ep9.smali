.class public final synthetic Lep9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lyads/bt0;

.field public final synthetic f:Lyads/vq0;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lyads/fs2;Ljava/lang/String;Lyads/bt0;Lyads/vq0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lep9;->b:Ljava/util/List;

    iput-object p2, p0, Lep9;->c:Lyads/fs2;

    iput-object p3, p0, Lep9;->d:Ljava/lang/String;

    iput-object p4, p0, Lep9;->e:Lyads/bt0;

    iput-object p5, p0, Lep9;->f:Lyads/vq0;

    iput-object p6, p0, Lep9;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lep9;->f:Lyads/vq0;

    iget-object v5, p0, Lep9;->g:Landroid/view/View;

    iget-object v0, p0, Lep9;->b:Ljava/util/List;

    iget-object v1, p0, Lep9;->c:Lyads/fs2;

    iget-object v2, p0, Lep9;->d:Ljava/lang/String;

    iget-object v3, p0, Lep9;->e:Lyads/bt0;

    invoke-static/range {v0 .. v5}, Lyads/bt0;->a(Ljava/util/List;Lyads/fs2;Ljava/lang/String;Lyads/bt0;Lyads/vq0;Landroid/view/View;)Lj59;

    move-result-object p0

    return-object p0
.end method
